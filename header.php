<!DOCTYPE html>
<html class="no-js" lang="<?php language_attributes(); ?>">
	<head>
		<title>
            <?php 
                if (is_front_page()) {
                    // Strona główna
                    echo bloginfo('name');
                } else if (is_home()) {
                    // Blog
                    if (pll_current_language() == 'pl' ) {
                        echo 'Blog · '; 
                    } else {
                        echo 'News · '; 
                    }
                    echo bloginfo('name');
                } else {
                    // Podstrony
                    echo get_the_title(); echo ' · '; echo bloginfo('name'); 
                }
            ?>
        </title>

		<meta charset="<?php bloginfo( 'charset' ); ?>">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="format-detection" content="telephone=no">
	    <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="robots" content="index, follow">
        <meta name="googlebot" content="index, follow">
        <meta name="theme-color" content="#fff">

	    <link rel="stylesheet" type="text/css" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/css/normalize.css">
	    <link rel="stylesheet" type="text/css" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/icomoon/icomoon.css">
	    <link rel="stylesheet" type="text/css" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/css/vendor.css">
	    <link rel="stylesheet" type="text/css" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/css/style.css">

		<script src="<?php echo get_stylesheet_directory_uri(); ?>/assets/js/modernizr.js"></script>
	
        <?php wp_head(); ?>
    </head>
<body>
    <?php get_template_part('parts/header/header'); ?>