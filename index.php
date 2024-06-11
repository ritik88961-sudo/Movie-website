<?php
    // Include the header template
    if (!@include_once('./views/templates/header.php')) {
        echo "Error including header.php";
    }
?>
<main>
    <?php
        // Include the main movie content
        if (!@include_once('./views/movie.php')) {
            echo "Error including movie.php";
        }
    ?>
</main>
<?php
    // Include the footer template
    if (!@include_once('./views/templates/footer.php')) {
        echo "Error including footer.php";
    }
?>
