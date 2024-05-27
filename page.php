<?php

get_header();

$front_page_id = get_option('page_on_front');
$front_page_title = get_the_title($front_page_id);

?>

<section class="hero-section">
	<div class="hero-content parallax-container padding-xlarge" data-parallax="scroll" data-image-src="<?php echo esc_url(get_the_post_thumbnail_url()); ?>">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1 class="page-title"><?php echo the_title(); ?></h1>
					<div class="breadcrumbs">
						<span class="item"><a href="<?php echo esc_url( home_url( '/' ) ); ?>"> <?php esc_html_e($front_page_title); ?> /</a></span>
						<span class="item colored"><?php echo the_title(); ?></span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="padding-large">
	<div class="container">
		<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
			<?php the_content(); ?>
		<?php endwhile; endif; ?>
	</div>
</section>

<?php

get_footer();