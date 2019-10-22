<?php get_header(); ?>
<?php
//Gestion des largeurs des sidebar et du contenu
switch(true){
    case is_active_sidebar('gauche') && is_active_sidebar('droite'):
        //si les deux sidebars sont utilisées
        $arrWidths=["25","50","25"];
        break;
    case is_active_sidebar('gauche') && is_active_sidebar('droite')==false:
        //si la sidebar gauche seulement
        $arrWidths=["25","75","0"];
        break;
    case is_active_sidebar('gauche')==false && is_active_sidebar('droite'):
        //si la sidebar gauche seulement
        $arrWidths=["0","75","25"];
        break;
    default:
        //aucune sidebar
        $arrWidths=["0","100","0"];
} ?>
<?php
//Ajoute la sidebar gauche si besoin
if ( is_active_sidebar('gauche')){ ?>
    <aside id="gauche" style="max-width: <?php echo $arrWidths[0]; ?>%">
        <?php get_sidebar('gauche'); ?>
    </aside>
<?php } ?>
<main style="max-width: <?php echo $arrWidths[1]; ?>%" >
    <div class="conteneur">
        <?php the_post(); ?>
        <div id="article-seul">
            <div class="conteneur enteteCommun">
                <div class="enteteCommun__image">

                    <picture>
                        <source media="(min-width: 650px)" srcset="<?php echo get_the_post_thumbnail_url(19); ?>">
                        <source media="(min-width: 400px)" srcset="<?php echo get_the_post_thumbnail_url(19); ?>">
                        <img src="<?php echo wp_get_attachment_image_url("342"); ?>" alt="header">
                    </picture>

                </div>
                <div class="enteteCommun__boiteText">
                    <div class="enteteCommun__boiteText--boite">
                        <p><?php bloginfo('description'); ?></p>
                    </div>
                </div>
            </div>
            <h2><?php the_title(); ?></h2>
            <?php the_content(); ?>
        </div>
    </div>
</main>
<?php if ( is_active_sidebar('droite')){ ?>
    <aside id="droite" style="max-width: <?php echo $arrWidths[2]; ?>%">
        <?php get_sidebar('droite'); ?>
    </aside>
<?php } ?>
<?php get_footer(); ?>
