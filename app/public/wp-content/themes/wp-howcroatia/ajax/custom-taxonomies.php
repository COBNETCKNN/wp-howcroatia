<?php 

//Custom Location Taxonomy for Hotels and Luxury Post type 
function hotelsRentalsLocationTaxonomy() {
    $args = array(
        'label'        => __( 'Location', 'textdomain' ),
        'rewrite'      => false,
        'hierarchical' => true
    );
    
    register_taxonomy( 'location', 'hotel', $args );
}
add_action( 'init', 'hotelsRentalsLocationTaxonomy', 0 );

//Custom Category Taxonomy for Hotels and Luxury Post type 
function hotelCategoryTaxonomy() {
    $args = array(
        'label'        => __( 'Category', 'textdomain' ),
        'rewrite'      => false,
        'hierarchical' => true
    );
    
    register_taxonomy( 'hotel-category', 'hotel', $args );
}
add_action( 'init', 'hotelCategoryTaxonomy', 0 );

//Custom Service Taxonomy for Financial Custom Post Type
function serviceFinancial() {
    $args = array(
        'label'        => __( 'Service', 'textdomain' ),
        'rewrite'      => false,
        'hierarchical' => true
    );
    
    register_taxonomy( 'service', 'financial', $args );
}
add_action( 'init', 'serviceFinancial', 0 );

//Custom Location Taxonomy for Financial Custom Post Type
function locationFinancial() {
    $args = array(
        'label'        => __( 'Location', 'textdomain' ),
        'rewrite'      => false,
        'hierarchical' => true
    );
    
    register_taxonomy( 'location-financial', 'financial', $args );
}
add_action( 'init', 'locationFinancial', 0 );

//Custom Service Taxonomy for Real Estate Custom Post Type
function serviceRealEstate() {
    $args = array(
        'label'        => __( 'Service', 'textdomain' ),
        'rewrite'      => false,
        'hierarchical' => true
    );
    
    register_taxonomy( 'service-real-estate', 'estate', $args );
}
add_action( 'init', 'serviceRealEstate', 0 );

//Custom Location Taxonomy for Real Estate Custom Post Type
function locationRealEstate() {
    $args = array(
        'label'        => __( 'Location', 'textdomain' ),
        'rewrite'      => false,
        'hierarchical' => true
    );
    
    register_taxonomy( 'location-real-estate', 'estate', $args );
}
add_action( 'init', 'locationRealEstate', 0 );

//Custom Service Taxonomy for Medical Services Custom Post Type
function serviceMedical() {
    $args = array(
        'label'        => __( 'Service', 'textdomain' ),
        'rewrite'      => false,
        'hierarchical' => true
    );
    
    register_taxonomy( 'service-medical', 'medical', $args );
}
add_action( 'init', 'serviceMedical', 0 );

//Custom Location Taxonomy for Medical Services Custom Post Type
function locationMedical() {
    $args = array(
        'label'        => __( 'Location', 'textdomain' ),
        'rewrite'      => false,
        'hierarchical' => true
    );
    
    register_taxonomy( 'location-medical', 'medical', $args );
}
add_action( 'init', 'locationMedical', 0 );

//Custom Service Taxonomy for Legal Services Custom Post Type
function serviceLegal() {
    $args = array(
        'label'        => __( 'Service', 'textdomain' ),
        'rewrite'      => false,
        'hierarchical' => true
    );
    
    register_taxonomy( 'service-legal', 'legal', $args );
}
add_action( 'init', 'serviceLegal', 0 );

//Custom Location Taxonomy for Legal Services Custom Post Type
function locationLegal() {
    $args = array(
        'label'        => __( 'Location', 'textdomain' ),
        'rewrite'      => false,
        'hierarchical' => true
    );
    
    register_taxonomy( 'location-legal', 'legal', $args );
}
add_action( 'init', 'locationLegal', 0 );



?>