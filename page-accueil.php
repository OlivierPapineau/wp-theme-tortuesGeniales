<?php get_header(); ?>
<?php
//Gestion des largeurs des sidebars et du contenu
switch (true) {
    case is_active_sidebar('gauche') && is_active_sidebar('droite'):
        //Si les deux SB sont utilisees
        $arrWidths = array('25', '50', '25');
        break;
    case is_active_sidebar('gauche') && is_active_sidebar('droite') == false:
        //Si la sidebar gauche seulement
        $arrWidths = array('25', '75', '0');
        break;
    case is_active_sidebar('gauche') == false && is_active_sidebar('droite'):
        //Si la sidebar droite seulment
        $arrWidths = array('0', '75', '25');
        break;
    default:
        //Aucune sidebar
        $arrWidths = array('0', '100', '0');
}
?>
<?php
//Ajoute la sidebar gauche si besoin
if (is_active_sidebar('gauche')) { ?>
    <aside id="gauche" style="max-width: <?php echo $arrWidths[0]; ?>%">
        <?php get_sidebar('gauche'); ?>
    </aside>
<?php } ?>

<main style="max-width: <?php echo $arrWidths[1] ?>%" class="accueil">
    <?php the_post(); ?>
    <div class="en-tete-page">
        <h1 class="screen-reader-only"><?php the_title(); ?></h1>
    </div>
    <div class="conteneur enteteCommun">
        <div class="enteteCommun__image">

            <picture>
                <source media="(min-width: 650px)" srcset="<?php echo get_the_post_thumbnail_url(19); ?>">
                <source media="(min-width: 400px)" srcset="<?php echo get_the_post_thumbnail_url(19); ?>">
                <img src="<?php echo substr_replace(get_field("header-mobile"), "-768x1044", -4, 0) ?>" alt="header">
            </picture>

        </div>
        <div class="enteteCommun__boiteText">
            <div class="enteteCommun__boiteText--boite">
                <p><?php bloginfo('description'); ?></p>
            </div>
        </div>
    </div>
    <div class="backgroundRouge">
        <div class="backgroundRouge__contenu">
            <h2 class="accueilNouvelles__titre h2">Nouvelles</h2>
            <div class="conteneur derniers-articles accueilNouvelles">
                <?php wp_reset_postdata();
                query_posts("post_per_page=3");

                //si la page reçoit des articles
                if (have_posts()) {
                    //tant qu'il y a des articles à afficher
                    while (have_posts()) {
                        //passer à l'article suivant
                        the_post(); ?>
                        <article class="accueilNouvelles__nouvelle">
                            <h3 class="h4"><a href="<?php the_permalink() ?>"><?php the_title(); ?></a></h3>
                            <div class="accueilNouvelles__nouvelleImage">
                                <picture>
                                    <source media="(min-width: 601px)" srcset="<?php the_post_thumbnail_url('medium'); ?>">
                                    <source media="(max-width: 600px)" srcset="<?php the_post_thumbnail_url('full'); ?>">
                                    <img src="<?php the_post_thumbnail_url('medium'); ?>" alt="header">
                                </picture>

                            </div>
                            <div class="accueilNouvelles__nouvelleDate">
                                <?php the_date(); ?>
                            </div>
                            <div class="accueilNouvelles__nouvelleExtrait">
                                <p><?php the_excerpt(); ?></p>
                            </div>
                            <div class="accueilNouvelles__nouvelleBouton">
                                <a href="<?php the_permalink() ?>" class="accueilBouton">Lire la suite</a>
                            </div>
                        </article>
                    <?php };
                }; ?>
            </div>
        </div>
    </div>
    <div class="conteneur citation">
        <div class="citationDroite">
            <p class="citationDroite__text">« Il y a trois réponses possibles à une pièce de design – oui, non, et WOW!
                Wow est la réaction que vous devez rechercher ».
            </p>
            <p class=citationDroite__auteur">- Milton Glaser</p>
        </div>
    </div>
    <div class="accueilRealisations__background">
        <div class="accueilRealisations">
            <div class="accueilRealisations__titre"><h2 class="h2">Réalisations</h2></div>
            <div class="conteneur accueilRealisations_box">
                <div class="accueilRealisations__boiteImage">
                    <div class="accueilRealisations__boiteImage--image">
                        <picture>
                            <source media="(min-width: 601px)" srcset="<?php echo get_the_post_thumbnail_url(2); ?>">
                            <source media="(max-width: 600px)" srcset="<?php echo get_the_post_thumbnail_url(2); ?>">
                            <img src="<?php echo get_the_post_thumbnail_url(2); ?>" alt="header">
                        </picture>
                    </div>
                </div>
                <div class="conteneur accueilRealisations__boiteText">
                    <div class="accueilRealisations__boiteText--boite">
                        <div class="accueilRealisations__boiteText--titre">
                            <h3><a href="<?php echo get_permalink(65) ?>"><?php echo get_the_title(65); ?></a></h3>
                        </div>
                        <div class="accueilRealisations__boiteText--client">
                            <?php echo get_field('nom_client', 65); ?>
                        </div>
                        <div class="accueilRealisations__boiteText--bouton">
                            <a href="<?php echo get_permalink(65) ?>" class="accueilBouton">En savoir plus</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="accueilRealisations__lien"><a href="<?php the_permalink(2); ?>">Voir tous les réalisations</a>
            </div>
        </div>
    </div>
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

<?php get_footer(); ?>
