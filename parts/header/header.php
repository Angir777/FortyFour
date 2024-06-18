<div class="nav nav-overlay">
	<div class="nav__content">
        <!-- menu górne -->
        <?php 
            wp_nav_menu(array(
                "theme_location" => "header-menu",
                "container" => "",
                "menu_class" => "nav__list",
                "my_menu_li_class" => "nav__list-item",
                "my_menu_a_class" => "hover-target",
            ));
        ?>
        <!-- zmiana języka -->
		<ul class="nav__list">
            <?php pll_the_languages();?>
		</ul>
	</div>
</div>

<header id="header">
    <div id="header-wrap">
        <nav id="navbar">
            <div class="main-logo">
                <a href="<?php echo esc_url( home_url( '/' ) ); ?>">A.</a>
            </div>
        </nav>
        <div class="action-menu">
            <div class="side-nav-bar">
                <input id="menu-toggle" type="checkbox" />
                    <label class="menu-btn" for="menu-toggle">
                    <span></span>
                </label>
            </div>
        </div>
    </div>
</header>

<?php if (is_front_page()) { ?>

    <section id="intro" class="scrollspy-section">
        <!-- slider -->
        <div class="main-slider">
            <?php
                $current_language = get_locale();
                $locale_parts = explode('_', $current_language);
                $language_code = $locale_parts[0];
                $args = [
                    'post_type' => 'slider_' . $language_code,
                ];
                $query = new WP_Query($args);
            ?>
            <?php if($query->have_posts()) : ?>
            <?php while($query->have_posts()) : $query->the_post(); ?>
                <?php $slider_content = get_field('slider_content'); ?>
                <div class="slider-item">
                    <img src="<?php echo $slider_content['file'] ?>" alt="">
                    <div class="banner-content">
                        <h2 class="banner-title txt-fx"><?php echo $slider_content['title'] ?></h2>
                        <?php 
                            if ($slider_content['button_group']['url']) {
                        ?>
                            <div class="btn-wrap">
                                <a href="<?php echo $slider_content['button_group']['url'] ?>" class="btn-with-line"><?php echo $slider_content['button_group']['title'] ?></a>
                            </div>
                        <?php
                            }
                        ?>
                    </div>
                </div>
            <?php endwhile;  ?>
            <?php else: wp_reset_query(); ?>
                <div class="col"></div>
            <?php endif;  ?>
        </div>

        <div class="button-container">
            <button class="prev slick-arrow">
                <i class="icon icon-chevron-thin-left"></i>
            </button>
            <button class="next slick-arrow">
                <i class="icon icon-chevron-thin-right"></i>
            </button>
        </div>
    </section>
<?php } ?>