<?php
if (!defined('NV_IS_MOD_QLBENHVIEN')) die('Stop!!!');

function qlv_get_bacsi($limit = 6)
{
    global $db;
    $sql = "SELECT id, hoten, trinhdo, hinhanh, lichlamviec FROM " . NV_PREFIXLANG . "_ql_benhvien_bacsi ORDER BY hoten ASC LIMIT " . intval($limit);
    $stmt = $db->query($sql);
    $list = array();
    while ($row = $stmt->fetch()) {
        $list[] = $row;
    }
    return $list;
}

function qlv_get_hosokham_list($limit = 100)
{
    global $db;
    $sql = "SELECT h.id, h.ngaykham, h.chandoan, h.donthuoc, h.ketluan, 
                   lk.benhnhan_id, b.hoten AS benhnhan, lk.bacsi_id, bs.hoten AS bacsi
            FROM " . NV_PREFIXLANG . "_ql_benhvien_hosokham h
            LEFT JOIN " . NV_PREFIXLANG . "_ql_benhvien_lichkham lk ON h.lichkham_id = lk.id
            LEFT JOIN " . NV_PREFIXLANG . "_ql_benhvien_benhnhan b ON lk.benhnhan_id = b.id
            LEFT JOIN " . NV_PREFIXLANG . "_ql_benhvien_bacsi bs ON lk.bacsi_id = bs.id
            ORDER BY h.ngaykham DESC LIMIT " . intval($limit);
    $stmt = $db->query($sql);
    $list = array();
    while ($row = $stmt->fetch()) {
        $list[] = $row;
    }
    return $list;
}

function qlv_get_latest_news($limit = 3)
{
    global $db;
    // Nếu module news tồn tại table nv4_vi_news (hoặc nv4_news_rows tùy cài đặt), thử lấy
    $list = array();
    // 2 phương án phổ biến: nv4_news_rows hoặc nv4_vi_news
    $table1 = NV_PREFIXLANG . '_news_rows';
    $table2 = NV_PREFIXLANG . '_vi_news';
    if ($db->query("SHOW TABLES LIKE '" . $table1 . "'")->rowCount()) {
        $sql = "SELECT id, title, alias, addtime FROM " . $table1 . " ORDER BY addtime DESC LIMIT " . intval($limit);
        $stmt = $db->query($sql);
        while ($r = $stmt->fetch()) $list[] = $r;
    } elseif ($db->query("SHOW TABLES LIKE '" . $table2 . "'")->rowCount()) {
        $sql = "SELECT id, title, alias, addtime FROM " . $table2 . " ORDER BY addtime DESC LIMIT " . intval($limit);
        $stmt = $db->query($sql);
        while ($r = $stmt->fetch()) $list[] = $r;
    }
    return $list;
}
