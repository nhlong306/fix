<!-- BEGIN: main -->
<div class="container">
  <h2>Đặt lịch khám</h2>
  {NOTICE}

  <p><strong>Họ tên:</strong> {HOTEN}</p>
  <p><strong>Email:</strong> {EMAIL}</p>

  <!-- BEGIN: gioitinh -->
  <p><strong>Giới tính:</strong> {GIOITINH}</p>
  <!-- END: gioitinh -->

  <!-- BEGIN: sdt -->
  <p><strong>Số điện thoại:</strong> {SDT}</p>
  <!-- END: sdt -->

  <!-- BEGIN: diachi -->
  <p><strong>Địa chỉ:</strong> {DIACHI}</p>
  <!-- END: diachi -->

  <hr>

  <form method="post">
    <p>
      <label>Ngày khám:</label><br>
      <input type="date" name="ngaykham" required>
    </p>
    <p>
      <label>Giờ khám:</label><br>
      <input type="time" name="giokham" required>
    </p>
    <p>
      <label>Ghi chú:</label><br>
      <textarea name="ghichu" rows="3" cols="40"></textarea>
    </p>
    <p>
      <button type="submit" name="submit">Đặt lịch khám</button>
    </p>
  </form>
</div>
<!-- END: main -->
