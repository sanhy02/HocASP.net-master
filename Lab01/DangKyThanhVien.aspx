<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThanhVien.aspx.cs" Inherits="Lab01.DangKyThanhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 174px;
        }
        .auto-style5 {
            width: 308px;
        }
        .auto-style6 {
            width: 174px;
            height: 31px;
        }
        .auto-style7 {
            width: 308px;
            height: 31px;
        }
    </style>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container w-50">
        
        <table cellpadding="5" cellspacing="0" class="auto-style1">
            <tr>
                <td class="bg-info h3 text-center text-primary" colspan="3">Hồ sơ đăng ký</td>
            </tr>
            <tr>
              <td class="text-center" colspan="2" style="color: purple; background-color: pink;">Thông tin đăng nhập</td>
<td class="text-center" style="color: purple; background-color: pink;">Hồ sơ khách hàng</td>

            </tr>
            <tr>
                <td class="auto-style6">Tên đăng nhập</td>
                <td class="auto-style7">
                    
                    <asp:TextBox ID="txtTenDN" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTenDN" runat="server"  ControlToValidate="txtTenDN" ErrorMessage="Tên đăng nhập không được bỏ trống" ForeColor="#FF3300" Display="Dynamic">(*)</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revTenDN" runat="server" ControlToValidate="txtTenDN" ErrorMessage="Tên đăng nhập không hợp lệ" ForeColor="#FF3300" Display="Dynamic" ValidationExpression="[\d|\w|!|&amp;|_]{8}[\d|\w|!|&amp;|_]+">(*)</asp:RegularExpressionValidator>
                </td>
                <td style="vertical-align:top" rowspan="12">
                    <asp:Label ID="lbThongTin" runat="server"></asp:Label>
                    <br />
                    <asp:ValidationSummary ID="vsLoi" runat="server" ForeColor="#FF3300"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Mật khẩu</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtMatKhau" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMatKhau" runat="server" ErrorMessage="Mật khẩu không được bỏ trống" ControlToValidate="txtMatKhau" ForeColor="#FF3300" Display="Dynamic">(*)</asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style4">Nhập lại mật khẩu</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtMKNL" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMKNL" runat="server" ErrorMessage="Chưa xác nhận mật khẩu" ControlToValidate="txtMKNL" ForeColor="#FF3300" Display="Dynamic">(*)</asp:RequiredFieldValidator>
                     <asp:CompareValidator ID="cvMKNL" runat="server" ErrorMessage="Mật khẩu xác nhận không trùng" ControlToCompare="txtMatKhau" ControlToValidate="txtMKNL" ForeColor="#FF3300" Display="Dynamic">(*)</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="text-center" colspan="2" style="color: purple; background-color: pink;">Thông tin cá nhân</td>
            </tr>
            <tr>
                <td class="auto-style4">Họ tên khách hàng</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvHoTen" runat="server" ControlToValidate="txtHoTen" ErrorMessage="Chưa nhập họ tên" ForeColor="#FF3300" Display="Dynamic">(*)</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Ngày sinh</td>
                <td class="auto-style5">
                  <div class="d-flex">
                       
                        <asp:DropDownList ID="ddlNgay" runat="server" CssClass="form-select">
                    </asp:DropDownList>
                       <asp:RequiredFieldValidator ID="rfvNgay" runat="server" ControlToValidate="ddlNgay" ErrorMessage="Chưa chọn ngày sinh" ForeColor="#FF3300">(*)</asp:RequiredFieldValidator>
                    <asp:DropDownList ID="ddlThang" runat="server" CssClass="form-select">
                    </asp:DropDownList>
                      <asp:RequiredFieldValidator ID="rfvThang" runat="server" ControlToValidate="ddlThang" ErrorMessage="Chưa chọn tháng" ForeColor="#FF3300">(*)</asp:RequiredFieldValidator>
                    <asp:DropDownList ID="ddlNam" runat="server" CssClass="form-select">
                    </asp:DropDownList>
                       <asp:RequiredFieldValidator ID="rfvNam" runat="server" ControlToValidate="ddlNam" ErrorMessage="Chưa chọn năm sinh" ForeColor="#FF3300">(*)</asp:RequiredFieldValidator>
                  </div>
                    </td>
            </tr>
            <tr>
                <td class="auto-style4">Email</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email khong hợp lệ" ValidationExpression="Internet Email" ForeColor="#FF3300">(*)</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Thu nhập</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtThuNhap" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtThuNhap" ErrorMessage="Thu nhập từ 1tr đến 50tr" MaximumValue="50000000" MinimumValue="1000000" Type="Integer" ForeColor="#FF3300">(*)</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Giới tính</td>
                <td class="auto-style5">
                    <asp:CheckBox ID="ckGioiTinh" runat="server" CssClass="form-check" Text="Nam" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Địa chỉ</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Điện thoại</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtDienThoai" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btDangKy" runat="server" Text="Đăng ký" CssClass="form-control" OnClick="btDangKy_Click"/>
                </td>
            </tr>
        </table>
            </div>
    </form>
</body>
</html>
