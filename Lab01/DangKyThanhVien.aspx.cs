using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DangKyThanhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                KhoiTaoDuLieu();
            }
        }

        private void KhoiTaoDuLieu()
        {
            //khoi tao ddlNgay
            ddlNgay.Items.Add(new ListItem("--Chọn ngày--", ""));
            for (int i = 1; i <= 31; i++)
            {
                ddlNgay.Items.Add(new ListItem(i.ToString(), i.ToString()));  
            }
            //khoi tao ddlThang
            ddlThang.Items.Add(new ListItem("--Chọn tháng--", ""));
            for (int i = 1; i <= 12; i++)
            {
                ddlThang.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }

            //khoi tao ddlNam
            ddlNam.Items.Add(new ListItem("--Chọn năm--", ""));
            for (int i = 1970; i <= 2005; i++)
            {
                ddlNam.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }

        protected void btDangKy_Click(object sender, EventArgs e)
        {
            // B1. Lấy thông tin đăng ký từ client
            string kq = "<ul>";
            kq += $"<li> Họ tên: <i> {txtHoTen.Text}</i></li>";
            kq += $"<li> Tên đăng nhập: <i> {txtTenDN.Text}</i></li>";
            kq += $"<li> Mật khẩu: <i> {txtMatKhau.Text}</i></li>";

            // Thêm thông tin ngày sinh
            string ngaySinh = $"{ddlNgay.SelectedValue}/{ddlThang.SelectedValue}/{ddlNam.SelectedValue}";
            if (!string.IsNullOrEmpty(ddlNgay.SelectedValue) && !string.IsNullOrEmpty(ddlThang.SelectedValue) && !string.IsNullOrEmpty(ddlNam.SelectedValue))
            {
                kq += $"<li> Ngày sinh: <i> {ngaySinh}</i></li>";
            }
            else
            {
                kq += "<li> Ngày sinh: <i>Chưa chọn</i></li>";
            }

            kq += $"<li> Email: <i> {txtEmail.Text}</i></li>";
            kq += $"<li> Thu nhập: <i> {txtThuNhap.Text}</i></li>";
            string gioiTinh = ckGioiTinh.Checked ? "Nam" : "Nữ";
            kq += $"<li> Giới tính: <i> {gioiTinh}</i></li>";
            kq += $"<li> Địa chỉ: <i> {txtDiaChi.Text}</i></li>";
            kq += $"<li> Điện thoại: <i> {txtDienThoai.Text}</i></li>";

            kq += "</ul>";

            // B2. Hồi đáp thông tin đăng ký
            lbThongTin.Text = kq;
        }
    }
}