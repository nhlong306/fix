<!-- BEGIN: main -->
<div class="container">
    <h2>Danh sách bác sĩ</h2>
    <table border="1" cellspacing="0" cellpadding="5">
        <thead>
            <tr>
                <th>ID</th>
                <th>Họ tên</th>
                <th>Trình độ</th>
                <th>Email</th>
                <th>Số điện thoại</th>
            </tr>
        </thead>
        <tbody>
            <!-- BEGIN: loop -->
            <tr>
                <td>{DOCTOR.id}</td>
                <td>{DOCTOR.hoten}</td>
                <td>{DOCTOR.trinhdo}</td>
                <td>{DOCTOR.email}</td>
                <td>{DOCTOR.sdt}</td>
            </tr>
            <!-- END: loop -->
        </tbody>
    </table>

    <p><a href="{LINK_BOOKING}">→ Đặt lịch khám</a></p>
</div>
<!-- END: main -->
