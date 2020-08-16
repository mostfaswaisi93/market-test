<?php

if (!function_exists('showStatus')) {
    function showStatus($val)
    {
        $text = $val ? trans('admin.active') : trans('admin.inactive');
        $class = $val ? 'success' : 'danger';
        return '<span class="chip chip-' . $class . '">' . $text . '</span>';
    }
}
