<?php

get_header();

include get_template_directory() . '/parts/options/options.php';

$front_page_id = get_option('page_on_front');
$front_page_title = get_the_title($front_page_id);
$error_code = "404";

if (pll_current_language() == 'pl' ) {
	$error_title = $error_title_pl;
	$error_text = $error_text_pl;
} else {
	$error_title = $error_title_en;
	$error_text = $error_text_en;
}

?>

<section class="hero-section">
	<div class="hero-content parallax-container padding-xlarge" data-parallax="scroll" data-image-src="">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1 class="page-title"><?php esc_html_e($error_code); ?></h1>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="padding-large">
	<div class="container">
		<h1><?php esc_html_e($error_title); ?></h1>
		<p><?php esc_html_e($error_text); ?> <a href="<?php echo esc_url( home_url( '/' ) ); ?>">"<?php esc_html_e($front_page_title); ?>"</a>.</p>
	</div>
</section>

<?php

get_footer();