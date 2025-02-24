using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //khoi tao ddlBanh
                ddlBanh.Items.Add("Bánh mì");
                ddlBanh.Items.Add("Bánh tiêu");
                ddlBanh.Items.Add("Bánh kem");
                ddlBanh.Items.Add("Bánh su");
            }
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btThem_Click(object sender, EventArgs e)
        {
            try
            {
                string tenbanh = ddlBanh.SelectedItem.Text;
                int soluong = int.Parse(txtSoLuong.Text);
                // Kiem tra ton tai trong lstDanhSach
                bool find = false;
                foreach (ListItem item in lstBanh.Items)
                {
                    if (item.Text.StartsWith(tenbanh))
                    {
                        find = true;
                        // Cập nhật số lượng
                        string[] data = item.Text.Split(new char[] { '(', ')' });
                        soluong += int.Parse(data[1]);
                        item.Text = $"{tenbanh} ({soluong})";
                    }
                }
                if (!find)
                {
                    string kq = string.Format("{0} ({1})", tenbanh, soluong);
                    lstBanh.Items.Add(kq);
                }
            }
            catch (Exception ex)
            {
                lbLoi.Text = "Số lượng không hợp lệ";
            }
        }

        protected void btXoa_Click(object sender, ImageClickEventArgs e)
        {
            // duyet lstBanh de kiem tra muc duoc chon de xoa
            for (int i = lstBanh.Items.Count - 1; i >= 0; i--)
            {
                if (lstBanh.Items[i].Selected)
                {
                    lstBanh.Items.RemoveAt(i);
                }
            }
        }

        protected void btIndonDatHang_Click(object sender, EventArgs e)
        {
            string kq = "<div class='h3 text-center mt-4'>HOÁ ĐƠN ĐẶT HÀNG</div>";
            kq += "<div class='border p-3'>";

            //Thu nhập thông tin tử client
            kq += string.Format("Khách hàng: <b> {0} </b> <br>", txtHoTen.Text);
            kq += string.Format("Địa chỉ: <b> {0} </b> <br>", txtDiaChi.Text);
            kq += string.Format("Mã số thuế: <b> {0} </b> <br>", txtMST.Text);

            kq += "<b> Đặt các loại bánh sau: </b>";

            kq += "<table class='table table-bordered'>";
            foreach (ListItem item in lstBanh.Items)
            {
                string[] data = item.Text.Split('(');
                kq += string.Format("<tr><td>{0}</td><td>{1}</td></tr>", data[0], data[1].Replace(')', ' ').Trim());
            }
            kq += "</table>";

            kq += "</div>";

            lbHoadon.Text = kq;
        }
    }
}