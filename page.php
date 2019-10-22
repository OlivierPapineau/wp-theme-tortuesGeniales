<?php get_header();
echo 'page.php';?>
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

<main style="max-width: <?php echo $arrWidths[1]?>%">
    <?php the_post(); ?>
    <div class="en-tete-page">
        <h1><?php the_title(); ?></h1>
    </div>
    <?php the_content(); ?>
</main>

<?php
//Ajoute la sidebar droite si besoin
if(is_active_sidebar('droite')) { ?>
    <aside id="droite" style="max-width: <?php echo $arrWidths[2];?>%">
        <?php get_sidebar('droite');?>
    </aside>
<?php } ?>

<?php get_footer(); ?>
