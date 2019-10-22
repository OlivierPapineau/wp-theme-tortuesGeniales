</div> <!-- Fermeture de la page #contenu -->
<?php $lienRacine = '' . get_site_url() . "/wp-content/themes/lesTortuesGeniales/"; ?>
<footer id="pied-de-page">
    <div class="conteneur logo__pied">
        <a href="https://timunix2.cegep-ste-foy.qc.ca/~tortuesgeniales/">
            <img src="<?php echo $lienRacine . "images/bums_logo.svg" ?>" alt="logo des bums"></a>
    </div>
    <div class="backgroundRouge">
        <div class="backgroundRouge__contenu">
            <div class="conteneur pied pied__backgroundRouge">
                <div class="pied__logo">
                    <a href="https://timunix2.cegep-ste-foy.qc.ca/~tortuesgeniales/">
                        <img src="<?php echo $lienRacine . "images/bums_logo_blanc.svg" ?>" alt="logo des bums"></a>
                </div>
                <div class="pied__section">
                    <h2 class="h3">Adresse</h2>
                    <p>Bums Média
                        <br> Québec
                        <br> 997, 3e avenue
                        <br> Québec (Québec) G1L 2X2
                    </p>
                </div>
                <div class="pied__section">
                    <h2 class="h3">Médias</h2>
                    <ul class="pied__sectionMedias">
                        <li>
                            <a href="http://www.facebook.com">
                                <img src="<?php echo $lienRacine . "images/facebook.svg" ?>" alt="facebook"></a></li>
                        <li>
                            <a href="http://www.instagram.com">
                                <img src="<?php echo $lienRacine . "images/instagram.svg" ?>" alt="instagram"></a>
                        </li>
                        <li>
                            <a href="http://www.twitter.com">
                                <img src="<?php echo $lienRacine . "images/twitter.svg" ?>" alt="twitter">
                            </a>
                        </li>
                        <li>
                            <a href="http://www.youtube.com">
                                <img src="<?php echo $lienRacine . "images/youtube.svg" ?>" alt="youtube">
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="pied__section">
                    <h2 class="h3">Contact</h2>
                    <p>Courriel : quebec@bumsmedia.ca</p>
                    <p>Téléphone : 418 622-6129</p>
                </div>
            </div>
        </div>
    </div>
    <div class="pied__copyrights">
        <p>
            <small>Alexandre Blanchet | Amer Krehic | Olivier Papineau | Simon-Gabriel Côté-Poulin</small>
        </p>
        <p>
            <small><?php bloginfo('name'); ?> | &copy; Tous droits reserves</small>
        </p>
    </div>

</footer>
<?php wp_footer(); ?>
<script>window.jQuery || document.write('<script src="<?php echo $lienRacine; ?>node_modules/jquery/dist/jquery.min.js">\x3C/script>')</script>
<script src="<?php echo $lienRacine; ?>js/menuMobile.js"></script>
<script>
    $('body').addClass('js');
    $(document).ready(function () {
        menuMobile.initialiser();
    });
</script>
</body>
</html>
