<div class="row">
    <div class="span4 logo">
        <a href="<?php echo base_url(); ?>">
            <img src="<?php echo base_url() ?>public/front/img/logo.jpg"/>
        </a>
    </div>
    <div class="span8">
        <div class="row">
            <div class="span1">&nbsp;</div>
            <div class="span2">
                <!--<h4>Currency</h4>
                <a href="#">USD</a>-->
               
            </div>
           <div class="span2">
                <a href="<?php echo site_url('carts'); ?>"><h4>Keranjang (<?php echo $this->cart->total_items() ?>)</h4></a> 
                <a href="<?php echo site_url('carts'); ?>"> Rp <?php echo number_format($this->cart->total())?></a>
            </div>
            <div class="span3 customer_service">
                <h4>Free Shipping Promo</h4>
                <h4><small>Customer service : 0254325770</small></h4>

            </div>
            
        </div>
        <br/>
        <div class="row">
            <div class="link pull-right">
                <?php $this->load->view('widget/user_menu'); ?>
            </div>
        </div>
    </div>
</div>