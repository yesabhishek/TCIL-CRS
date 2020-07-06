<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="fmssummary.aspx.cs" Inherits="Tinplate.fmssummary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style7
        {
            width: 100%;
        }
        .style8
        {
            height: 23px;
        }
        .style9
        {
            width: 29%;
        }
        .style10
        {
            height: 23px;
            width: 29%;
        }
        .style11
        {
            color: #FF0000;
        }
        .style12
        {
            width: 28%;
        }
        .style13
        {
            height: 23px;
            width: 28%;
        }
        .style14
        {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" 
        DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
        ForeColor="#7C6F57" Orientation="Horizontal" RenderingMode="Table" 
        StaticSubMenuIndent="10px" 
        style="text-align: center; font-family: Algerian; font-size: large" 
        Width="100%" Height="22px">
        <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#F7F6F3" />
        <DynamicSelectedStyle BackColor="#5D7B9D" />
        <Items>
            <asp:MenuItem Text="HOME" Value="HOME" 
                NavigateUrl="~/facilitymanagementservices.aspx"></asp:MenuItem>
            <asp:MenuItem Text="MANUAL GUIDE" Value="MANUAL GUIDE" 
                NavigateUrl="~/fmsmanual.aspx"></asp:MenuItem>
            <asp:MenuItem Text="STATICS" Value="STATICS">
                <asp:MenuItem Text="DATE WISE CALL RECIEVED AND CLOSED" 
                    Value="DATE WISE CALL RECIEVED AND CLOSED" NavigateUrl="~/fmsstatics.aspx"></asp:MenuItem>
                <asp:MenuItem Text="SUMMARY OF CALL CLOSED" Value="SUMMARY OF CALL CLOSED" 
                    NavigateUrl="~/fmssummary.aspx">
                </asp:MenuItem>
                <asp:MenuItem Text="CATEGORY WISE CALL" Value="CATEGORY WISE CALL">
                </asp:MenuItem>
                <asp:MenuItem Text="INDICATOR" Value="INDICATOR"></asp:MenuItem>
            </asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#5D7B9D" />
    </asp:Menu>
    <table class="style7">
        <tr>
            <td colspan="4" 
                
                style="text-align: center; font-weight: 700; font-size: large; background-color: #CCFF66" 
                class="style14">
                WELCOME TO SUMMARY OF CLOSED CALL</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%" class="style8">
                &nbsp;</td>
            <td class="style10">
                MONTH:<span class="style11">*</span></td>
            <td class="style13">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Please enter month" 
                    style="color: #FF0000" ValidationGroup="save"></asp:RequiredFieldValidator>
            </td>
            <td width="25%" class="style8">
                </td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style9">
                CALLS CLOSED BY ESPL TEAM L1:</td>
            <td class="style12">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style9">
                CALL CLOSED BY JSS TEAM L2:</td>
            <td class="style12">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style9">
                CALL CLOSED BY TCIL TEAM L2:</td>
            <td class="style12">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style9">
                CALLS CLOSED BY TEAM L3:</td>
            <td class="style12">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style9">
                GRAND TOTAL:</td>
            <td class="style12">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td class="style9">
                <asp:Button ID="Button1" runat="server" Text="SAVE" ValidationGroup="save" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="SEARCH" ValidationGroup="save" />
&nbsp;
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    Text="LOG OUT" />
            </td>
            <td class="style12">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
