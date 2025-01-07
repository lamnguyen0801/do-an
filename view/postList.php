<?php
  if (isset($_GET['post'])) {
    $postId = $_GET['post'];
  }
?>
<?php 
  if ($postId == 1) {
    echo "<div class='post'>
            <h2 class='title'>Top 5 sản phẩm công nghệ được yêu thích nhất hiện nay</h2>
            <p class='introduce'>Thị trường công nghệ luôn sôi động với hàng loạt sản phẩm mới ra mắt mỗi ngày. Tuy nhiên, có một số sản phẩm đã khẳng định được vị thế của mình và trở thành những lựa chọn hàng đầu của người tiêu dùng. Dựa trên số liệu bán hàng mới nhất, chúng ta hãy cùng điểm qua 5 sản phẩm công nghệ nổi bật nhất hiện nay của Iot shop:</p>
            <div class='analysis'>
              <img src='./assets/images/post1-1.png' alt='post 1'>
              <p>Dựa trên biểu đồ, có thể thấy rằng Module Cảm biến độ ẩm HR202 và Điện trở nhiệt NTC8D-13 đang được người tiêu dùng ưa chuộng hơn cả. Điều này cho thấy nhu cầu về các thiết bị đo lường và điều khiển tự động đang ngày càng tăng. Bên cạnh đó, sự quan tâm đến các dự án DIY và tự động hóa nhà cửa cũng được thể hiện qua việc bộ học tập Arduino và bộ tưới cây tự động nằm trong top 5 sản phẩm bán chạy nhất.<p>
            </div>
            <ul>
              <li><strong>Cuộn cảm 4.7uH 4.5x5MM CD54:</strong> Đây là một linh kiện điện tử nhỏ gọn nhưng lại đóng vai trò quan trọng trong nhiều mạch điện. Với kích thước nhỏ và độ chính xác cao, cuộn cảm này được ứng dụng rộng rãi trong các thiết bị điện tử, từ các thiết bị gia dụng đơn giản đến các thiết bị công nghiệp phức tạp.</li>
              <li><strong>Bộ học tập Arduino & cảm biến:</strong> Arduino là một nền tảng điện tử mã nguồn mở vô cùng phổ biến, được sử dụng rộng rãi trong các dự án DIY (Do It Yourself). Bộ học tập Arduino & cảm biến cung cấp cho người dùng một cách dễ dàng để bắt đầu làm quen với lập trình và điều khiển các thiết bị điện tử.</li>
              <li><strong>Bộ tưới cây tự động v1:</strong> Với nhịp sống hiện đại, việc chăm sóc cây cảnh trở nên dễ dàng hơn bao giờ hết nhờ bộ tưới cây tự động. Sản phẩm này giúp tự động hóa quá trình tưới nước cho cây, đảm bảo cây luôn được cung cấp đủ nước mà không cần sự can thiệp của con người.</li>
              <li><strong>Module Cảm biến độ ẩm HR202:</strong> Cảm biến độ ẩm HR202 là một linh kiện điện tử được sử dụng để đo độ ẩm tương đối của không khí. Nó được ứng dụng rộng rãi trong các hệ thống điều khiển độ ẩm, các thiết bị đo thời tiết, và các thiết bị gia dụng thông minh.</li>
              <li><strong>Điện trở nhiệt NTC8D-13:</strong> Điện trở nhiệt NTC8D-13 là một loại cảm biến nhiệt độ được sử dụng để đo nhiệt độ. Nó có độ nhạy cao và độ chính xác tốt, được ứng dụng rộng rãi trong các thiết bị điều khiển nhiệt độ, các thiết bị đo nhiệt độ, và các thiết bị y tế.</li>
            </ul>
          </div>";
  } elseif ($postId == 2) {
    echo "<div class='post'>
            <h2 class='title'>Vì sao nên chọn IoT Shop? Lý do khiến bạn không thể bỏ qua!</h2>
            <p class='introduce'><i class='fas fa-lightbulb'></i>Trong thế giới công nghệ ngày càng phát triển, việc lựa chọn một địa chỉ mua sắm uy tín và chất lượng là điều vô cùng quan trọng. Và IoT Shop chính là một trong những cái tên đáng tin cậy mà bạn nên lựa chọn. Vậy điều gì đã khiến IoT Shop trở nên đặc biệt và thu hút đông đảo khách hàng? Hãy cùng khám phá nhé!</p>
            <ul>
              <li class='img-content' style='display: flex; justify-content: center; align-items: center; margin-bottom: 20px;'>
                <p><strong>Sản phẩm chính hãng, đa dạng và chất lượng:</strong> Tất cả sản phẩm tại IoT Shop đều được nhập khẩu chính hãng từ các nhà sản xuất uy tín, đảm bảo chất lượng và đi kèm đầy đủ giấy tờ chứng nhận. Đa dạng sản phẩm: Từ các thiết bị điện tử thông minh, linh kiện điện tử, đến các bộ kit học tập, IoT Shop đều cung cấp một kho sản phẩm phong phú, đáp ứng mọi nhu cầu của khách hàng. Chất lượng đảm bảo: Các sản phẩm tại IoT Shop đều được kiểm tra kỹ lưỡng trước khi đến tay người tiêu dùng, đảm bảo hoạt động ổn định và bền bỉ.</p>
                <img src='./assets/images/post2-1.jpg' style='max-width: 100%; height: auto;'>
              </li>
              <li class='img-content' style='display: flex; justify-content: center; align-items: center; margin-bottom: 20px;'>
                <img src='./assets/images/post2-4.png' style='max-width: 100%; height: auto;'>
                <p><strong>Không gian mua sắm hiện đại:</strong> IoT Shop có cửa hàng trưng bày sản phẩm với không gian rộng rãi, hiện đại, giúp khách hàng dễ dàng tham quan và trải nghiệm sản phẩm. Website mua sắm trực tuyến: Bên cạnh cửa hàng truyền thống, IoT Shop còn cung cấp dịch vụ mua sắm trực tuyến tiện lợi, giúp khách hàng tiết kiệm thời gian và công sức.</p>
              </>
              <li class='img-content' style='display: flex; justify-content: center; align-items: center; margin-bottom: 20px;'>
                <p><strong>Đội ngũ tư vấn nhiệt tình:</strong> Đội ngũ nhân viên tại IoT Shop luôn sẵn sàng hỗ trợ khách hàng trong việc lựa chọn sản phẩm phù hợp, giải đáp mọi thắc mắc và cung cấp thông tin chi tiết về sản phẩm. Chính sách bảo hành, đổi trả rõ ràng: IoT Shop có chính sách bảo hành, đổi trả sản phẩm rõ ràng, đảm bảo quyền lợi tối đa cho khách hàng. Giao hàng nhanh chóng: Đơn hàng của bạn sẽ được giao đến tận nơi trong thời gian ngắn nhất, đảm bảo sự tiện lợi cho khách hàng.</p>
                <img src='./assets/images/post2-3.jpg' style='max-width: 100%; height: auto;'>
              </li>
              <li class='img-content' style='display: flex; justify-content: center; align-items: center; margin-bottom: 20px;'>
                <img src='./assets/images/post2-2.png' style='max-width: 100%; height: auto;'>
                <p><strong>Giá cả hợp lý:</strong> IoT Shop luôn cam kết mang đến cho khách hàng những sản phẩm chất lượng với giá cả cạnh tranh nhất trên thị trường. Nhiều chương trình khuyến mãi: Khách hàng thường xuyên được hưởng các ưu đãi hấp dẫn như giảm giá, tặng quà, miễn phí vận chuyển,...</p>
              </li>
            </ul>
          </div>";
  }
?>
