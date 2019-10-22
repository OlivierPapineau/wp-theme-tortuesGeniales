<!-- Appel de l'en-tete -->
<?php get_header(); ?>

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
    <main style="max-width: <?php echo $arrWidths[1];?>%">

        <div class="conteneur enteteCommun">

            <?php if(has_post_thumbnail()){ ?>
                <div class="enteteCommun__image">
                    <?php //Affiche le contenu de l'article
                    echo get_the_post_thumbnail(2); ?>
                </div>
                <div class="enteteCommun__boiteText">
                    <div class="enteteCommun__boiteText--boite">
                        <p>Des produits numériques qui sortent de l’ordinaire</p>
                    </div>

                </div>
            <?php } ?>

        </div>



        <?php the_post(); ?>
        <div class="singleRealisations__conteneur backgroundRouge">
            <div class="conteneur">
                <div class="singleRealisations__boutonRetour">
                    <a href="https://timunix2.cegep-ste-foy.qc.ca/~tortuesgeniales/?page_id=2" class="singleRealisations__boutonRetour--lienRetour">Retour à la page <strong>réalisations</strong></a>
                </div>
                <article class="singleRealisations__article">
                    <div class="singleRealisations__article__imageArticle">
                        <picture class="">
                            <source media="(min-width: 650px)" srcset="<?php echo substr_replace(get_field("photo_2"), "",-4, 0); ?>">
                            <source media="(min-width: 465px)" srcset="<?php echo substr_replace(get_field("photo_2"), "",-4, 0); ?>">
                            <img src="<?php echo substr_replace(get_field("photo_2"), "",-4, 0); ?>" alt="">
                        </picture>
                    </div>
                    <div class="singleRealisations__article__contenuArticle">
                        <p class="singleRealisations__article__contenuArticle--nomClient"><?= get_field('nom_client'); ?></p>
                        <?php get_template_part('content', get_post_format()); ?>
                        <div class="singleRealisations__article__contenuArticle__liens">
                            <div class="singleRealisations__article__contenuArticle__liens--precedent">
                                <?php next_post_link('%link', 'Précédent', false, ''); ?>
                            </div>
                            <div class="singleRealisations__article__contenuArticle__liens--suivant">
                                <?php previous_post_link('%link', 'Suivant', false, '');?>
                            </div>
                        </div>
                    </div>
                </article>
            </div>
        </div>
        <div class="pageRealisations__citation">
            <div class="conteneur citation">
                <div class="citationDroite">
                    <p class="citationDroite__text">« La perfection est atteinte, non pas lorsqu'il n'y a plus rien à ajouter, mais lorsqu'il n'y a plus rien à retirer. ».
                    </p>
                    <p class=citationDroite__auteur">- Antoine de St-Exupéry</p>
                </div>
            </div>
        </div>
    </main>

<?php
//Ajoute la sidebar droite si besoin
if(is_active_sidebar('droite')) { ?>
    <aside id="droite" style="max-width: <?php echo $arrWidths[2];?>%">
        <?php get_sidebar('droite');?>
    </aside>
<?php } ?>
    <!-- Appel du pied de page -->
<?php get_footer(); ?>
