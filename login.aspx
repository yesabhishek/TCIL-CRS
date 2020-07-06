<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Tinplate.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style7
        {
            width: 100%;
        }
        .style10
        {
            height: 23px;
            width: 35%;
        }
        .style12
        {
            height: 23px;
            width: 16%;
        }
        .style14
        {
            width: 35%;
        }
        .style15
        {
            width: 35%;
            background-color: #FFFFFF;
            height: 33px;
        }
        .style16
        {
            width: 16%;
            background-color: #FFFFFF;
            height: 33px;
        }
        .style17
        {
            width: 16%;
        }
        .style18
        {
            width: 32%;
        }
        .style19
        {
            width: 16%;
            height: 31px;
        }
        .style20
        {
            width: 35%;
            height: 31px;
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
    <center> 
        <br />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="EMPLOYEE" 
            GroupName="login" oncheckedchanged="RadioButton2_CheckedChanged" 
             />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton1" runat="server" Text="IT-FMS" 
            GroupName="login" oncheckedchanged="RadioButton1_CheckedChanged" 
            />
        <br />
    </center>
    <asp:Panel ID="Panel1" runat="server">
        <table class="style7">
            <tr>
                <td rowspan="4" class="style18">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td rowspan="4" width="25%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16">
                    USER-ID:</td>
                <td class="style15">
                    <asp:TextBox ID="TextBox1" runat="server" Width="143px" Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Please enter valid user-id" 
                        style="color: #FF0000; background-color: #FFFFFF" ValidationGroup="login"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style19">
                    PASSWORD :</td>
                <td class="style20">
                    <asp:TextBox ID="TextBox2" runat="server" Width="141px" TextMode="Password" 
                        Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Please enter password" 
                        style="color: #FF0000" ValidationGroup="login"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style12">
                </td>
                <td class="style10">
                </td>
            </tr>
        </table>
    </asp:Panel>
       <center> 
           <asp:Button ID="Button1" runat="server" style="text-align: center" 
            Text="LOGIN" ValidationGroup="login" onclick="Button1_Click" />&nbsp;&nbsp;
           <asp:Label ID="Label1" runat="server" Text="user-id or password incorrect" 
               style="font-size: large; color: #FF0000"></asp:Label>
    </center>
    </p>
</asp:Content>
