<html <?php language_attributes(); ?>>
<head>
    <meta <?php bloginfo('charset'); ?>>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php bloginfo('name'); ?></title>
    <?php wp_head(); ?>

</head>
<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
    
<?php 

// conditional statement to show white header only on certain post types
  if(get_post_type() == 'hotel' || get_post_type() == 'medical' || get_post_type() == 'legal' || get_post_type() == 'financial' || get_post_type() == 'estate'){
    get_template_part('partials/header', 'white');
    } else{
      get_template_part('partials/header', 'black');
    }

?>