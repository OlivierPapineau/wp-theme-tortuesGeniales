<!DOCTYPE HTML>
<html <?php language_attributes(); ?>>
<?php $lienRacine = '' . get_site_url() . "/wp-content/themes/lesTortuesGeniales/"; ?>
<head>
    <title>
        <?php bloginfo('name'); ?>
        <?php if (is_home() || is_front_page()): ?>
            &mdash; <?php bloginfo('description'); ?>
        <?php else: ?>
            &mdash; <?php wp_title("", true); ?>
        <?php endif; ?>
    </title>
    <meta charset="<?php bloginfo('charset') ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>">
    <?php wp_head(); ?>
</head>
</html>
<body <?php body_class(); ?>>
<a href="#contenu" class="focusable screen-reader-only skipNav">Allez au contenu</a>
<header id="en-tete" class="image navigation">
    <div class="navigation__logo">
        <a href="https://timunix2.cegep-ste-foy.qc.ca/~tortuesgeniales/">
            <img src="<?php echo $lienRacine . "images/bums_logo.svg" ?>" alt="logo des bums"></a>
    </div>
    <?php if (has_nav_menu('principal')): ?>
        <div class="navigation__table">
            <nav id="principal" class="navigation__tablePrincipale">
                <?php wp_nav_menu(array('theme_location' => 'principal')); ?>
            </nav>
            <div class="navigation__tableSecondaire">
                <ul class="navigation__tableSecondaire--langues">
                    <li><a href="#">EN</a></li>
                    <li>|</li>
                    <li class="gras">FR</li>
                </ul>
                <ul class="navigation__tableSecondaire--medias">
                    <li>
                        <a href="http://www.facebook.com">
                            <img src="<?php echo $lienRacine . "images/facebook.svg" ?>" alt="facebook">
                        </a>
                    </li>
                    <li>
                        <a href="http://www.instagram.com">
                            <img src="<?php echo $lienRacine . "images/instagram.svg" ?>" alt="instagram">
                        </a>
                    </li>
                    <li>
                        <a href="http://www.twitter.com">
                            <img src="<?php echo $lienRacine . "images/twitter.svg" ?>" alt="twitter">
                        </a>
                    </li>
                    <li>
                        <a href="http://www.youtube.com">
                            <img src="<?php echo $lienRacine . "images/youtube.svg" ?>" alt="youtube">
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="navigation__mobile">
            <nav id="principal" class="">
                <?php wp_nav_menu(array('theme_location' => 'principal')); ?>
            </nav>
            <div class="navigation__mobileLigne"></div>
            <div class="navigation__mobileSecondaire">
                <ul class="navigation__mobileSecondaire--langues">
                    <li><a href="#">EN</a></li>
                    <li>|</li>
                    <li class="gras">FR</li>
                </ul>
                <ul class="navigation__mobileSecondaire--medias">
                    <li>
                        <a href="http://www.facebook.com">
                            <img src="<?php echo $lienRacine . "images/facebook.svg" ?>" alt="facebook">
                        </a>
                    </li>
                    <li>
                        <a href="http://www.instagram.com">
                            <img src="<?php echo $lienRacine . "images/instagram.svg" ?>" alt="instagram">
                        </a>
                    </li>
                    <li>
                        <a href="http://www.twitter.com">
                            <img src="<?php echo $lienRacine . "images/twitter.svg" ?>" alt="twitter">
                        </a>
                    </li>
                    <li>
                        <a href="http://www.youtube.com">
                            <img src="<?php echo $lienRacine . "images/youtube.svg" ?>" alt="youtube">
                        </a>
                    </li>
                </ul>
            </div>
        </div>

    <?php endif; ?>

    <p class="screen-reader-only">
        <a href="<?php bloginfo('url'); ?>" title="<?php bloginfo('name'); ?>">
            <?php bloginfo('name'); ?>
        </a>
    </p>
    <p class="inline screen-reader-only"><?php bloginfo('description'); ?></p>

</header>
<!-- Menu "secondaire" actif -->
<?php if (has_nav_menu('secondaire')): ?>
    <nav id="secondaire">
        <?php wp_nav_menu(array('theme_location' => 'secondaire')); ?>
    </nav>
<?php endif; ?>
<div id="contenu">