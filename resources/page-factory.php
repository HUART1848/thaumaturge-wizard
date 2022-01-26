<?php

require_once('./enums.php');

// Class-specific exceptions
class DisplayModeException extends Exception {}
class CopyrightToggleException extends Exception {}
class HttpCodeException extends Exception {}

// Main class. Returns instances of class Page per Factory pattern.
class PageFactory {

    private $bgndColor;
    private $textColor;
    private $title;
    private $http_code;
    private $content;


    /////////////////////////
    // FACTORY INTERFACE   //
    /////////////////////////

    /**
     * Returns an instance of Page. The factory needs to
     * be configured first.
     */
    public function getInstance() {
        $this->setDefaults();
        return new Page($this->generateContent(), $this->http_code);
    }

    /**
     * Instanciates the factory.
     */
    public function __construct() {
        $this->content = array();
    }

    /////////////////////////
    // FACTORY CONFIG      //
    /////////////////////////

    /**
     * Addsa  text or numeric value to the page.
     * Final format: <div class="content">$pushable</div>
     */
    public function addValueToPage($pushable) {
        array_push($this->content, $pushable);
    }

    /**
     * Adds a pair of text or numeric values to the page.
     * Final format: <div class="content">$key : $value</div>
     */
    public function addKeyValueToPage($key, $value) {
        $this->addValueToPage($key . ' : ' . $value);
    }

    /**
     * Set page title
     */
    public function setTitle($title) {
        $this->title = $title;
    }

    /**
     * Set the page theme, among the currently known ones.
     * For the list of known themes, see ./enums.php class DisplayModes.
     */
    public function setTheme($theme) {
        switch ($theme) {
            case DisplayModes::LIGHT_THEME :
                $this->bgndColor = ThemeColors::LIGHT_COLOR;
                $this->textColor = ThemeColors::DARK_COLOR;
                break;
            case DisplayModes::DARK_THEME :
                $this->bgndColor = ThemeColors::DARK_COLOR;
                $this->textColor = ThemeColors::LIGHT_COLOR;
                break;
            default:
                throw new DisplayModeException('Unknown display mode');
        }
    }

    /**
     * Sets the page's http return code.
     * Uses a switch to constrain available response codes to known ones.
     */
    public function setHttpCode($code) {
        switch ($code) {
            case HttpCodes::REQUEST_VALID:
                $this->http_code = HttpCodes::REQUEST_VALID;
                break;
            case HttpCodes::BAD_REQUEST:
                $this->http_code = HttpCodes::BAD_REQUEST;
                break;
            case HttpCodes::SERVER_ERROR:
                $this->http_code = HttpCodes::SERVER_ERROR;
                break;
            default:
                throw new HttpCodeException('Unknown HTTP code');
        }
    }

    /////////////////////////
    // PAGE GENERATION     //
    /////////////////////////

    private function generateContent() {
        $output = '';
        if ($this->http_code >= 400 && $this->http_code < 600) {
            $output = $this->generateErrorContent($this->http_code);
        } else if ($this->http_code == HttpCodes::REQUEST_VALID) {
            $output = $this->generatePageHeader();
            foreach ($this->content as $entry) {
                $output .= '<div class="content">'.$entry.'</div><br />';
            }
            unset($entry);
            $output .= $this->generatePageFooter();
        }
        return $output;
    }

    private function generateErrorContent($http_code) {
        $output  = $this->generatePageHeader();
        $output .= "Error " . $http_code . "<br />";
        $output .= $this->generatePageFooter();
        return $output;
    }

    private function generatePageHeader() {
        $output  = '<html>';
        $output  .= '<head>';
        $output  .= '<title>'.$this->title.'</title>';
        $output  .= '<style> body { ';
        $output  .= 'background-color: ' . $this->bgndColor . '; ';
        $output  .= 'color: '. $this->textColor . ';';
        $output  .= '} </style></head><body>';
        return $output;
    }

    private function generatePageFooter() {
        $output = '</body></html>';
        return $output;
    }

    /////////////////////////
    // FACTORY DEFAULTS    //
    /////////////////////////

    private function setDefaults() {
        if (!isset($this->bgndColor)) {
            $this->setTheme(DisplayModes::DARK_THEME);
        }
        if (!isset($this->title)) {
            $this->setTitle("Thaumaturge Wizard");
        }
        if (!isset($this->http_code)) {
            $this->setHttpCode(HttpCodes::SERVER_ERROR);
        }
    }
}

//This is PHP so nesting classes isn't an option.
class Page {

    private $content;
    private $http_code;

    /**
     * DO NOT CALL THIS
     * instanciate and configure a PageFactory instead
     */
    public function __construct($content, $http_code) {
        $this->content = $content;
        $this->http_code = $http_code;
    }

    /**
     * Echoes the page to webpage
     */
    public function render() {
        http_response_code($this->http_code);
        echo $this->content;
    }

}
