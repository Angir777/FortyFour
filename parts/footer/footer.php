<?php 
    include get_template_directory() . '/parts/options/options.php';
?>
<footer id="footer">
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<div class="footer-menu menu-item-01">
					<?php
                        $custom_logo_id = get_theme_mod( 'custom_logo' );
                        $logo = wp_get_attachment_image_src( $custom_logo_id , 'full' );
                        if ( has_custom_logo() ) {
                            echo '<img src="' . esc_url( $logo[0] ) . '" alt="' . get_bloginfo( 'name' ) . '" class="footer-logo">';
                        } else {
					?>
                            <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/logo.png" alt="logo" class="footer-logo">
					<?php
                        }
                    ?>
					<p>
						<?php 
							if (pll_current_language() == 'pl' ) {
								echo $motto_pl;
							} else {
								echo $motto_en;
							}
						?>
					</p>
					<div class="social-links">
						<ul>
							<?php 
								if ($facebook) {
									echo '<li><a href="'.$facebook.'"><i class="icon icon-facebook"></i></a></li>';
								}

								if ($twitter) {
									echo '<li><a href="'.$twitter.'"><i class="icon icon-twitter"></i></a></li>';
								}

								if ($youtube) {
									echo '<li><a href="'.$youtube.'"><i class="icon icon-youtube-play"></i></a></li>';
								}
							?>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="footer-menu menu-item-02">
					<h5>
						<?php 
                            if (pll_current_language() == 'pl' ) {
                                echo $footer_menu_title_pl;
                            } else {
                                echo $footer_menu_title_en;
                            }
                        ?>
					</h5>
					<?php 
						wp_nav_menu(array(
							"theme_location" => "header-menu",
							"container" => "",
							"menu_class" => "menu-list",
							"my_menu_li_class" => "menu-item",
							"my_menu_a_class" => "",
						));
					?>
				</div>
			</div>
			<div class="col-md-4">
				<div class="footer-menu menu-item-03">
					<h5>
						<?php 
                            if (pll_current_language() == 'pl' ) {
                                echo $contact_data_title_pl;
                            } else {
                                echo $contact_data_title_en;
                            }
                        ?>
					</h5>
					<ul class="menu-list">
						<?php 
							if ($place_1) {
								echo '<li class="menu-item"><i class="icon icon-location"></i>'.$place_1.'</li>';
							}
							if ($place_2) {
								echo '<li class="menu-item"><i class="icon icon-location2"></i>'.$place_2.'</li>';
							}
							if ($phone) {
								echo '<li class="menu-item"><i class="icon icon-phone"></i>'.$phone.'</li>';
							}
							if ($phone) {
								echo '<li class="menu-item"><i class="icon icon-envelope-o"></i><a href="'.$email.'" class="mail-id">'.$email.'</a></li>';
							}
						?>
					</ul>
				</div>
			</div>
		</div>
	</div>
</footer>

<div id="footer-bottom">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="copyright">
					<p>© <?php echo date('Y'); ?> Archi. All rights reserved.</p>
				</div>
			</div>
			<div class="col-md-6">
				<div class="copyright text-right">
					<p>HTML Template by <a href="https://www.templatesjungle.com/" target="_blank" rel=”nofollow”>Templates Jungle</a></p>
					<p>WP Template by <a href="https://github.com/Angir777" target="_blank" rel=”nofollow”>Angir777</a></p>
				</div>
			</div>
		</div>
	</div>
</div>