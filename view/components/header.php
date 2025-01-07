<?php
include_once('./model/user.classes.php');
include_once('./model/category.classes.php');
include_once('./model/cart.classes.php');
$User = new User();
$Category = new Category();
$Cart = new Cart();
?>
<header>
  <!-- Begin Sub-Header -->
  <div class="sub-header">
    <div class="sub-header-img">
      <a href="http://localhost/Website/index.php">
        <img src="./assets/images/logo-iot.jpg" alt="" class="logo" />
      </a>
    </div>

    <!-- Menu PC -->
    <ul class="menu">
      <li class="menu_item">
        <a href="index.php" class="menu_link active-button">Trang chủ</a>
      </li>

      <li class="menu_item">
        <a href="index.php?quanly=cuahang" class="menu_link">Bộ sưu tập<i class="fa-solid fa-angle-down"></i></a>
        <div class="menu_child">
          <div class="menu_child_item">
            <ul class="menu_child_list">
              <?php
                  $listParentCategory = $Category->getParentCategory();
                  foreach($listParentCategory as $row_parent) {
                    $id_parent = $row_parent['id_category'];
              ?>
              <li class="menu_parent">
                <a href="index.php?quanly=cuahang&id_category=<?php echo $id_parent ?>">
                  <?php echo $row_parent['name_category'] ?>
                </a>

                <?php
                  $listChildCategory = $Category->getChildCategory($id_parent);
                  if(count($listChildCategory) > 1) {                
                ?>
                <div class="sub__menu-child">

                  <?php
                    foreach($listChildCategory as $row_child) {
                  ?>
                    <div class="sub__menu-child-item">
                      <a href="index.php?quanly=cuahang&id_category=<?php echo $row_child['id_category'] ?>">
                        <?php echo $row_child['name_category'] ?>
                      </a>
                    </div>
                  <?php }?>

                </div>
                <?php } ?>
              </li>
              <?php } ?>
            </ul>
          </div>
        </div>

      </li>

      <li class="menu_item">
        <a href="index.php?quanly=cuahang" class="menu_link">Cửa hàng</a>
      </li>

      <li class="menu_item">
        <a href="index.php?quanly=<?php echo Session::getValueSession('user') ? 'giohang' : 'login' ?>" class="menu_link">Giỏ hàng</a>
      </li>

      <li class="menu_item">
        <a href="index.php?quanly=gioithieu" class="menu_link">Giới thiệu</a>
      </li>

    </ul>

    <div class="icon-list">
      <div class="icon">
        <div class="menu_icon">
          <a href="index.php?quanly=<?php echo Session::getValueSession('user') ? 'giohang' : 'login' ?>" class="">
            <!-- Cart Layout -->
            <div class="header-cart">
              <div class="header-cart-wrap">
                <i class="fa-solid fa-cart-shopping" >
                <?php 
                  if(Session::getValueSession('user')) {
                    $count = count($Cart->getCartOfUser(Session::getValueSession('user')));
                    echo "<p class='numProCart'> $count </p>";
                  }             
                ?>
                  
                </i>
              </div>
            </div>
          </a>
        </div>
      </div>

      <div class="icon">
        <form action="index.php?quanly=cuahang" method = "POST" class="search-btn">
          <a href="#" class="menu_link"><i class="fa-solid fa-magnifying-glass"></i></a>
          <div class="search-txt">
            <input name="searchName" type="text" placeholder="Nhập tên sản phẩm" />
          </div>
        </form>
      </div>
      
      <div class="icon icon-user">
        <a href="index.php?quanly=<?php echo Session::getValueSession('user') ? 'user' : 'login' ?>" class="menu_link <?php echo Session::getValueSession('user') ? 'login-success' : '' ?>">
          <i class="fa-solid fa-user"></i>
          <?php
          if (Session::getValueSession('user')) {
            $id_user = Session::getValueSession('user');
            $row_user = $User->getUserId($id_user);
            // echo var_dump($row_user);
            foreach ($row_user as $item ) {
              echo $item['user_name'];
            }
          }
          ?>
        </a>
      
      
        <?php
        if (Session::getValueSession('user')) {
          $id_user = Session::getValueSession('user');
          $row_user = $User->getUserId($id_user);
          foreach ($row_user as $item) {
            if ($item['user_role'] == 1) {
              echo '<ul class="menu-user">
                      <li><a href="index.php?quanly=user">Thông tin cá nhân</a></li>
                      <li><a href="index.php?quanly=user&action=mycart">Chi tiết đơn hàng</a></li>
                      <li><a href="index.php?quanly=admin">Quản trị Admin</a></li>
                      <li><a href="index.php?quanly=login&delete_userSession=true">Đăng xuất</a></li>
                  </ul>';
            } else {
              echo '<ul class="menu-user">
                      <li><a href="index.php?quanly=user">Thông tin cá nhân</a></li>
                      <li><a href="index.php?quanly=user&action=mycart">Chi tiết đơn hàng</a></li>
                      <li><a href="index.php?quanly=login&delete_userSession=true">Đăng xuất</a></li>
                  </ul>';
            }
          }
        };
        ?>
      </div>
    </div>
  </div>
  <!-- End Sub-Header -->
</header>