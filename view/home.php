<?php
include_once('./model/product.classes.php');
include_once('./model/slider.classes.php');
$Product = new Product();
$Slider = new Slider();
?>
<div class="slider">
    <?php
        $sliderList = $Slider->getSliders();
        foreach ($sliderList as $row_slider) {
            $slider_link = !empty($row_slider['slider_link']) ? $row_slider['slider_link'] : "#outstanding-product";
            $slider_img = !empty($row_slider['slider_img']) ? htmlspecialchars($row_slider['slider_img']) : "./assets/images/default-slider.png"; // Ảnh mặc định nếu rỗng
        ?>
            <div class="slider-item">
                <a href="<?php echo htmlspecialchars($slider_link); ?>">
                    <img src="<?php echo $slider_img; ?>" alt="slider" class="slider-image">
                </a>
            </div>
    <?php }?>
</div>

<div class="text">
    <p class="title">IOT shop</p>
    <p class="description">Chúng tôi là cửa hàng chuyên cung cấp các linh kiện điện tử chất lượng cao và thiết bị IoT tiên tiến, đáp ứng mọi nhu cầu của bạn từ các dự án nhỏ đến ứng dụng công nghiệp, mang lại giải pháp tối ưu cho sự sáng tạo và phát triển công nghệ.</p>
    <a href="./index.php?quanly=cuahang" class="btn-shopping">MUA NGAY</a>
</div>

<div class="main">
    <div class="category-container">
        <div class="featured-container">
            <div class="container">
                <h2 class="title" id="outstanding-product">Sản phẩm nổi bật</h2>
                <div class="product-list">
                    <?php
                        $productList = $Product->getFeaturedProducts(10);  
                        foreach($productList as $item) {                       
                    ?>
                        <a href="index.php?quanly=chitiet&id=<?php echo $item['id_product'] ?>" class="product-item">
                            <div class="product-img">
                                <img src="<?php echo $item['img_product'] ?>" alt="">
                            </div>
                            <div class="product-info">
                                <p class="product-name"><?php echo $item['title_product'] ?></p>
                                <p class="product-price"><?php echo number_format($item['detail_price'], 0, '', '.') ?> đ</p>
                                <button class="btn-addtocart">
                                    Mua Ngay
                                    <i class="fa-solid fa-cart-shopping"></i>
                                </button>
                            </div>
                        </a>
                    <?php
                    }
                    ?>
                </div>
            </div>
        </div>
        <div class="featured-container">
            <div class="container">
                <h2 class="title">Sản phẩm bán chạy</h2>
                <div class="product-list">
                    <?php
                        $productList = $Product->getBestSellerProducts(10);
                        foreach($productList as $item) {                       
                    ?>
                        <a href="index.php?quanly=chitiet&id=<?php echo $item['id_product'] ?>" class="product-item">
                            <div class="product-img">
                                <img src="<?php echo $item['img_product'] ?>" alt="">
                            </div>
                            <div class="product-info">
                                <p class="product-name"><?php echo $item['title_product'] ?></p>
                                <p class="product-price"><?php echo number_format($item['detail_price'], 0, '', '.') ?> đ</p>
                                <button class="btn-addtocart">
                                    Mua Ngay
                                    <i class="fa-solid fa-cart-shopping"></i>
                                </button>
                            </div>
                        </a>
                    <?php
                    }
                    ?>
                </div>
            </div>
        </div>
        <div class="featured-container">
            <div class="container">
                <h2 class="title">Bài viết</h2>
                <div class="post-list">
                    <div class="post">
                        <a href="index.php?quanly=baiviet&post=1">
                            <img src="./assets/images/post1.jpg" alt="post 1">
                            <h3>Top 5 sản phẩm nổi bật của Iot shop?</h3>
                        </a>
                    </div>
                    <div class="post">
                        <a href="index.php?quanly=baiviet&post=2">
                            <img src="./assets/images/post2.jpg" alt="post 2">
                            <h3>Lý do bạn nên mua hàng tại Iot shop?</h3>
                        </a>
                    </div>
                    <div class="post">
                        <a href="https://raspberrypi.vn/raspberry-pi-la-gi-gioi-thieu-ve-raspberry-pi-261.pi" target="_blank">
                            <img src="./assets/images/post3.jpg" alt="post 3">
                            <h3>Giới thiệu về Raspberry pi</h3>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="brand-container">
        <div class="container">
            <div class="brand-list">
                <div class="brand">
                    <a href="https://banlinhkien.com/" target="blank" class="brand-link">
                        <img src="./assets/images/brand 1.png" alt="brand 1">
                    </a>
                </div>
                <div class="brand">
                    <a href="https://thuongmaidientusaigon.com/" target="blank" class="brand-link">
                        <img src="./assets/images/brand 2.png" alt="brand 2">
                    </a>
                </div>
                <div class="brand">
                    <a href="https://vn.element14.com/" target="blank" class="brand-link">
                        <img src="./assets/images/brand 3.png" alt="brand 3">
                    </a>
                </div>
                <div class="brand">
                    <a href="https://hshop.vn/phu-kien-iot-internet-of-things-hardware-accessories" target="blank" class="brand-link">
                        <img src="./assets/images/brand 4.png" alt="brand 4">
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>