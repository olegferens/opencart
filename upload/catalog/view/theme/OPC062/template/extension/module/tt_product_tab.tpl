<div class="ttproduct-main">
<div class="TTProduct-Tab TT-product-carousel products-list">
<div class="box-heading">
<h3><?php echo $heading_title; ?></h3>
</div>
<div id="TTPTab-<?php echo $module; ?>" class="tab-box-heading">
	<ul class="nav nav-tabs">
	<?php if($latest_products){ ?>
	  <li><a href="#tab-latest-<?php echo $module; ?>" data-toggle="tab"><?php echo $tab_latest; ?></a></li>
	<?php } ?>
	<?php if($bestseller_products){ ?>
	  <li><a href="#tab-bestseller-<?php echo $module; ?>" data-toggle="tab"><?php echo $tab_bestseller; ?></a></li>
	<?php } ?>
	<?php if($special_products){ ?>
	  <li><a href="#tab-special-<?php echo $module; ?>" data-toggle="tab"><?php echo $tab_special; ?></a></li>
	<?php } ?>
	<?php if($featured_products){ ?>
	  <li><a href="#tab-featured-<?php echo $module; ?>" data-toggle="tab"><?php echo $tab_featured; ?></a></li>
	<?php } ?>
	</ul>
</div>
<div class="tab-content">

<?php if($latest_products){ ?>
  <div id="tab-latest-<?php echo $module; ?>" class="tab-pane">
	<div class="products-carousel">
	  <?php foreach ($latest_products as $product) { ?>
	  		  <div class="product-layouts">
		  <div class="product-thumb transition">
      <div class="image">
	  	
		 <?php if ($product['thumb_swap']) { ?>
				<a href="<?php echo $product['href']; ?>">
					<img class="image_thumb" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
					<img class="image_thumb_swap" src="<?php echo $product['thumb_swap']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
				</a>

			<?php } else { ?>

				<a href="<?php echo $product['href']; ?>">
					<img class="img-responsive" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
				</a>
			<?php } ?>
        <?php if ($product['special']) { ?>
		  <div class="sale-icon">Sale</div>
		<?php } ?>
	  </div>
	  <div class="thumb-description">
      <div class="caption">
	    
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
		<?php if ($product['rating']) { ?>
		<div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star off fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
		<?php } ?>
        <!--<p class="description"><?php echo $product['description']; ?></p>-->
      
        
     
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
      </div>
        <div class="button-group">
         <button class="btn-cart" title="<?php echo $button_cart; ?>" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i>
		 <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span>
		</button>
        <button class="btn-wishlist" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i>
		<span title="<?php echo $button_wishlist; ?>"><?php echo $button_wishlist; ?></span>
		</button>
		
        <button class="btn-compare" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i>
		<span title="<?php echo $button_compare; ?>"><?php echo $button_compare; ?></span>
		</button>
      </div>
	  </div>
	  </div>
		</div>
	  		
      <?php
		  } // foreach END
		 
	  ?>
	</div>
</div>
<?php } ?>

<?php if($bestseller_products){ ?>
 <div id="tab-bestseller-<?php echo $module; ?>" class="tab-pane">
    <div class="products-carousel">
      <?php foreach ($bestseller_products as $product) { ?>
	  		
      <div class="product-layouts">
          <div class="product-thumb transition">
      <div class="image">
	  	
		 <?php if ($product['thumb_swap']) { ?>
				<a href="<?php echo $product['href']; ?>">
					<img class="image_thumb" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
					<img class="image_thumb_swap" src="<?php echo $product['thumb_swap']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
				</a>

			<?php } else { ?>

				<a href="<?php echo $product['href']; ?>">
					<img class="img-responsive" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
				</a>
			<?php } ?>
        <?php if ($product['special']) { ?>
		  <div class="sale-icon">Sale</div>
		<?php } ?>
	  </div>
	  <div class="thumb-description">
      <div class="caption">
	  
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
		<?php if ($product['rating']) { ?>
		<div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star off fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
		<?php } ?>
        <!--<p class="description"><?php echo $product['description']; ?></p>-->
       
        
       
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
      </div>
        <div class="button-group">
        <button class="btn-cart" title="<?php echo $button_cart; ?>" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');">
		<i class="fa fa-shopping-cart"></i>
		 <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span>
		</button>
        <button class="btn-wishlist" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i>
		<span title="<?php echo $button_wishlist; ?>"><?php echo $button_wishlist; ?></span>
		</button>
		
        <button class="btn-compare" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i>
		<span title="<?php echo $button_compare; ?>"><?php echo $button_compare; ?></span></button>
      </div>
	  </div>
	  </div>
        </div>
	  		
      <?php
		  } // foreach END
		 
	  ?>
    </div>
 </div>
<?php } ?>

<?php if($special_products){ ?>
 <div id="tab-special-<?php echo $module; ?>" class="tab-pane">
    <div class="products-carousel">
      <?php foreach ($special_products as $product) { ?>
	  		
      <div class="product-layouts">
          <div class="product-thumb transition">
      <div class="image">
	  	
		 <?php if ($product['thumb_swap']) { ?>
				<a href="<?php echo $product['href']; ?>">
					<img class="image_thumb" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
					<img class="image_thumb_swap" src="<?php echo $product['thumb_swap']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
				</a>

			<?php } else { ?>

				<a href="<?php echo $product['href']; ?>">
					<img class="img-responsive" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
				</a>
			<?php } ?>
        <?php if ($product['special']) { ?>
		  <div class="sale-icon">Sale</div>
		<?php } ?>
	  </div>
	  <div class="thumb-description">
      <div class="caption">
	    
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
		<?php if ($product['rating']) { ?>
		<div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star off fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
		<?php } ?>
        <!--<p class="description"><?php echo $product['description']; ?></p>-->
        
        
     
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
      </div>
        <div class="button-group">
        <button class="btn-cart" title="<?php echo $button_cart; ?>" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span>
		</button>
        <button class="btn-wishlist"  title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i>
		<span title="<?php echo $button_wishlist; ?>"><?php echo $button_wishlist; ?></span>
		</button>
		
        <button class="btn-compare" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i>
		<span title="<?php echo $button_compare; ?>"><?php echo $button_compare; ?></span></button>
      </div>
	  </div>
	  </div>
        </div>
	  		
      <?php
		  } // foreach END
		 
	  ?>
	  
    </div>
 </div>
<?php } ?>


<?php if($featured_products){ ?>
  <div id="tab-featured-<?php echo $module; ?>" class="tab-pane">
    <div class="products-carousel">
      <?php foreach ($featured_products as $product) { ?>
	  	    <div class="product-layouts">
        <div class="product-thumb transition">
      <div class="image">
		 <?php if ($product['thumb_swap']) { ?>
				<a href="<?php echo $product['href']; ?>">
					<img class="image_thumb" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
					<img class="image_thumb_swap" src="<?php echo $product['thumb_swap']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
				</a>

			<?php } else { ?>

				<a href="<?php echo $product['href']; ?>">
					<img class="img-responsive" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
				</a>
			<?php } ?>
        <?php if ($product['special']) { ?>
		  <div class="sale-icon">Sale</div>
		<?php } ?>
	  </div>
	  <div class="thumb-description">
      <div class="caption">
	     
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
		<?php if ($product['rating']) { ?>
		<div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star off fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
		<?php } ?>
        <!--<p class="description"><?php echo $product['description']; ?></p>-->
        
               
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
		  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
		  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
      </div>
      <div class="button-group">
        <button class="btn-cart" title="<?php echo $button_cart; ?>" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i>
		 <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span>
		</button>
        <button class="btn-wishlist" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i>
		<span title="<?php echo $button_wishlist; ?>"><?php echo $button_wishlist; ?></span>
		</button>
        <button class="btn-compare" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i>
		<span title="<?php echo $button_compare; ?>"><?php echo $button_compare; ?></span>
		</button>
      </div>
	  </div>
	  </div>
      </div>
	  		
      <?php
		  } // foreach END
		 ?>
    </div>
 </div>
<?php } ?>


</div>
</div>
</div>
<script type="text/javascript">
$('.TTProduct-Tab > .tab-box-heading > ul > li:first-child').addClass('active');
$('.TTProduct-Tab > .tab-content > .tab-pane:first-child').addClass('active');
</script>