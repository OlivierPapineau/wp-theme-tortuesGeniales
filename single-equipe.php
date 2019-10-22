<!-- Appel de l'en-tete -->
<?php get_header(); ?>

<?php
//Gestion des largeurs des sidebars et du contenu
switch (true) {
    case is_active_sidebar('gauche') && is_active_sidebar('droite'):
        //Si les deux SB sont utilisees
        $arrWidths = ['25', '50', '25'];
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
if (is_active_sidebar('gauche')) { ?>
    <aside id="gauche" style="max-width: <?php echo $arrWidths[0]; ?>%">
        <?php get_sidebar('gauche'); ?>
    </aside>
<?php } ?>
<main class="singleEquipe" style="max-width: <?php echo $arrWidths[1]; ?>%">
    <div class="conteneur enteteCommun">


        <div class="enteteCommun__image">
            <?php //Affiche le contenu de l'article
            echo get_the_post_thumbnail(8); ?>
        </div>
        <div class="enteteCommun__boiteText">
            <div class="enteteCommun__boiteText--boite">
                <p>Des BUMS au coeur tendre</p>
            </div>

        </div>


    </div>

    <div class="backgroundRouge">
        <div class="backgroundRouge__contenu conteneur">

            <div class="singleEquipe__membre">
                <?php the_post(); ?>
                <article class="singleEquipe__membre__article">
                    <picture class="singleEquipe__membre__article__photo">
                        <source media="(min-width: 650px)"
                                srcset="<?php echo substr_replace(get_field("photo_3"), "", -4, 0); ?>">
                        <source media="(min-width: 465px)"
                                srcset="<?php echo substr_replace(get_field("photo_3"), "", -4, 0); ?>">

                        <img src="<?php echo substr_replace(get_field("photo_3"), "", -4, 0); ?>" alt="">
                    </picture>

                </article>
                <div class="singleEquipe__membre__bio">
                    <p><?php get_template_part('content', get_post_format()); ?></p>
                    <div class="singleEquipe__membre__bio__liens">
                        <div class="singleEquipe__membre__bio__liens__suivant">
                            <?php next_post_link('&laquo; %link', '%title', false, ''); ?>
                        </div>
                        <div class="singleEquipe__membre__bio__liens__precedent">
                            <?php previous_post_link('%link &raquo', '%title', false, ''); ?>
                        </div>

                        <a href="https://timunix2.cegep-ste-foy.qc.ca/~tortuesgeniales/?page_id=8"
                           class="singleEquipe__membre__bio__liens__retour">Retour à la page de l'équipe</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="pageRealisations__citation">
        <div class="conteneur citation">
            <div class="citationDroite">
                <p class="citationDroite__text">« Celui qui excelle à résoudre les difficultés les résout avant qu'elles ne surgissent. Celui qui excelle à vaincre ses ennemis triomphe avant que les menaces de ceux-ci ne se concrétisent. ».
                </p>
                <p class=citationDroite__auteur">- Sun Tzu</p>
            </div>
        </div>
    </div>
</main>

<?php
//Ajoute la sidebar droite si besoin
if (is_active_sidebar('droite')) { ?>
    <aside id="droite" style="max-width: <?php echo $arrWidths[2]; ?>%">
        <?php get_sidebar('droite'); ?>
    </aside>
<?php } ?>
<!-- Appel du pied de page -->
<?php get_footer(); ?>