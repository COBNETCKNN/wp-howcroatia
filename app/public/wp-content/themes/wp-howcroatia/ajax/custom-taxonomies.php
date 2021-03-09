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

?>