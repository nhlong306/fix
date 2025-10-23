<!-- BEGIN: main -->
<h2>Quản lý hồ sơ khám bệnh</h2>
<p>Ghi nhận chẩn đoán và đơn thuốc (đơn giản hóa, không cần kho thuốc).</p>

<table border="1" cellpadding="6" cellspacing="0" width="100%">
    <tr style="background:#f2f2f2;">
        <th width="5%">ID</th>
        <th width="25%">Họ tên</th>
        <th width="35%">Chẩn đoán</th>
        <th width="35%">Đơn thuốc</th>
    </tr>
    <!-- BEGIN: loop -->
    <tr>
        <td>{ROW.id}</td>
        <td>{ROW.hoten}</td>
        <td>{ROW.chan_doan}</td>
        <td>{ROW.don_thuoc}</td>
    </tr>
    <!-- END: loop -->
</table>

<p style="margin-top:10px;">
    <a href="{NV_BASE_SITEURL}index.php?language=vi&nv=qlbenhvien" style="text-decoration:none;">← Quay lại trang chủ bệnh viện</a>
</p>
<!-- END: main -->
