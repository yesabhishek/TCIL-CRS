<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="fmsstatics.aspx.cs" Inherits="Tinplate.fmsstatics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style7
        {
            width: 100%;
        }
        .style8
        {
            width: 46%;
        }
        .style9
        {
            text-align: center;
            background-color: #FFFFFF;
        }
        .style11
        {
            width: 46%;
            text-align: left;
            height: 26px;
        }
        .style12
        {
            height: 26px;
        }
        .style10
        {
            color: #FF0000;
            text-align: left;
        }
        .style13
        {
            text-align: center;
            height: 23px;
            background-color: #FFFFFF;
        }
        .style14
        {
            height: 23px;
        }
        .style15
        {
            text-align: center;
            background-color: #CCFF66;
            height: 36px;
            font-size: large;
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
            <td class="style9" nowrap="nowrap">
                &nbsp;</td>
            <td nowrap="nowrap" width="100%">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15" nowrap="nowrap" colspan="2">
                <strong>DATE WISE CALLS RECIEVED AND CLOSE </strong> </td>
        </tr>
        <tr>
            <td class="style13" nowrap="nowrap">
                </td>
            <td nowrap="nowrap" width="100%" class="style14">
            </td>
        </tr>
        <tr>
            <td class="style11" nowrap="nowrap">
                DATE<span class="style10">*</span></td>
            <td nowrap="nowrap" width="100%" class="style12">
                <asp:TextBox ID="TextBox5" runat="server"> </asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Please enter date" 
                    style="color: #FF0000" ValidationGroup="save"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8" nowrap="nowrap">
                CALL CARRY FORWARD:</td>
            <td nowrap="nowrap" width="100%">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8" nowrap="nowrap">
                CALL RECIEVED:</td>
            <td nowrap="nowrap" width="100%">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8" nowrap="nowrap">
                CALL RESOLVED:</td>
            <td nowrap="nowrap" width="100%">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8" nowrap="nowrap">
                PENDING(END OF THE DAY):</td>
            <td nowrap="nowrap" width="100%">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8" nowrap="nowrap">
                &nbsp;</td>
            <td nowrap="nowrap" width="100%">
                <asp:Button ID="Button1" runat="server" Text="SAVE" ValidationGroup="save" />
            &nbsp;
                <asp:Button ID="Button2" runat="server" Text="SEARCH" ValidationGroup="save" />
&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    Text="LOG OUT" />
            </td>
        </tr>
        <tr>
            <td class="style8" nowrap="nowrap">
                &nbsp;</td>
            <td nowrap="nowrap" width="100%">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
