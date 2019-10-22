<?php get_header();
echo '404.php'; ?> <!-- Appel de l'en-tete de la page -->

<?php //Ajout de sidebars si necessaire ?>

<!-- Contenu de la page -->
<main>
    <h2>Erreur 404: Oups! La page demandée n'existe pas!</h2>
    <img src="<?php bloginfo('url') ?>/wp-content/uploads/2019/02/point_exclamation.png" alt="oups">
</main>

<!-- Appel du pied de page -->
<?php get_footer(); ?>
