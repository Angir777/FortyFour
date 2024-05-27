<?php

get_header();

include get_template_directory() . '/parts/options/options.php';

$front_page_id = get_option('page_on_front');
$front_page_title = get_the_title($front_page_id);

?>

<section class="hero-section">
	<div class="hero-content parallax-container padding-xlarge" data-parallax="scroll" data-image-src="<?php echo esc_url(get_the_post_thumbnail_url()); ?>">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1 class="page-title">
                        <?php single_cat_title(); ?>
                    </h1>
				</div>
			</div>
		</div>
	</div>
</section>

<section id="latest-blog" class="scrollspy-section padding-large">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="post-grid">
					<div class="row">
                        <?php
                            // Kategoria
                            $category = get_queried_object();
                            $category_slug = $category->slug;
                            $category_id = $category->term_id;

                            // Pobierz aktualną stronę (dla paginacji)
                            $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
                            
                            // Pobierz liczbę wpisów na stronę z ustawień WordPressa
                            $posts_per_page = get_option('posts_per_page');

                            // Argumenty zapytania
                            $args = array(
                                'cat' => $category_id, // Kategoria wpisu
                                'posts_per_page' => $posts_per_page, // Liczba postów na stronę z ustawień WordPressa
                                'paged' => $paged, // Aktualna strona
                            );

                            // Nowe zapytanie WP_Query
                            $the_query = new WP_Query( $args );

                            // Pętla
                            if ( $the_query->have_posts() ) {
                                while ( $the_query->have_posts() ) {
                                    $the_query->the_post(); 
                        ?>
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
                                if ( pll_current_language() == 'pl' ) {
                                    echo '<p>' . $no_posts_pl . '</p>'; 
                                } else {
                                    echo '<p>' . $no_posts_en . '</p>'; 
                                }
                            }
                        ?>
					</div>
                    <div class="row">
                        <?php 
                            if (function_exists('wp_pagenavi')) {
                                // WP-PageNavi plugin
                                wp_pagenavi();
                            } 
                        ?>
                    </div>
				</div>
			</div>
		</div>
	</div>
</section>

<?php

get_footer();