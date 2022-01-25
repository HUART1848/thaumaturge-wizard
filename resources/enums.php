<?php

abstract class DisplayModes{
    const DARK_THEME = 0;
    const LIGHT_THEME = 1;
}

abstract class ThemeColors {
    const DARK_COLOR = '#2a2b2e';
    const LIGHT_COLOR = '#f5f5f5';
}

abstract class HttpCodes {
    const REQUEST_VALID = 200;
    const BAD_REQUEST = 400;
    const SERVER_ERROR = 500;
}

?>
