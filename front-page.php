<?php

get_header();

include get_template_directory() . '/parts/options/options.php';

$blog_content = get_field('blog_content', get_option('page_on_front')); // Pobierz pole ACF zdefiniowane na stronie głównej

?>

<section class="padding-large">
	<div class="container">
		<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
			<?php the_content(); ?>
		<?php endwhile; endif; ?>
	</div>
</section>

<section id="latest-blog" class="scrollspy-section padding-large">
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="section-header">
					<div class="title">
						<span><?php echo $blog_content['title_small']; ?></span>
					</div>
					<h2 class="section-title"><?php echo $blog_content['title_big']; ?></h2>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<div class="post-grid">
					<div class="row">
                        <?php
                            // Argumenty zapytania
                            $args = array(
                                'post_type' => 'post', // Typ wpisu
                                'posts_per_page' => 3, // Liczba wpisów do pobrania
                            );
                            // Nowe zapytanie WP_Query
                            $the_query = new WP_Query( $args );
                            // Pętla
                            if ( $the_query->have_posts() ) {
                                while ( $the_query->have_posts() ) {
                                    $the_query->the_post(); ?>
                                    <div class="col-md-4">
                                        <article class="column">
                                            <?php
                                                if ( has_post_thumbnail() ) {
                                                    $thumbnail_url = get_the_post_thumbnail_url( get_the_ID(), 'medium' );
                                                } else {
                                                    // Ustawienie szablonu - czy pokazywać domyslną miniaturkę jesli post nie ma miniaturki
                                                    if ($display_default_post_thumb) {
                                                        $thumbnail_url = get_stylesheet_directory_uri(). '/assets/images/none-post.jpg';
                                                    } else {
                                                        $thumbnail_url = null;
                                                    }
                                                }
                                                   
                                                if ( $thumbnail_url) {
                                                    echo '
                                                        <figure>
                                                            <a href="' . get_permalink() . '" class="image-hvr-effect">
                                                                <img src="' . esc_url( $thumbnail_url ) . '" alt="" class="post-image">			
                                                            </a>
                                                        </figure>
                                                    ';
                                                }
                                            ?>
                                            <div class="post-item">	
                                                <div class="meta-date"><?php echo get_the_date('F j, Y'); ?></div>			
                                                <h3 class="post-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                                                <p><a href="<?php the_permalink(); ?>"><?php the_excerpt(); ?></a></p>
                                            </div>
                                        </article>
                                    </div>
                                <?php
                                }
                                wp_reset_postdata(); // Resetowanie globalnych zmiennych post
                            } else {
                                echo '<p>' . $blog_content['title_none'] . '</p>';
                            }
                        ?>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col">
				<div class="btn-wrap align-center">
					<a href="<?php echo $blog_content['button']['url']; ?>" class="btn btn-xlarge btn-accent btn-rounded">
						<?php echo $blog_content['button']['title']; ?>
					</a>
				</div>
			</div>
		</div>

	</div>
</section>

<?php

get_footer();