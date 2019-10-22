<?php
/* Template name: Services */
get_header();
?>

    <main>
        <!--<div class="conteneur">-->
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
        <!--    </div>-->
        <div class="backgroundRouge">
            <div class="backgroundRouge__contenu">
                <div class="conteneur">
                    <?php $page = get_post(); ?>
                    <h1 class="pageService__titre"><?= $page->post_title ?></h1>
                    <p><?= $page->post_content ?></p>

                    <?php
                    $posts = get_posts(array(
                        'posts_per_page' => -1,
                        'post_type' => 'services',
                        'post_status' => 'publish',
                        'orderby' => 'the_title',
                        'order' => 'ABC'
                    )); ?>
                    <div class="services">
                        <?php if ($posts): ?>
                            <?php foreach ($posts as $post): ?>
                                <div class="services__service">


                                    <img class="services__service--image" src="<?= get_field('photo_1'); ?>" alt=""
                                         width="100">

                                    <h2 class="services__service--titre"><a
                                                href="<?= $post->guid; ?>"> <?= $post->post_title; ?></a></h2>

                                    <picture>
                                        <source media="(min-width: 650px)"
                                                srcset="<?php echo substr_replace(get_field("photo1"), "-980x778", -4, 0); ?>">
                                        <source media="(min-width: 465px)"
                                                srcset="<?php echo substr_replace(get_field("photo1"), "-490x389", -4, 0); ?>">
                                        <img src="<?php echo substr_replace(get_field("photo1"), "-490x389", -4, 0); ?>"
                                             alt="">
                                    </picture>
                                    <?php the_post_thumbnail('service-large'); ?>

                                    <div><?php the_excerpt(); ?></div>


                                    <a class="plus" href="<?= $post->guid; ?>"><p class="plus__texte">En savoir plus</p>
                                        <img class="plus__image" src="<?= get_field('photo_2'); ?>" alt=""
                                             width="30"></a>


                                </div>
                            <?php endforeach; ?>
                        <?php endif; ?>
                        <div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="conteneur citation">
            <div class="citationGauche">
                <p class="citationGauche__text">« On voit nos clients comme nos invités à une soirée dont nous sommes
                    les hôtes. C’est notre boulot de rendre chaque aspect de l’expérience client meilleur chaque jour ».
                </p>
                <p class=citationGauche__auteur">- Jeff Bezos</p>
            </div>
        </div>

    </main>

<?php get_footer(); ?>