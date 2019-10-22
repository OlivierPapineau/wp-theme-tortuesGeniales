<header class="article">
    <?php if(is_single()) { ?>
        <h3><?= $post->post_title; ?></h3>
    <?php } else { ?>
        <h3><a href="<?= $post->guid; ?>"><?= $post->post_title;?></a></h3>
    <?php } ?>
</header>

    <?php if(has_post_thumbnail()) { ?>
        <div class="image-une">
            <?php //affiche le contenu de l'article
            the_post_thumbnail('medium'); ?>
        </div>
    <?php } ?>

    <?php if(has_excerpt() && is_page() || is_home()) { ?>
        <div class="extrait">
            <?= '"' . $post->post_excerpt . '"'; ?>
        </div>
    <?php } else { ?>
        <div>
            <?= $post->post_content; ?>
        </div>
    <?php } ?>

<footer class="article">
    <p class="metadata">Par: <?php the_author(); ?></p>
    <p class="metadata">Publie le: <?php the_date(); ?></p>
</footer>
