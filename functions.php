<?php
//Ajout de l'utilisation de la sidebar par default
if (function_exists('register_sidebar')) {
    register_sidebar(
        array(
            'id'            => 'gauche',
            'name'          => 'Emplacement gauche',
            'description'   => 'Emplacement a gauche des widgets',
            'before_widget' => '',
            'after_widget'  => '',
            'before_title'  => '<h3>',
            'after_title'   => '</h3>'
        )
    );
    register_sidebar(
        array(
            'id'            => 'droite',
            'name'          => 'Emplacement droite',
            'description'   => 'Emplacement a droite des widgets',
            'before_widget' => '',
            'after_widget'  => '',
            'before_title'  => '<h3>',
            'after_title'   => '</h3>'
        )
    );
}

//Ajout de l'emplacement de menu
if(function_exists('register_nav_menus')) {
    register_nav_menus(
        array(
            'principal'     => 'Menu principal',
            'secondaire'    => 'Menu secondaire'
        )
    );
}

//Creation du reglage Image a une
if(function_exists('add_theme_support')) {
    add_theme_support('post-thumbnails');
}

function enregistrer_personalisation_theme($wp_customize) {
    $wp_customize -> add_section('ma_section',
        array(
            'title' => 'Option du theme Mon agence',
            'description' => 'Personalisation du theme Mon agence',
            'priority' => 1
        )
    );
    $wp_customize -> add_setting('charge_image');
    $wp_customize -> add_control(new WP_Customize_Image_Control($wp_customize, 'charge_image',
        array(
            'label' => 'Image d\'arriere plan : 1140x250px',
            'section' => 'ma_section',
            'setting' => 'charge_image',
        )));
}

add_action('customize_register', 'enregistrer_personalisation_theme');

function personnalisation_theme_css() { ?>
    <style type="text/css">
        header.image {
            background-image: url(<?php echo get_theme_mod('charge_image', 'none');?>);
            height: <?php if(get_theme_mod('charge_image') != ""){
                        echo '250px';
                    }
                    else {
                        echo 'auto';
                    }?>;
        }
    </style>
<?php }

add_action('wp_head', 'personnalisation_theme_css');?>

<?php

function agence_realisations_custom_post() {
    //On rentre des differentes denominations de notre article personnalise type
    //qui seront affichees dons l'interface administrative

    $labels = array(
        // Le nom au pluriel
        'name'                  => _x('Réalisations de Mon Agence', 'Post Type General Name'),
        // Le nom au singulier
        'singular_name'         => _x('Réalisations', 'Post Type Singular Name'),
        // Le libellé affiché dans le menu
        'menu_name'             => __('Réalisations'),
        // Les différents libellés de l'interface admin
        'all_items'             => __('Tous nos réalisations'),
        'view_item'             => __('Voir nos réalisations'),
        'add_new_item'          => __('Ajouter une nouvelle réalisation'),
        'add_new'               => __('Ajouter'),
        'edit_item'             => __('Éditer une réalisation'),
        'update_item'           => __('Modifier une réalisation'),
        'search_items'          => __('Rechercher une réalisation'),
        'not_found'             => __('Non trouvé'),
        'not_found_in_trash'    => __('Non trouvé dans la corbeille')
    );
    // On peut définir ici d'autres options pour notre type d'article personnalisé
    $args = array(
        'label'                 => __('Nos réalisations'),
        'descriptions'          => __('Tous sur nos réalisations'),
        'labels'                => $labels,
        'supports'              => array(
                'title',
                'editor',
                'excerpt',
                'author',
                'thumbnail',
                'comments',
                'revisions',
                'custom-fields'
        ),
        'hierarchical'          => false,
        'public'                => true,
        'has_archive'           => true,
        'rewrite'               => array('slug' => 'realisations')
    );
    // On enregistre notre type d'article personnalisé qu'on nomme ici 'realisations' et ses arguments
    register_post_type('realisations', $args);
}

add_action('init', 'agence_realisations_custom_post', 0);




function agence_equipe_custom_post() {
    $labels = array(
        // Le nom au pluriel
        'name'                  => _x('Équipe de Mon Agence', 'Post Type General Name'),
        // Le nom au singulier
        'singular_name'         => _x('Équipe', 'Post Type Singular Name'),
        // Le libellé affiché dans le menu
        'menu_name'             => __('Équipe'),
        // Les différents libellés de l'interface admin
        'all_items'             => __('Tous les membres de l\'équipe'),
        'view_item'             => __('Voir les membres de l\'équipe'),
        'add_new_item'          => __('Ajouter un nouveau membre'),
        'add_new'               => __('Ajouter'),
        'edit_item'             => __('Éditer un membre'),
        'update_item'           => __('Modifier un membre'),
        'search_items'          => __('Rechercher un membre'),
        'not_found'             => __('Non trouvé'),
        'not_found_in_trash'    => __('Non trouvé dans la corbeille')
    );

    $args = array(
        'label'                 => __('Notre équipe'),
        'descriptions'          => __('Toute notre équipe'),
        'labels'                => $labels,
        'supports'              => array(
            'title',
            'editor',
            'excerpt',
            'author',
            'thumbnail',
            'comments',
            'revisions',
            'custom-fields'
        ),
        'hierarchical'          => false,
        'public'                => true,
        'has_archive'           => true,
        'rewrite'               => array('slug' => 'equipe')
    );

    register_post_type('equipe', $args);
}

add_action('init', 'agence_equipe_custom_post', 0);


function agence_services_custom_post() {
    $labels = array(
        // Le nom au pluriel
        'name'                  => _x('Services de Mon Agence', 'Post Type General Name'),
        // Le nom au singulier
        'singular_name'         => _x('Services', 'Post Type Singular Name'),
        // Le libellé affiché dans le menu
        'menu_name'             => __('Services'),
        // Les différents libellés de l'interface admin
        'all_items'             => __('Tous les services'),
        'view_item'             => __('Voir les services'),
        'add_new_item'          => __('Ajouter un nouveau service'),
        'add_new'               => __('Ajouter'),
        'edit_item'             => __('Éditer un service'),
        'update_item'           => __('Modifier un service'),
        'search_items'          => __('Rechercher un service'),
        'not_found'             => __('Non trouvé'),
        'not_found_in_trash'    => __('Non trouvé dans la corbeille')
    );

    $args = array(
        'label'                 => __('Nos services'),
        'descriptions'          => __('Tous nos services'),
        'labels'                => $labels,
        'supports'              => array(
            'title',
            'editor',
            'excerpt',
            'author',
            'thumbnail',
            'comments',
            'revisions',
            'custom-fields'
        ),
        'hierarchical'          => false,
        'public'                => true,
        'has_archive'           => true,
        'rewrite'               => array('slug' => 'services')
    );

    register_post_type('services', $args);
}

add_action('init', 'agence_services_custom_post', 0);

add_theme_support('post_thumbnails');

if (function_exists('add_image_size')) {
    add_image_size('realistion-thumbnail', 640, 288, true);
    add_image_size('realisation-large', 980, 980, true);
    add_image_size('realistion-medium', 850, 372, true);
    add_image_size('realistion-large-mobile', 640, 640, true);
    add_image_size('equipe-thumbnail', 980, 640, true);
    add_image_size('equipe-medium-mobile', 750, 640, true);
    add_image_size('equipe-extra-large', 2000, 3000, true);
    add_image_size('equipe-extra-large-mobile', 750, 1020, true);
    add_image_size('service-large', 980, 780, true);
    add_image_size('header-large', 1660, 1070, true);
    add_image_size('accueil-medium', 1700, 744, true);
    add_image_size('accueil-header', 1660, 1060, true);
    add_image_size('thumbnail-acc-real', 590, 266, true);

}
?>
