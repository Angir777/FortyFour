<?php

	/* 
	*
	* Rejestracja widgetu
	*
	*/

	register_sidebar( array(
		'name'          => __( 'Blog Widget', 'skrzypniaktheme' ),
		'id'            => 'blog-widget',
		'description'   => __( 'Dodaj treść.', 'skrzypniaktheme' ),
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget'  => '</aside>',
		'before_title'  => '<h4 class="widget-title">',
		'after_title'   => '</h4>',
	) );

	/* 
	*
	* Rejestracja obrazków 
	*
	*/

	add_theme_support( 'post-thumbnails' );

	/* 
	*
	* Rejestracja logo 
	*
	*/

	add_theme_support( 'custom-logo' );

	/* 
	*
	* Rejestracja menu 
	*
	*/

	function reg_mymenu() {
		register_nav_menus(
			array(
				'header-menu' => __( 'Menu górne' ),
				'footer-menu' => __( 'Menu dolne' ),
			)
		);
	}
	add_action( 'init', 'reg_mymenu');

	// Dodawanie do menu klasy <li class=""> [...]
	function my_menu_li_class($classes, $item, $args) {
		if (property_exists($args, 'my_menu_li_class')) {
			$classes[] = $args->my_menu_li_class;
		}

		// Dodaj klasę 'active-nav' jeśli element menu jest aktualną trasą
		if (in_array('current-menu-item', $classes) || in_array('current_page_item', $classes)) {
			$classes[] = 'active-nav';
		}

		return $classes;
	}
	add_filter('nav_menu_css_class', 'my_menu_li_class', 1, 3);

	// Dodawanie do menu klasy <li><a class=""> [...]
	function my_menu_a_class( $attributes, $item, $args ) {
		if (property_exists($args, 'my_menu_a_class')) {
			$attributes['class'] = $args->my_menu_a_class;
		}
		
		return $attributes;
	}
	add_filter( 'nav_menu_link_attributes', 'my_menu_a_class', 1, 3 );

	/* 
	*
	* Opcje motywu
	*
	*/

	class MyThemeOptions {
		private $mto;

		public function __construct() {
			add_action( 'admin_menu', array( $this, 'mto_add_plugin_page' ) );
			add_action( 'admin_init', array( $this, 'mto_add_page_init' ) );
		}

		public function mto_add_plugin_page() {
			add_menu_page(
				'Opcje szablonu', // page_title
				'Opcje szablonu', // menu_title
				'manage_options', // capability
				'theme-options', // menu_slug
				array( $this, 'mto_create_admin_page' ), // function
				'dashicons-admin-generic', // icon_url
				2 // position
			);
		}

		public function mto_create_admin_page() {
			$this->mto = get_option( 'mto_option_name' ); ?>

			<div class="wrap">
				<h2>Opcje szablonu</h2>
				
				<?php settings_errors(); ?>

				<form method="post" action="options.php">
					<?php
						settings_fields( 'mto_option_group' );
						do_settings_sections( 'mto_admin' );
						submit_button();
					?>
				</form>
			</div>
		<?php }

		public function mto_add_page_init() {
			register_setting(
				'mto_option_group', // option_group
				'mto_option_name', // option_name
				array( $this, 'mto_sanitize' ) // sanitize_callback
			);

			add_settings_section(
				'mto_section', // id
				'Stopka', // title
				array( $this, 'mto_section_info' ), // callback
				'mto_admin' // page
			);

			// Footer menu title PL
			add_settings_field(
				'mto_footer_menu_title_pl', // id
				'Tytuł menu PL', // title
				array( $this, 'mto_footer_menu_title_pl_callback' ), // callback
				'mto_admin', // page
				'mto_section' // section
			);

			// Footer menu title EN
			add_settings_field(
				'mto_footer_menu_title_en', // id
				'Tytuł menu EN', // title
				array( $this, 'mto_footer_menu_title_en_callback' ), // callback
				'mto_admin', // page
				'mto_section' // section
			);

			// Contact data title PL
			add_settings_field(
				'mto_contact_data_title_pl', // id
				'Tytuł stopki PL', // title
				array( $this, 'mto_contact_data_title_pl_callback' ), // callback
				'mto_admin', // page
				'mto_section' // section
			);

			// Contact data title EN
			add_settings_field(
				'mto_contact_data_title_en', // id
				'Tytuł stopki EN', // title
				array( $this, 'mto_contact_data_title_en_callback' ), // callback
				'mto_admin', // page
				'mto_section' // section
			);

			// Motto PL
			add_settings_field(
				'mto_motto_pl', // id
				'Motto PL', // title
				array( $this, 'mto_motto_pl_callback' ), // callback
				'mto_admin', // page
				'mto_section' // section
			);

			// Motto EN
			add_settings_field(
				'mto_motto_en', // id
				'Motto EN', // title
				array( $this, 'mto_motto_en_callback' ), // callback
				'mto_admin', // page
				'mto_section' // section
			);

			// Place 1
			add_settings_field(
				'mto_place_1', // id
				'Miejsce 1', // title
				array( $this, 'mto_place_1_callback' ), // callback
				'mto_admin', // page
				'mto_section' // section
			);

			// Place 2
			add_settings_field(
				'mto_place_2', // id
				'Miejsce 2', // title
				array( $this, 'mto_place_2_callback' ), // callback
				'mto_admin', // page
				'mto_section' // section
			);

			// Phone
			add_settings_field(
				'mto_phone', // id
				'Telefon', // title
				array( $this, 'mto_phone_callback' ), // callback
				'mto_admin', // page
				'mto_section' // section
			);

			// Email
			add_settings_field(
				'mto_email', // id
				'E-mail', // title
				array( $this, 'mto_email_callback' ), // callback
				'mto_admin', // page
				'mto_section' // section
			);

			add_settings_section(
				'opcje_szablonu_social_section', // id
				'Social linki', // title
				array( $this, 'mto_social_info' ), // callback
				'mto_admin' // page
			);

			// Facebook
			add_settings_field(
				'mto_facebook', // id
				'mto_Facebook', // title
				array( $this, 'mto_facebook_callback' ), // callback
				'mto_admin', // page
				'opcje_szablonu_social_section' // section
			);

			// Twitter
			add_settings_field(
				'mto_twitter', // id
				'mto_Twitter', // title
				array( $this, 'mto_twitter_callback' ), // callback
				'mto_admin', // page
				'opcje_szablonu_social_section' // section
			);

			// YouTube
			add_settings_field(
				'mto_youtube', // id
				'mto_YouTube', // title
				array( $this, 'mto_youtube_callback' ), // callback
				'mto_admin', // page
				'opcje_szablonu_social_section' // section
			);

			add_settings_section(
				'opcje_szablonu_posts_settings_section', // id
				'Opcje postów', // title
				array( $this, 'mto_posts_settings' ), // callback
				'mto_admin' // page
			);

			// Wyświetlanie domyślnego obrazka na poście, jeśli ten nie ma dodanego obrazka wyróżniającego
			add_settings_field(
				'mto_display_default_post_thumb', // id
				'Wyświetlanie domyślnego obrazka na poście, jeśli ten nie ma dodanego obrazka wyróżniającego', // title
				array( $this, 'mto_display_default_post_thumb_callback' ), // callback
				'mto_admin', // page
				'opcje_szablonu_posts_settings_section' // section
			);
		}

		public function mto_sanitize($input) {
			$sanitary_values = array();

			if ( isset( $input['mto_footer_menu_title_pl'] ) ) {
				$sanitary_values['mto_footer_menu_title_pl'] = sanitize_text_field( $input['mto_footer_menu_title_pl'] );
			}

			if ( isset( $input['mto_footer_menu_title_en'] ) ) {
				$sanitary_values['mto_footer_menu_title_en'] = sanitize_text_field( $input['mto_footer_menu_title_en'] );
			}
			
			if ( isset( $input['mto_contact_data_title_pl'] ) ) {
				$sanitary_values['mto_contact_data_title_pl'] = sanitize_text_field( $input['mto_contact_data_title_pl'] );
			}

			if ( isset( $input['mto_contact_data_title_en'] ) ) {
				$sanitary_values['mto_contact_data_title_en'] = sanitize_text_field( $input['mto_contact_data_title_en'] );
			}

			if ( isset( $input['mto_motto_pl'] ) ) {
				$sanitary_values['mto_motto_pl'] = sanitize_text_field( $input['mto_motto_pl'] );
			}

			if ( isset( $input['mto_motto_en'] ) ) {
				$sanitary_values['mto_motto_en'] = sanitize_text_field( $input['mto_motto_en'] );
			}

			if ( isset( $input['mto_place_1'] ) ) {
				$sanitary_values['mto_place_1'] = sanitize_text_field( $input['mto_place_1'] );
			}

			if ( isset( $input['mto_place_2'] ) ) {
				$sanitary_values['mto_place_2'] = sanitize_text_field( $input['mto_place_2'] );
			}

			if ( isset( $input['mto_phone'] ) ) {
				$sanitary_values['mto_phone'] = sanitize_text_field( $input['mto_phone'] );
			}

			if ( isset( $input['mto_email'] ) ) {
				$sanitary_values['mto_email'] = sanitize_text_field( $input['mto_email'] );
			}

			if ( isset( $input['mto_facebook'] ) ) {
				$sanitary_values['mto_facebook'] = sanitize_text_field( $input['mto_facebook'] );
			}

			if ( isset( $input['mto_twitter'] ) ) {
				$sanitary_values['mto_twitter'] = sanitize_text_field( $input['mto_twitter'] );
			}

			if ( isset( $input['mto_youtube'] ) ) {
				$sanitary_values['mto_youtube'] = sanitize_text_field( $input['mto_youtube'] );
			}

			if ( isset( $input['mto_display_default_post_thumb'] ) ) {
				$sanitary_values['mto_display_default_post_thumb'] = $input['mto_display_default_post_thumb'] === '1' ? '1' : '';
			} else {
				$sanitary_values['mto_display_default_post_thumb'] = '';
			}

			return $sanitary_values;
		}

		public function mto_section_info() {}

		public function mto_footer_menu_title_pl_callback() {
			printf(
				'<input class="regular-text" type="text" name="mto_option_name[mto_footer_menu_title_pl]" id="mto_footer_menu_title_pl" value="%s">',
				isset( $this->mto['mto_footer_menu_title_pl'] ) ? esc_attr( $this->mto['mto_footer_menu_title_pl']) : ''
			);
		}

		public function mto_footer_menu_title_en_callback() {
			printf(
				'<input class="regular-text" type="text" name="mto_option_name[mto_footer_menu_title_en]" id="mto_footer_menu_title_en" value="%s">',
				isset( $this->mto['mto_footer_menu_title_en'] ) ? esc_attr( $this->mto['mto_footer_menu_title_en']) : ''
			);
		}

		public function mto_contact_data_title_pl_callback() {
			printf(
				'<input class="regular-text" type="text" name="mto_option_name[mto_contact_data_title_pl]" id="mto_contact_data_title_pl" value="%s">',
				isset( $this->mto['mto_contact_data_title_pl'] ) ? esc_attr( $this->mto['mto_contact_data_title_pl']) : ''
			);
		}

		public function mto_contact_data_title_en_callback() {
			printf(
				'<input class="regular-text" type="text" name="mto_option_name[mto_contact_data_title_en]" id="mto_contact_data_title_en" value="%s">',
				isset( $this->mto['mto_contact_data_title_en'] ) ? esc_attr( $this->mto['mto_contact_data_title_en']) : ''
			);
		}

		public function mto_motto_pl_callback() {
			printf(
				'<textarea class="large-text" name="mto_option_name[mto_motto_pl]" id="mto_motto_pl" maxlength="200">%s</textarea>',
				isset( $this->mto['mto_motto_pl'] ) ? esc_textarea( $this->mto['mto_motto_pl']) : ''
			);
		}

		public function mto_motto_en_callback() {
			printf(
				'<textarea class="large-text" name="mto_option_name[mto_motto_en]" id="mto_motto_en" maxlength="200">%s</textarea>',
				isset( $this->mto['mto_motto_en'] ) ? esc_textarea( $this->mto['mto_motto_en']) : ''
			);
		}

		public function mto_place_1_callback() {
			printf(
				'<input class="regular-text" type="text" name="mto_option_name[mto_place_1]" id="mto_place_1" value="%s">',
				isset( $this->mto['mto_place_1'] ) ? esc_attr( $this->mto['mto_place_1']) : ''
			);
		}

		public function mto_place_2_callback() {
			printf(
				'<input class="regular-text" type="text" name="mto_option_name[mto_place_2]" id="mto_place_2" value="%s">',
				isset( $this->mto['mto_place_2'] ) ? esc_attr( $this->mto['mto_place_2']) : ''
			);
		}

		public function mto_phone_callback() {
			printf(
				'<input class="regular-text" type="text" name="mto_option_name[mto_phone]" id="mto_phone" value="%s">',
				isset( $this->mto['mto_phone'] ) ? esc_attr( $this->mto['mto_phone']) : ''
			);
		}

		public function mto_email_callback() {
			printf(
				'<input class="regular-text" type="text" name="mto_option_name[mto_email]" id="mto_email" value="%s">',
				isset( $this->mto['mto_email'] ) ? esc_attr( $this->mto['mto_email']) : ''
			);
		}

		public function mto_social_info() {}

		public function mto_facebook_callback() {
			printf(
				'<input class="regular-text" type="text" name="mto_option_name[mto_facebook]" id="mto_facebook" value="%s">',
				isset( $this->mto['mto_facebook'] ) ? esc_attr( $this->mto['mto_facebook']) : ''
			);
		}

		public function mto_twitter_callback() {
			printf(
				'<input class="regular-text" type="text" name="mto_option_name[mto_twitter]" id="mto_twitter" value="%s">',
				isset( $this->mto['mto_twitter'] ) ? esc_attr( $this->mto['mto_twitter']) : ''
			);
		}

		public function mto_youtube_callback() {
			printf(
				'<input class="regular-text" type="text" name="mto_option_name[mto_youtube]" id="mto_youtube" value="%s">',
				isset( $this->mto['mto_youtube'] ) ? esc_attr( $this->mto['mto_youtube']) : ''
			);
		}

		public function mto_posts_settings() {}

		public function mto_display_default_post_thumb_callback() {
			printf(
				'<input type="checkbox" name="mto_option_name[mto_display_default_post_thumb]" id="mto_display_default_post_thumb" value="1" %s>',
				isset( $this->mto['mto_display_default_post_thumb'] ) && $this->mto['mto_display_default_post_thumb'] === '1' ? 'checked' : ''
			);
		}
	}
	if ( is_admin() ) { $opcje_szablonu = new MyThemeOptions(); }
	