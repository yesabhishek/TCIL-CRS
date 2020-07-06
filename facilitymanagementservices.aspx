<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="facilitymanagementservices.aspx.cs" Inherits="Tinplate.facilitymanagementservices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style7
        {
            text-align: center;
            font-size: large;
            background-color: #CC66FF;
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
    <p class="style7">
      <strong><span class="style5" style="background-color: #FF9933">
        <marquee  behavoiur = " scroll" direction = "left" onmouseover="this.stop();" 
                onmouseout="this.start();" 
            style="height: 36px; width: 302px; background-color: #CC66FF;" >WELCOME IT-FMS TEAM</marquee></span></strong> 
        </p>
    <p>
      <center> <asp:GridView ID="gridview" runat="server" CellPadding="4" 
              ForeColor="#333333" GridLines="None">
          <AlternatingRowStyle BackColor="White" />
          <EditRowStyle BackColor="#2461BF" />
          <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
          <RowStyle BackColor="#EFF3FB" />
          <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
          <SortedAscendingCellStyle BackColor="#F5F7FB" />
          <SortedAscendingHeaderStyle BackColor="#6D95E1" />
          <SortedDescendingCellStyle BackColor="#E9EBEF" />
          <SortedDescendingHeaderStyle BackColor="#4870BE" />
           <Columns>
               <asp:HyperLinkField DataNavigateUrlFields="complaint_id" DataNavigateUrlFormatString="~/fmsreport.aspx?yydt={0}" Text="select" />
                </Columns>
        </asp:GridView></center> 
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    
</asp:Content>
