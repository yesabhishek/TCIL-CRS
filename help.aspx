<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="help.aspx.cs" Inherits="Tinplate.help" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style7
    {
        text-align: center;
        font-size: large;
    }
        .style8
        {
            width: 100%;
            height: 27px;
        }
        #TextArea1
        {
            height: 170px;
            width: 206px;
        }
        #TextArea2
        {
            height: 170px;
            width: 206px;
        }
       
        .style9
        {
            text-align: center;
            background-color: #FFCC66;
            font-size: x-large;
        }
       
        .img1
        {
            text-align: right;
        }
        .style10
        {
            width: 28%;
        }
       
        </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" 
        DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
        ForeColor="#990000" Orientation="Horizontal" RenderingMode="Table" 
        StaticSubMenuIndent="10px" 
        style="text-align: center; font-family: Algerian; font-size: large" 
        Width="100%" Height="22px">
        <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#FFFBD6" />
        <DynamicSelectedStyle BackColor="#FFCC66" />
        <Items>
            <asp:MenuItem Text="HOME" Value="HOME" NavigateUrl="~/home.aspx"></asp:MenuItem>
            <asp:MenuItem Text="HELP" Value="HELP" NavigateUrl="~/help.aspx"></asp:MenuItem>
            <asp:MenuItem Text="LOGIN" Value="LOGIN" NavigateUrl="~/login.aspx">
            </asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#FFCC66" />
    </asp:Menu>
    <table class="style8">
        <tr>
            <td class="style9">
                <strong>
                <marquee  behavoiur = " scroll" 
                    direction = "left" onmouseover="this.stop();" 
                onmouseout="this.start();" style="height: 35px; width: 364px">WELCOME TO USER MANUAL</marquee></strong></td>
        </tr>
    </table>
    <p class="style7"> 
                <table class="style8">
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
              <!DOCTYPE html>
<html >
<head>
<style type="text/css">
    .zoomin img {
  height: 200px;
  width: 419px;
  -webkit-transition: all 2s ease;
     -moz-transition: all 2s ease;
      -ms-transition: all 2s ease;
          transition: all 2s ease;
}
.zoomin img:hover {
  width: 900px;
  height: 500px;
}
</style>
</head>
<body>
<div class="zoomin">
 
<img src="img/first.png"  />
</div>
 </body>
</html>

              
            </td>
            <td width="25%">
                <strong><em style="text-align: left">user complaint view</em></strong></td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                          <!DOCTYPE html>
<html >
<head>
<style type="text/css">
    .zoomin img {
  height: 200px;
  width: 419px;
  -webkit-transition: all 2s ease;
     -moz-transition: all 2s ease;
      -ms-transition: all 2s ease;
          transition: all 2s ease;
}
.zoomin img:hover {
  width: 900px;
  height: 500px;
}
</style>
</head>
<body>
<div class="zoomin">
 
<img src="img/second.png"  />
</div>
 </body>
</html>
            </td>
            <td width="25%">
                <strong><em>user acknowledgement view</em></strong></td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                          <!DOCTYPE html>
<html >
<head>
<style type="text/css">
    .zoomin img {
  height: 200px;
  width: 419px;
  -webkit-transition: all 2s ease;
     -moz-transition: all 2s ease;
      -ms-transition: all 2s ease;
          transition: all 2s ease;
}
.zoomin img:hover {
  width: 900px;
  height: 500px;
}
</style>
</head>
<body>
<div class="zoomin">
 
<img src="img/third.png"  />
</div>
 </body>
</html>
            </td>
            <td width="25%">
                &nbsp;<strong><em>when complaint is successfully&nbsp;submited</em></strong></td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
        </tr>
    </table>
    </p>
</asp:Content>
