<?php
	include "mysql_con.php";
    	//include_once("videos-get.php");
    	//$v = channelVideos();
?>

<!doctype html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="index, follow, noarchive">
<meta name="keywords" content="game, shark, reviews, gsr, games, review">
<meta name="google-site-verification" content="VZ-6pRoIF35Horq1cgUd-hlE9mAHh8UIqrdZkebtzfw" />

<title>Game Shark Reviews | GSR | Homepage</title>

<meta name="description" content="Welcome to GSR - Game Shark Reviews - one of the world's best online gaming hubs!">

<?php 
	include "links.php"; 
?>
<script type="text/javascript">
  <!--
  if (screen.width <= 800) {
    window.location = "http://m.gamesharkreviews.com/";
  }
  //-->
</script>
<script type="application/ld+json">
{
  "@context": "http://schema.org",
  "@type": "WebSite",
  "url": "http://gamesharkreviews.com/",
  "potentialAction": {
    "@type": "SearchAction",
    "target": "http://gamesharkreviews.com/search.php?q={search_term_string}",
    "query-input": "required name=search_term_string"
  }
}
</script>
<script>
	
	$(document).ready(function($) {
		$("#video-list").load("videoStatic.html");
		$("#asideElement").load("asideStatic.html");
		var slider = $('#featured_articles_container').unslider({autoplay: true, animation: "horizontal", delay: 4500, speed: 1000,infinite: true});
	});
</script>
</head>

<body>

	<?php include "header.php"; ?>

	<div id="pressi">
		<div id="pressi_data"></div>
        	<div id="pressi-loader"></div>
        	<div id="pagination"></div>
    	</div>

			


	<div id="page" class="container_24">

		<article class="blog">
			<section class="grid_18">

				<h1>Latest Articles</h1>

				<ul class="article_list">
					<?php
						$art_row = array();
						
					$review_link_list = mysqli_query($con, "SELECT * FROM tbl_review WHERE alpha_approved = 'true' ORDER BY id DESC LIMIT 4");
					while ($rvw_row = mysqli_fetch_assoc($review_link_list)) {
						array_push($art_row, $rvw_row);
					}
					$opinion_link_list = mysqli_query($con, "SELECT * FROM tbl_opinion WHERE alpha_approved = 'true' ORDER BY id DESC LIMIT 4");
					while ($op_row = mysqli_fetch_assoc($opinion_link_list)) {
						array_push($art_row, $op_row);
					}
					$news_link_list = mysqli_query($con, "SELECT * FROM tbl_news WHERE alpha_approved = 'true' ORDER BY id DESC LIMIT 4");
					while ($op_row = mysqli_fetch_assoc($news_link_list)) {
						array_push($art_row, $op_row);
					}
					$guide_link_list = mysqli_query($con, "SELECT * FROM tbl_guide WHERE alpha_approved = 'true' ORDER BY id DESC LIMIT 4");
					while ($gd_row = mysqli_fetch_assoc($guide_link_list)) {
						array_push($art_row, $gd_row);
					}
					  
					usort($art_row, 'date_compare');
					$art_row = array_slice($art_row, 0, 4);
						
					foreach ($art_row as $article_row) {
						$art_name	= $article_row['title'];
						$art_game	= $article_row['gamename'];
						$art_desc	= $article_row['summary'];
						$art_rate	= $article_row['main_rating'];
						$art_file	= urlencode($article_row['a_image']);
						$art_auth	= $article_row['author'];
						$art_plat	= $article_row['platform'];
						$art_type	= $article_row['article_type'];
						if($art_type=="Guide"){
							$art_file = urlencode(unserialize($article_row['images'])[0]);
						}
						$art_date	= strtotime($article_row['createdate']);
						$art_rdat	= strtotime($article_row['release_date']);
						if($art_type=="Review"){
						$art_url	= "review.php?t=" . urlencode(str_replace(" ", "_", $art_name)) . "&g=" . urlencode(str_replace(" ", "_", $art_game));
						}
						if($art_type=="Opinion"){
							$art_url	= "opinion.php?t=" . urlencode(str_replace(" ", "_", $art_name));
						}
						if($art_type=="News"){
							$art_url	= "news.php?t=" . urlencode(str_replace(" ", "_", $art_name));
						}
						if($art_type=="Guide"){
							$art_url	= "guide.php?t=" . urlencode(str_replace(" ", "_", $art_name));
						}
					?>

<li><a href="<?php echo $art_url; ?>" class="article_item" data-article-image="<?php echo $art_file; ?>" data-article-type="<?php echo strtolower($art_type); ?>">
					<h5><?php echo $art_name; ?></h5>
					<p><?php echo $art_desc; ?></p>
					<p class="game_details"><?php echo $art_auth; ?><span> - <?php echo date("j F Y", $art_date); ?></span></p>
					<div id="game_display">
						<div id="game_info">
							<span id="game_rating"><?php echo $art_rate; ?></span>
						</div>
					</div>
					<div id="game_type">
						<span class="game_type"><?php echo $art_type; ?></span>
					</div>
					</a></li>

					<?php } ?>
	  				<li class="review_link"><a href="articles.php" class="full grid_4">SEE MORE</a></li>
				</ul>

                		<h2>Latest Videos</h2>
		                <ul id="video-list">
                    			<li class="video_link"><a href="videos.php" class="full grid_4">SEE MORE</a></li>
                		</ul>
				
			</section>

			<aside id="asideElement" class="articles grid_6 tall_9">
			</aside>
			
			

			<section class="grid_24">
				<h2>Highest Rated of <?php echo date("Y"); ?></h2>
				<div id="owl-demo" class="owl-carousel owl-theme">

					<?php
						$review_block_list = mysqli_query($con, "SELECT * FROM tbl_review WHERE main_rating >= '8' AND year = '" . date("Y") . "' AND alpha_approved = 'true' ORDER BY main_rating DESC LIMIT 8");
						if(mysqli_num_rows($review_block_list)<1){
						$review_block_list = mysqli_query($con, "SELECT * FROM tbl_review WHERE main_rating >= '8' AND year = '" . (date("Y")-1) . "' AND alpha_approved = 'true' ORDER BY main_rating DESC LIMIT 8");
						}
						while ($block = mysqli_fetch_assoc($review_block_list)) {
							$blk_name	= $block['title'];
							$blk_game	= $block['gamename'];
							$blk_file	= urlencode($block['a_image']);
							$blk_auth	= $block['author'];
							$blk_rate	= $block['main_rating'];
							$blk_type	= $block['article_type'];
							$blk_url	= "review.php?t=" . urlencode(str_replace(" ", "_", $blk_name)) . "&g=" . urlencode(str_replace(" ", "_", $blk_game));

						?>

						<div class="item" data-block-image="<?php echo $blk_file; ?>" data-block-type="<?php echo strtolower($blk_type); ?>"><a href="<?php echo $blk_url; ?>" class="game_block">
							<span id="block_type"><?php echo $blk_type; ?></span><br>
							<span id="block_name"><?php echo $blk_name; ?></span><br>
							<span id="block_auth"><?php echo $blk_auth; ?></span><br>
							<span id="block_rate"><?php echo $blk_rate; ?></span>
	    				</a></div>

	  				<?php } ?>
				</div>
			</section>
		</article>

	</div>

	<?php include "footer.html"; ?>

	<script type="text/javascript">




		$(function() {

			$(".article_item").each(function() {
				$(this).children("#game_display").css("background", "url(imgs/"+$(this).attr("data-article-type")+"/" + $(this).attr("data-article-image") + ") no-repeat top right");
				$(this).children("#game_type").css("background", "url(imgs/"+$(this).attr("data-article-type")+"/" + $(this).attr("data-article-image") + ") no-repeat top left");
				$(this).children(".game_block").css("background", "url(imgs/"+$(this).attr("data-article-type")+"/" + $(this).attr("data-article-image") + ") no-repeat center center");
			});

			$(".item").each(function() {
				$(this).children(".game_block").css("background", "url(imgs/"+$(this).attr("data-block-type")+"/" + $(this).attr("data-block-image") + ") no-repeat center center");
			});
		});
	</script>
<!--<script type="text/javascript"> var infolinks_pid = 2939140; var infolinks_wsid = 0; </script> <script type="text/javascript" src="//resources.infolinks.com/js/infolinks_main.js"></script>-->
</body>
</html>
