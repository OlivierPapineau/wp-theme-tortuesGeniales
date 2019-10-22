<?php get_header();
echo 'index.php'; ?> <!-- Appel a l'en-tete de la page -->

<?php
//Gestion des largeurs des sidebars et du contenu
switch (true) {
    case is_active_sidebar('gauche') && is_active_sidebar('droite'):
        //Si les deux SB sont utilisees
        $arrWidths = ['25','50', '25'];
        break;
    case is_active_sidebar('gauche') && is_active_sidebar('droite') == false:
        //Si la sidebar gauche seulement
        $arrWidths = ['25', '75', '0'];
        break;
    case is_active_sidebar('gauche') == false && is_active_sidebar('droite'):
        //Si la sidebar droite seulment
        $arrWidths = ['0', '75', '25'];
        break;
    default:
        //Aucune sidebar
        $arrWidths = ['0', '100', '0'];
}
?>
<?php
//Ajoute la sidebar gauche si besoin
if(is_active_sidebar('gauche')) { ?>
    <aside id="gauche" style="max-width: <?php echo $arrWidths[0];?>%">
        <?php get_sidebar('gauche');?>
    </aside>
<?php } ?>
<!-- Corps de la page -->
<main id="articles" style="max-width: <?php echo $arrWidths[1];?>%">
    <?php
    //Si la page recoit des articles
    if(have_posts()){
    //Tant qu'il y a des articles a afficher
        while(have_posts()){
            //Passer a l'article suivant
            the_post(); ?>
            <article>
                <header class="titre-article">
                    <h2>
                        <?php //Affiche le lien et le titre de l'article ?>
                        <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                    </h2>
                </header>

                <?php if(has_post_thumbnail()){ ?>
                    <div class="image-une">
                        <?php //Affiche le contenu de l'article
                        the_post_thumbnail('thumbnail'); ?>
                    </div>
                <?php } ?>

                <?php //Affiche le contenu de l'article
                the_content();
                ?>
            </article>
        <?php };
    };?>
</main>
<?php
//Ajoute la sidebar droite si besoin
if(is_active_sidebar('droite')) { ?>
    <aside id="droite" style="max-width: <?php echo $arrWidths[2];?>%">
        <?php get_sidebar('droite');?>
    </aside>
<?php } ?>
<!-- Appel au pied de page -->
<?php get_footer(); ?>

