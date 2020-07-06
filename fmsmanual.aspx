<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="fmsmanual.aspx.cs" Inherits="Tinplate.fmsmanual" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                    Value="DATE WISE CALL RECIEVED AND CLOSED" NavigateUrl="~/fmsstatics.aspx">
                </asp:MenuItem>
                <asp:MenuItem Text="SUMMARY OF CALL CLOSED" Value="SUMMARY OF CALL CLOSED" 
                    NavigateUrl="~/fmssummary.aspx"></asp:MenuItem>
                <asp:MenuItem Text="CATEGORY WISE CALL" Value="CATEGORY WISE CALL">
                </asp:MenuItem>
                <asp:MenuItem Text="INDICATOR" Value="INDICATOR"></asp:MenuItem>
            </asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#5D7B9D" />
    </asp:Menu>
</asp:Content>
