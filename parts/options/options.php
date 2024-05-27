<?php

// Array of All Options
$mto = get_option( 'mto_option_name' );

$motto_pl = $mto['mto_motto_pl'] ?? null;
$motto_en = $mto['mto_motto_en'] ?? null;

$footer_menu_title_pl = $mto['mto_footer_menu_title_pl'] ?? null;
$footer_menu_title_en = $mto['mto_footer_menu_title_en'] ?? null;

$contact_data_title_pl = $mto['mto_contact_data_title_pl'] ?? null;
$contact_data_title_en = $mto['mto_contact_data_title_en'] ?? null;
$place_1 = $mto['mto_place_1'] ?? null;
$place_2 = $mto['mto_place_2'] ?? null;
$phone = $mto['mto_phone'] ?? null;
$email = $mto['mto_email'] ?? null;

$facebook = $mto['mto_facebook'] ?? null;
$twitter = $mto['mto_twitter'] ?? null;
$youtube = $mto['mto_youtube'] ?? null;

$display_default_post_thumb = $mto['mto_display_default_post_thumb'] ?? null;

// A few regulars with translations

$error_title_pl = "Oops! Strony nie znaleziono! :(";
$error_text_pl = "Wróć do";
$error_title_en = "Oops! That page can’t be found! :(";
$error_text_en = "Go to";

$blog_name_pl = "Blog";
$blog_name_en = "News";

$no_posts_pl = "Brak wpisów";
$no_posts_en = "No posts";

$search_title_pl = "Wyniki wyszukiwania: ";
$search_title_en = "Search results: ";