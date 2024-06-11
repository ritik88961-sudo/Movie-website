<?php
    include '../includes/db.php';
    if (isset($_POST['data']) && !empty($_POST['data'])) {
        $searchData = mysqli_real_escape_string($conn, $_POST['data']);
        $sqlquery = "SELECT * FROM movies WHERE title LIKE '%$searchData%' || industry LIKE '%$searchData%'";
        $result = mysqli_query($conn, $sqlquery);
    } else {
        $sqlquery = "SELECT * FROM movies";
        $result = mysqli_query($conn, $sqlquery);
    }
    if(mysqli_fetch_assoc($result)>0){
        while ($row = mysqli_fetch_assoc($result)) {
            echo '<div class="movie-card">';
            echo '<img src="assets/images/movie_posters/' . $row['movieid'] . '.jpg" class="poster-img" />';
            echo '<center><button id="movie-detail-btn">Watch</button></center>';
            echo '<div class="info">';
            echo '<h2>' . $row['title'] . '</h2>';
            echo '<p><span>Industry : </span> ' . $row['industry'] . '</p>';
            echo '<p><span>Release Year :</span> ' . $row['release_year'] . '</p>';
            echo '<p><span>Rating :</span> ' . $row['rating'] . '/10</p>';
            echo '</div>';
            echo '</div>';
        }
    }
    else{
        echo "<h1 style='color:red;'>Not Found</h1>";
    }
    ?>
