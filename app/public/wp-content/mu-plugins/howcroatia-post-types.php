<?php  


/* REGISTRATION OF CUSTOM POST TYPES */
    function howcroatia_post_types() {

        // Medical Services Custom Post Type
        register_post_type('medical_services', array(
            'public' => true,
            'labels' => array(
                'name' => 'Medical Services',
                'add_new' => 'Add New Medical Service',
                'add_new_item' => 'Add New Service',
                'edit_item' => 'Edit Medical Service',
                'all_items' => 'All Medical Services',
                'singular_name' => 'Medical Service'
            ),
            'menu_icon' => 'dashicons-plus-alt',
            'supports' => array('title', 'editor', 'thumbnail'),
            'has_archive' => true,
        ));

         // Legal Services Custom Post Type
        register_post_type('legal_services', array(
            'public' => true,
            'labels' => array(
                'name' => 'Legal Services',
                'add_new' => 'Add New Legal Service',
                'add_new_item' => 'Add New Service',
                'edit_item' => 'Edit Legal Service',
                'all_items' => 'All Legal Services',
                'singular_name' => 'Legal Service'
            ),
            'menu_icon' => 'dashicons-book',
            'supports' => array('title', 'editor', 'thumbnail'),
            'has_archive' => true,
        ));

        // Financial Services Custom Post Type
        register_post_type('financial_services', array(
            'public' => true,
            'labels' => array(
                'name' => 'Financial Services',
                'add_new' => 'Add New Financial Service',
                'add_new_item' => 'Add New Service',
                'edit_item' => 'Edit Financial Service',
                'all_items' => 'All Financial Services',
                'singular_name' => 'Financial Service'
            ),
            'menu_icon' => 'dashicons-money-alt',
            'supports' => array('title', 'editor', 'thumbnail'),
            'has_archive' => true,
        ));

        // Real Estate Services Custom Post Type
        register_post_type('real_estate_services', array(
            'public' => true,
            'labels' => array(
                'name' => 'Real Estate Services',
                'add_new' => 'Add New Real Estate Service',
                'add_new_item' => 'Add New Service',
                'edit_item' => 'Edit Real Estate Service',
                'all_items' => 'All Real Estate Services',
                'singular_name' => 'Real Estate Service'
            ),
            'menu_icon' => 'dashicons-admin-home',
            'supports' => array('title', 'editor', 'thumbnail'),
            'has_archive' => true,
        ));

        // Hotels and Luxury Rentals Custom Post Type
        register_post_type('hotels_rentals', array(
            'public' => true,
            'labels' => array(
                'name' => 'Hotels and Luxury Rentals',
                'add_new' => 'Add Hotel',
                'add_new_item' => 'Add New Hotel',
                'edit_item' => 'Edit Hotel',
                'all_items' => 'All Hotels',
                'singular_name' => 'Hotel'
            ),
            'menu_icon' => 'dashicons-location',
            'supports' => array('title', 'editor', 'thumbnail'),
            'has_archive' => true,
        ));



    }
    add_action('init', 'howcroatia_post_types');