<?php 

function howcroatia_files() {
    //enqueing CSS
    wp_enqueue_style('mainCSS', get_template_directory_uri() . '/css/main.css');


    //enqueing JS
    wp_enqueue_script('mainJS', get_stylesheet_directory_uri() . '/js/main.js', array(), 1.0, true);
    wp_enqueue_script("jquery");
}
add_action('wp_enqueue_scripts', 'howcroatia_files');


















?>