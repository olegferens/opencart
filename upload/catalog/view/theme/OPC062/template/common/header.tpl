<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]--><head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>

<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<link href='https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700' rel='stylesheet' type='text/css'>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!--<link href="catalog/view/theme/<?php echo $theme_path; ?>/stylesheet/TemplateTrip/bootstrap.min.css" rel="stylesheet" media="screen" />-->
<link href="catalog/view/theme/OPC062/stylesheet/TemplateTrip/bootstrap.min.css" rel="stylesheet" media="screen" />
<link href="catalog/view/javascript/jquery/owl-carousel/owl.carousel.css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/OPC062/stylesheet/stylesheet.css" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/OPC062/stylesheet/TemplateTrip/ttblogstyle.css" rel="stylesheet" type="text/css" />
<?php if($direction=='rtl') { ?>
<link href="catalog/view/theme/OPC062/stylesheet/TemplateTrip/rtl.css" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/OPC062/stylesheet/TemplateTrip/ttblogstyle-rtl.css" rel="stylesheet" type="text/css" />
<?php } ?>
<link href="catalog/view/theme/OPC062/stylesheet/TemplateTrip/lightbox.css" rel="stylesheet" type="text/css" />

<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>


<script src="catalog/view/javascript/common.js" type="text/javascript"></script>

<!-- TemplateTrip custom Theme JS -->
<script src="catalog/view/javascript/TemplateTrip/addonScript.js?v=4" type="text/javascript"></script>
<script src="catalog/view/javascript/TemplateTrip/lightbox-2.6.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/TemplateTrip/waypoints.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>

<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>

<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>

<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>

</head>
<body class="<?php echo $class;?>">
<nav id="top">
	<div class="row">
  	<div class="header-top-left col-sm-6">
		<?php echo $currency; ?>
		<?php echo $language; ?>
		<div class="header-phone pull-left"><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class=""><?php echo $telephone; ?></span></div>
	    <?php if($header_left) { ?>
	  <div class="header-left-cms">
		  <?php echo $header_left; ?>
	  </div>
	  <?php } ?>
	</div>
	<div class="header-top-right col-sm-6">
	    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
      	<li class="ttsearch"><?php echo $search; ?></li>
		<li class="account-nav dropdown header_user_info"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="ttuserheading"><?php echo $text_account; ?></span><i class="fa fa-caret-down"></i></a>
          <ul class="dropdown-menu dropdown-menu-right account-link-toggle">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><i class='fa fa-user'></i> <?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><i class='fa fa-calendar'></i> <?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><i class='fa fa-credit-card'></i> <?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><i class='fa fa-download'></i> <?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><i class='fa fa-sign-out'></i> <?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><i class='fa fa-user'></i> <?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><i class='fa fa-sign-in'></i> <?php echo $text_login; ?></a></li>
			<li class="wishlist-nav"><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class=""><?php echo $text_wishlist; ?></span></a></li>
            <?php } ?>
          </ul>
        </li>
        <li class="ttcart"><?php echo $cart; ?></li>
      </ul>
    </div>
	</div>
	</div>
</nav>
<?php if ($categories) { ?>
<div class="menu-container">
  <div class="container">
  <nav id="menu" class="navbar"> <!-- add class name as 'mega-menu' LIKE class="mega-menu" -->
    <div class="navbar-header collapsed" data-toggle="collapse" data-target=".navbar-ex1-collapse"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
<?php //print_r($categories); ?>
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
			<li class="dropdown"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>

			<div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
				<ul class="list-unstyled childs_1 <?php if($category['column']<=1) echo 'single-dropdown-menu'; else echo 'mega-dropdown-menu'; ?>">

                <?php foreach ($children as $child) { ?>
					<!-- 2 Level Sub Categories START -->
					<?php if ($child['childs']) { ?>
					  <li class="dropdown"><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>

						  <div class="dropdown-menu">
			              <div class="dropdown-inner">
			              <?php foreach (array_chunk($child['childs'], ceil(count($child['childs']) / $child['column'])) as $childs_col) { ?>
							<ul class="list-unstyled childs_2">
							  <?php foreach ($childs_col as $childs_2) { ?>
								<li><a href="<?php echo $childs_2['href']; ?>"><?php echo $childs_2['name']; ?></a></li>
							  <?php } ?>
							</ul>
						  <?php } ?>
						  </div>
						  </div>

					  </li>
					<?php } else { ?>
					  <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
					<?php } ?>
					<!-- 2 Level Sub Categories END -->
                <?php } ?>
              
			    </ul>
              <?php } ?>
            </div>
			</div>

			</li>
        <?php } else { ?>
			<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
		<?php if(isset($blog_enable)){   ?>
				<li> <a href="<?php echo $all_blogs; ?>">
				<span data-hover="<?php echo $text_blog; ?>"><?php echo $text_blog; ?></span>
				</a></li>       
		<?php  } ?>
      </ul>
    </div>
  </nav>
  </div>
</div>

<?php } ?>

<div class="header-content-title">
</div>

