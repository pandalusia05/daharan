<!-- Start Sidebar -->
<?php $this->load->view('widget/categories'); ?>
<!-- End Sidebar -->
<!-- Start Slider -->
<!--<?php $this->load->view('widget/slider'); ?>
<!-- End Slider -->
<div class="span9 popular_products">

 <h4>SELAMAT DATANG DI DELIVERY DAHARAN.COM</h4><br>
<a href="<?php echo base_url(); ?>">
            <img src="<?php echo base_url() ?>public/front/img/daharan.jpg"/>
        </a>
       
 <!--<?php $products = $this->general->getNewProducts(8); ?>

    <?php if ($products): ?>

       <h4>SELAMAT DATANG DI DELIVERY DAHARAN.COM</h4><br>
        <ul class="thumbnails">
            <?php foreach ($products as $product): ?>
                <li class="span2">
                    <div class="thumbnail">

                        <?php
                        $media = $this->general->getSingleMedia('product', $product['id']);
                        ?>
                        <?php if (!empty($media['path'])): ?>
                            <a href="<?php echo base_url() ?>index.php/products/detail/<?php echo $product['permalink'] ?>"><img src="<?php echo base_url(); ?>timthumb.php?src=<?php echo base_url() . $media['path'] ?>&h=275&w=220" alt="" title="" border="0"/></a>
                        <?php else: ?>
                            <a href="<?php echo base_url() ?>index.php/products/detail/<?php echo $product['permalink'] ?>"><img alt="" src="http://placehold.it/220x275"></a>
                        <?php endif; ?>
                        <div class="caption">
                            <a href="<?php echo base_url() ?>index.php/products/detail/<?php echo $product['permalink'] ?>"> <h5><?php echo $product['name']; ?></h5></a>  Price: <?php echo number_format($product['net_price']); ?> USD<br><br>
                        </div>
                    </div>
                </li>
            <?php endforeach; ?>-->

        </ul>
    <?php endif; ?>
</div>