<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userfeedbackform.aspx.cs" Inherits="Tinplate.userfeedbackform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style7
        {
            width: 100%;
        }
        .style8
        {
            text-align: center;
            width: 100%;
            font-size: x-large;
            background-color: #FF9933;
        }
        .style9
        {
            font-size: large;
        }
        .style10
        {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style7">
        <tr>
            <td class="style8" colspan="2" nowrap="nowrap" width="50%">
              <marquee  behavoiur = " scroll" direction = "left" onmouseover="this.stop();" 
                onmouseout="this.start();"> WELCOME TO
                USER FEEDBACK FORM </marquee> </td>
        </tr>
        <tr>
            <td nowrap="nowrap" width="50%">
                &nbsp;</td>
            <td nowrap="nowrap" width="50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td nowrap="nowrap" width="50%" style="text-align: right">
                Is your problem resolved?</td>
            <td nowrap="nowrap" width="50%">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>yes</asp:ListItem>
                    <asp:ListItem>no</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td nowrap="nowrap" width="50%">
                &nbsp;</td>
            <td nowrap="nowrap" width="50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td nowrap="nowrap" width="50%" class="style10">
                Are you satisfied by the service provided?</td>
            <td nowrap="nowrap" width="50%">
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>yes</asp:ListItem>
                    <asp:ListItem>no</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td nowrap="nowrap" width="50%">
                &nbsp;</td>
            <td nowrap="nowrap" width="50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" nowrap="nowrap" style="width: 100%; text-align: center" 
                width="50%" class="style9">
                In scale of 1 to 5 how much you want to rate our service overall?</td>
        </tr>
        <tr>
            <td nowrap="nowrap" width="50%">
                &nbsp;</td>
            <td nowrap="nowrap" width="50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" nowrap="nowrap" style="width: 100%; text-align: center" 
                width="50%">
              <center> <asp:RadioButtonList ID="RadioButtonList3" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>VERY BAD</asp:ListItem>
                    <asp:ListItem>BAD</asp:ListItem>
                    <asp:ListItem>OK</asp:ListItem>
                    <asp:ListItem>GOOD</asp:ListItem>
                    <asp:ListItem>EXCELLENT</asp:ListItem>
                </asp:RadioButtonList>
                  <br />
                  <asp:Button ID="Button1" runat="server" Text="SUBMIT" />
                </center>
            </td> 
        </tr>
    </table>
</asp:Content>
