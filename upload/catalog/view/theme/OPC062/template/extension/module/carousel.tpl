<div class="brand-carousel">
<div class="container">
<div class="row">
<!--<div class="box-heading"><h3>Our Clients</h3></div>-->
<div id="carousel<?php echo $module; ?>" class="owl-carousel brand-items">
  <?php foreach ($banners as $banner) { ?>
  <div class="item text-center">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?>
  </div>
  <?php } ?>
</div>
</div>
</div>
</div>
<script type="text/javascript"><!--
$('#carousel<?php echo $module; ?>').owlCarousel({
	items: 5,
	autoPlay: 3000,
	itemsDesktop : [1200,5], 
	itemsDesktopSmall : [991,4], 
	itemsTablet: [767,3], 
	itemsMobile : [480,2], 
	navigation: true,
	navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
	pagination: true
});
--></script>