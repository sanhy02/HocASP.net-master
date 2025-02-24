﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="Lab01.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
    </style>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
     <form id="form1" runat="server">
        <div class="container w-50">
    <table cellpadding="5" cellspacing="0" class="auto-style1">
        <tr>
            <td colspan="2" class="h4 alert alert-info text-center">ĐƠN ĐẶT HÀNG&nbsp;</td>
        </tr>
        <tr>
            <td class="text-left">
                Khách hàng</td>
            <td>
                <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-left">
                Địa chỉ</td>
            <td>
                <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-left">Mã số thuế</td>
            <td>
                <asp:TextBox ID="txtMST" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-center">
                Chọn các loại bánh sau<br />
                <asp:DropDownList ID="ddlBanh" runat="server" CssClass="form-select">
                </asp:DropDownList>
                <br />
                Số lượng<asp:TextBox ID="txtSoLuong" runat="server" OnTextChanged="TextBox4_TextChanged" CssClass="form-control"></asp:TextBox>
                <asp:Label ID="lbLoi" runat="server"></asp:Label>
                <br />
                <asp:Button ID="btThem" runat="server" Text="&gt;" CssClass="btn btn-primary" OnClick="btThem_Click" />
            </td>
            <td class="auto-style1">
                Danh sách các bánh được đặt:<br />
                <asp:ListBox ID="lstBanh" runat="server" CssClass="form-control" SelectionMode="Multiple"></asp:ListBox>
                <br />
                <asp:ImageButton ID="btXoa" runat="server" ImageUrl="~/Images/delete.gif" OnClick="btXoa_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btIndonDatHang" runat="server" Text="In đơn đặt hàng" CssClass="btn btn-primary text-center" OnClick="btIndonDatHang_Click" />
            </td>
        </tr>
       <tr>
          <td colspan="2"> 
              <asp:Label ID="lbHoadon" runat="server" ForeColor="#CC3300"></asp:Label>
          </td>
       </tr>
    </table>
               </div>
         <div class="container w-50">&nbsp;</div>
    </form>
</body>
</html>