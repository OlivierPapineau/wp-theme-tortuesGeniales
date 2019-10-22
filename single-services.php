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
<main style="max-width: <?php echo $arrWidths[1]; ?>%">
    <!-- Image et slogan d'entête-->

    <div class="conteneur enteteCommun">
        <div class="enteteCommun__image">
            <?php //Affiche le contenu de l'article
            echo get_the_post_thumbnail(54); ?>
        </div>
        <div class="enteteCommun__boiteText">
            <div class="enteteCommun__boiteText--boite">
                <p>Des produits numériques qui sortent de l’ordinaire</p>
            </div>

        </div>


    </div>

    <!-- Contenu d'un service-->
    <div class="backgroundRouge">
        <div class="backgroundRouge__contenu">
            <div class="singleServices conteneur">
                <article class="singleServices__article">
                    <a href="https://timunix2.cegep-ste-foy.qc.ca/~tortuesgeniales/?page_id=54"
                       class="singleServices__article__retour accueilBouton">Retour à la page Services</a>
                    <div class="singleServices__article__contenu">
                        <div class="singleServices__article__contenuTable">
                            <h1><?= get_field('nom_service'); ?></h1>
                            <div class="singleServices__article__imageMobile">
                                <picture class="">
                                    <source media="(min-width: 650px)"
                                            srcset="<?php echo substr_replace(get_field("photo_3"), "", -4, 0); ?>">
                                    <source media="(min-width: 465px)"
                                            srcset="<?php echo substr_replace(get_field("photo_3"), "", -4, 0); ?>">
                                    <img class="singleServices__article__imageMobile--width"
                                         src="<?php echo substr_replace(get_field("photo_3"), "", -4, 0); ?>" alt="">
                                </picture>
                            </div>
                            <?php get_template_part('content', get_post_format()); ?>
                        </div>
                        <div class="singleServices__article__imageTable">
                            <picture class="">
                                <source media="(min-width: 650px)"
                                        srcset="<?php echo substr_replace(get_field("photo_3"), "", -4, 0); ?>">
                                <source media="(min-width: 465px)"
                                        srcset="<?php echo substr_replace(get_field("photo_3"), "", -4, 0); ?>">
                                <img class="singleServices__article__imageTable--width"
                                     src="<?php echo substr_replace(get_field("photo_3"), "", -4, 0); ?>" alt="">
                            </picture>
                        </div>

                </article>
                <div class="singleServices__liens conteneur">
                    <div class="singleServices__liens--suivant">
                        <?php next_post_link('%link', 'Précédent', false, ''); ?>
                          
                    </div>

                    <div class="singleServices__liens--precedent">
                        <?php previous_post_link('%link', 'Suivant', false, ''); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Citation-->
    <div class="conteneur citation">
        <div class="citationGauche">
            <p class="citationGauche__text">« Le design graphique sauvera notre monde…juste après le rock’n’roll ».
            </p>
            <p class=citationGauche__auteur">- David Carson</p>
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