<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="useracknowledgement.aspx.cs" Inherits="Tinplate.useracknowledgement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style7
        {
            width: 100%;
            height: 291px;
        }
        .style8
        {
            text-align: center;
            width: 100%;
            font-size: large;
            background-color: #FF9933;
        }
        .style10
        {
            height: 17px;
        }
        .style11
        {
            width: 21%;
            height: 17px;
        }
        .style12
        {
            height: 17px;
            width: 0%;
        }
        .style13
        {            width: 21%;
        }
        .style14
        {
            height: 17px;
            width: 134px;
        }
        .style15
        {
            width: 134px;
        }
        #TextArea1
        {
            width: 424px;
            height: 50px;
        }
        .style16
        {
            background-color: #FFFFFF;
        }
        .style18
        {
            width: 134px;
            background-color: #FFFFFF;
        }
        .style19
        {
            background-color: #FF9966;
            font-size: x-large;
        }
        .style20
        {
            background-color: #FFFFFF;
            width: 21%;
        }
        .style21
        {
            background-color: #FFFFFF;
            height: 27px;
        }
        .style22
        {
            background-color: #FFFFFF;
            width: 21%;
            height: 27px;
        }
        .style23
        {
            width: 134px;
            background-color: #FFFFFF;
            height: 27px;
        }
        .style24
        {
            background-color: #FFFFFF;
            width: 25%;
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style7">
        <tr>
            <td class="style8" colspan="4" width="50%">
                <strong><span class="style19"><marquee  behavoiur = " scroll" 
                    direction = "left" onmouseover="this.stop();" 
                onmouseout="this.start();" style="height: 35px; width: 521px">WELCOME TO USER ACKNOWLEDGEMENT</marquee></span></strong></td>
        </tr>
        <tr>
            <td class="style10" nowrap="nowrap" width="25%">
                &nbsp;</td>
            <td class="style11" nowrap="nowrap">
            </td>
            <td class="style14" nowrap="nowrap">
            </td>
            <td class="style12" nowrap="nowrap" style="width: 25%" width="25%">
            </td>
        </tr>
        <tr>
            <td class="style16" nowrap="nowrap" width="25%">
                COMPLAINT ID:</td>
            <td class="style20" nowrap="nowrap">
                <asp:TextBox ID="complaint_id" runat="server"></asp:TextBox>
            </td>
            <td class="style18" nowrap="nowrap">
                ASSET NUMBER:</td>
            <td class="style16" nowrap="nowrap" style="width: 25%" width="25%">
                <asp:TextBox ID="asset_no" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style16" nowrap="nowrap" width="25%">
                USER NAME:</td>
            <td class="style20" nowrap="nowrap">
                <asp:TextBox ID="user_name" runat="server"></asp:TextBox>
            </td>
            <td class="style18" nowrap="nowrap">
                DEPARTMENT:</td>
            <td class="style16" nowrap="nowrap" style="width: 25%" width="25%">
                <asp:TextBox ID="department" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style16" nowrap="nowrap" width="25%">
                COMPLAINT DETAILS:</td>
            <td class="style16" colspan="3" nowrap="nowrap">
                <asp:TextBox ID="complaint_details" runat="server" Height="47px" TextMode="MultiLine" 
                    Width="281px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21" nowrap="nowrap" width="25%">
                RECORDED TIME:</td>
            <td class="style22" nowrap="nowrap">
                <asp:TextBox ID="recorded_date" runat="server"></asp:TextBox>
            </td>
            <td class="style23" nowrap="nowrap">
                RECORDED DATE:</td>
            <td class="style24" nowrap="nowrap" width="25%">
                <asp:TextBox ID="recorded_time" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21" nowrap="nowrap" width="25%">
                CONTACT NUMBER:</td>
            <td class="style22" nowrap="nowrap">
                <asp:TextBox ID="contact_no" runat="server"></asp:TextBox>
            </td>
            <td class="style23" nowrap="nowrap">
                ATTACHMENT:</td>
            <td class="style24" nowrap="nowrap" width="25%">
                <asp:TextBox ID="attachment" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td nowrap="nowrap" width="25%">
                &nbsp;</td>
            <td class="style13" nowrap="nowrap">
                &nbsp;</td>
            <td class="style15" nowrap="nowrap">
                <asp:Button ID="Button1" runat="server" Height="29px" Text="SUBMIT" 
                    Width="75px" onclick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Height="27px" 
                    Text="EDIT" Width="71px" onclick="Button3_Click1" />
            </td>
            <td nowrap="nowrap" style="width: 25%" width="25%">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="LOG OUT" />
            </td>
        </tr>
        <tr>
            <td colspan="4" nowrap="nowrap" style="text-align: center">
                <asp:Label ID="Label1" runat="server" style="color: #FF0000; font-weight: 700" 
                    Text="YOUR COMPLAINT HAS BEEN SUBMITTED SUCCESSFULLY"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4" nowrap="nowrap" style="text-align: center">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
