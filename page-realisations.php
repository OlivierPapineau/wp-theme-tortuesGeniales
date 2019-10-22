<?php
/* Template name: Réalisations */
get_header();?>

<main>
    <!--<div class="conteneur">-->
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
<!--    </div>-->

    <div class="pageRealisations__conteneur backgroundRouge">
        <div class="conteneur">
        <?php $page = get_post(); ?>
        <h1><?= $page->post_title ?></h1>
        <p><?= $page->post_content ?></p>

            <div class="pageRealisations__realisations backgroundRouge__contenu">

                <?php
                $posts = get_posts(array(
                    'posts_per_page'        => -1,
                    'post_type'             => 'realisations',
                    'post_status'           => 'publish',
                    'orderby'               => 'the_title',
                    'order'                 => 'ABC'
                ));

                if($posts): ?>
                    <?php foreach ($posts as $post): ?>
                        <div class="pageRealisations__blocRealisation">
                            <h3 class="pageRealisations__blocRealisation__titre"><a href="<?= $post->guid;?>"> <?= $post->post_title;?></a></h3>
                            <picture class="pageRealisations__blocRealisation__image">
                                <source media="(min-width: 650px)" srcset="<?php echo substr_replace(get_field("photo_1"), "-640x288",-4, 0); ?>">
                                <source media="(min-width: 465px)" srcset="<?php echo substr_replace(get_field("photo_1"), "-640x288",-4, 0); ?>">
                                <img src="<?php echo substr_replace(get_field("photo_1"), "-640x288",-4, 0); ?>" alt="">
                            </picture>
                            <p class="pageRealisations__blocRealisation__extrait"><?php the_excerpt(); ?></p>

                            <div class="pageRealisations__blocRealisation__lienRealisation">
                                <a href="<?= $post->guid;?>">
                                    En savoir plus... <img src="https://timunix2.cegep-ste-foy.qc.ca/~tortuesgeniales/wp-content/uploads/2019/03/plus.svg" alt="">
                                </a>

                            </div>
                        </div>
                    <?php endforeach; ?>
                <?php endif; ?>
            </div>
        </div>
    </div>
    <div class="pageRealisations__citation">
        <div class="conteneur citation">
            <div class="citationDroite">
                <p class="citationDroite__text">« L'essence d'un projet, c'est l'harmonie parfaite entre l'esthétique, l'utile et le juste. ».
                </p>
                <p class=citationDroite__auteur">- Frank Lloyd Wright</p>
            </div>
        </div>
    </div>

</main>

<?php get_footer(); ?>