<?php
    include_once('includes/db.php');
?>
<div class="title">
        <p>Movies</p>
        <span>Movies move us like nothing else can, whether they’re scary, funny,<br>
        dramatic, romantic or anywhere in-between. So many titles, so much to<br> experience.
        </span>
    </div>
    <div id="movie-list">
         <?php 
                $sqlquery = "SELECT * FROM movies";
                $result = mysqli_query($conn,$sqlquery);
                while ($row = mysqli_fetch_assoc($result)) {
            ?>
        <div class="movie-card">
            <img src="assets/images/movie_posters/<?php echo $row['movieid']; ?>.jpg" class="poster-img" />
            <center><button id="watch">Watch</button></center>
            <div class="info">
                <h2><?php echo $row['title']; ?></h2>
                <div class="other-details">
                    <p><span>Industry : </span> <?php echo $row['industry']; ?></p>
                    <p><span>Release Year :</span> <?php echo $row['release_year']; ?></p>
                    <p><span>Rating :</span> <?php echo $row['rating']; ?>/10</p>
                </div>
            </div>
            
        </div>
        <?php }?>
    </div>
