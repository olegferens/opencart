<div class="slideshow-panel">
<div class="ttloading-bg ttloader"></div>
<div id="slideshow<?php echo $module; ?>" class="slideshow-main owl-carousel" style="opacity: 1;">
  <?php foreach ($banners as $banner) { ?>
  <div class="item">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?>
  </div>
  <?php } ?>
</div>
</div>
<script type="text/javascript"><!--
$('#slideshow<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 6000,
	lazyLoad : true,
	singleItem: true,
	navigation: true,
	navigationText: ['<i class="fa fa-arrow-left fa-1x"></i>', '<i class="fa fa-arrow-right fa-1x"></i>'],
	pagination: true
});
--></script>