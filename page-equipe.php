<?php
/* Template name: Équipe */
get_header();
 ?>

<main class="pageEquipe">

    <div class="conteneur enteteCommun">

        <?php if (has_post_thumbnail()) { ?>
            <div class="enteteCommun__image">
                <?php //Affiche le contenu de l'article
                echo get_the_post_thumbnail(8); ?>
            </div>
            <div class="enteteCommun__boiteText">
                <div class="enteteCommun__boiteText--boite">
                    <p>Des BUMS au coeur tendre</p>
                </div>

            </div>
        <?php } ?>

    </div>
    <?php $page = get_post(); ?>
    <h1 class="h1"><?= $page->post_title ?></h1>
    <p><?= $page->post_content ?></p>
    <div class="backgroundRouge">
        <div class="backgroundRouge__contenu conteneur">
            <div class="pageEquipe__mem">

                <?php
                $posts = get_posts(array(
                    'posts_per_page' => -1,
                    'post_type' => 'equipe',
                    'post_status' => 'publish',
                    'orderby' => 'the_title',
                    'order' => 'ABC'
                ));

                if ($posts): ?>
                    <?php foreach ($posts as $post): ?>

                        <div class="pageEquipe__membre">
                            <h2 class="pageEquipe__membre__titre"><a href="<?= $post->guid; ?>"> <?= $post->post_title; ?>
                                    <picture class="pageEquipe__membre__titre__photo__1">
                                        <source media="(min-width: 650px)"
                                                srcset="<?php echo substr_replace(get_field("photo_1"), "-980x640", -4, 0); ?>">
                                        <!--                    <source media="(min-width: 465px)" srcset="-->
                                        <?php //echo get_the_post_thumbnail_url($post,"equipe-thumbnail");?><!--">-->
                                        <source media="(min-width: 465px)"
                                                srcset="<?php echo substr_replace(get_field("photo_1"), "-750x640", -4, 0); ?>">
                                        <img src="<?php echo substr_replace(get_field("photo_1"), "-750x640", -4, 0); ?>"
                                             alt="">
                                        <!--                    <img src="-->
                                        <?php //echo substr_replace(get_field("photo_2"),"-490x320",-4,0);?><!--" alt="">-->
                                    </picture>

                                    <picture class="pageEquipe__membre__titre__photo__2">
                                        <source media="(min-width: 650px)"
                                                srcset="<?php echo substr_replace(get_field("photo_2"), "-980x640", -4, 0); ?>">
                                        <source media="(min-width: 465px)"
                                                srcset="<?php echo substr_replace(get_field("photo_2"), "-750x640", -4, 0); ?>">
                                        <img src="<?php echo substr_replace(get_field("photo_2"), "-750x640", -4, 0); ?>"
                                             alt="">
                                    </picture>

                                    <?php the_post_thumbnail('equipe-thumbnail size'); ?>

                                </a></h2>

                            <?php the_post_thumbnail('equipe-membre'); ?>

                            <p class="pageEquipe__membre__nomMembre"><?php get_field('nom_membre'); ?></p>

                            <!--                        <p class="pageEquipe__membre__extrait">-->
                            <?php //the_excerpt(); ?><!--</p>-->

                            <p class="pageEquipe__contentMembre"><?php $post->post_content ?></p>

                        </div>


                    <?php endforeach; ?>
                <?php endif; ?>
            </div>
        </div>
    </div>
    <div class="pageRealisations__citation">
        <div class="conteneur citation">
            <div class="citationDroite">
                <p class="citationDroite__text">« Quand on vous demande si vous êtes capable de faire un travail répondez : "bien sûr, je peux !" Puis débrouillez-vous pour y arriver. ».
                </p>
                <p class=citationDroite__auteur">- Théodore Roosevelt</p>
            </div>
        </div>
    </div>
</main>

<?php get_footer(); ?>
