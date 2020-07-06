<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Tinplate.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style9
    {
        text-align: center;
        font-size: x-large;
        background-color: #FFCC66;
    }
        .style10
        {
            width: 84%;
        }
        .style11
        {
            width: 12%;
        }
    .style8
    {
        font-size: large;
        font-family: "Times New Roman", Times, serif;
        background-color: #FFFFFF;
    }
        .style12
        {
            width: 12%;
            height: 124px;
        }
        .style13
        {
            height: 124px;
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
<p class="style9">
      <marquee  behavoiur = " scroll" direction = "left" onmouseover="this.stop();" 
                onmouseout="this.start();" 
          style="font-weight: 700; width: 629px; height: 36px;"> WELCOME TO COMPLAINT MANAGEMENT SERVICE
  </marquee> 
   </p>
    <table class="style10">
        <tr>
            <td class="style12">
            </td>
            <td class="style13" width="50%">
    <span class="style8" lang="EN-US" style="line-height: 115%;">The Web Application 
    to be designed would facilitate the logged complaint of the user to be stored 
    and recorded in a data. Since the complaints would be logged in through an web 
    application ,there would be an accuracy in various aspects of the complaint 
    action which include the complaint log time ,the closing time ,the time taken 
    for the resolving action .Every data would be system oriented thus reducing work 
    load of manually entering it every time.<o:p></o:p></span></td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td width="50%">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
