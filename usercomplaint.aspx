<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usercomplaint.aspx.cs" Inherits="Tinplate.usercomplaint" %>
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
            background-color: #FF9966;
            font-size: x-large;
        }
        .style9
        {
            height: 23px;
            background-color: #FFFFFF;
        }
        #TextArea1
        {
            height: 70px;
            width: 273px;
        }
        .style10
        {
            background-color: #FFFFFF;
        }
        .style11
        {
            color: #FF0000;
        }
        .style12
        {
            width: 100%;
            text-align: center;
            background-color: #66FFFF;
            font-size: x-large;
            height: 53px;
        }
        .style13
        {
            height: 23px;
            background-color: #FFFFFF;
            color: #FF0000;
        }
        .style14
        {
            color: #000000;
        }
        .style15
        {
            background-color: #FFFFFF;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style7">
        <tr>
            <td class="style8" colspan="2" width="50%">
              <marquee  behavoiur = " scroll" direction = "left" onmouseover="this.stop();" 
                onmouseout="this.start();" style="height: 36px; width: 542px">WELCOME TO
                USER COMPLAINT FORM</marquee></td>
        </tr>
        <tr>
            <td width="50%">
                &nbsp;</td>
            <td width="50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="50%" class="style12" colspan="2">
                <strong>WELCOME
               &nbsp;&nbsp; 
                <asp:TextBox ID="welcome" runat="server" Height="22px" 
                    Width="148px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td width="50%">
                &nbsp;</td>
            <td width="50%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="50%">
                COMPLAINT ID:</td>
            <td width="50%">
                <asp:TextBox ID="complaint_id" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="50%" class="style10">
                ASSET NUMBER:<span class="style11">*</span></td>
            <td width="50%" class="style10">
                <asp:TextBox ID="asset_no" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="asset_no" ErrorMessage="please enter value" 
                    style="color: #FF0000" ValidationGroup="submit"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="50%" class="style10">
                USER NAME:<span class="style11">*</span></td>
            <td width="50%" class="style10">
                <asp:TextBox ID="user_name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="user_name" ErrorMessage="please enter value" 
                    style="color: #FF0000" ValidationGroup="submit"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="50%" class="style15">
                DEPARTMENT:<span class="style11">*</span></td>
            <td width="50%" class="style15">
                <asp:TextBox ID="department" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="department" ErrorMessage="please enter value" 
                    style="color: #FF0000" ValidationGroup="submit"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="50%" class="style10">
                CONTACT&nbsp; NUMBER:<span class="style11">*</span></td>
            <td width="50%" class="style10">
                <asp:TextBox ID="contact_no" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="contact_no" ErrorMessage="please enter value" 
                    style="color: #FF0000" ValidationGroup="submit"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="50%" class="style10">
                RECORDED TIME:</td>
            <td width="50%" class="style10">
                <asp:TextBox ID="recorded_time" runat="server" Height="30px" Width="137px" 
                    style="margin-left: 0px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="50%" class="style10">
                RECORDED DATE:</td>
            <td width="50%" class="style10">
                <asp:TextBox ID="recorded_date" runat="server" Height="29px" Width="137px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="50%" class="style13">
                <span class="style14">COMPLAINT DETAILS:</span>*</td>
            <td width="50%" class="style9">
                <asp:TextBox ID="complaint_details" runat="server" Height="60px" TextMode="MultiLine" 
                    Width="236px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="complaint_details" ErrorMessage="please enter description" 
                    style="color: #FF0000" ValidationGroup="submit"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="50%" class="style10">
                ATTACHMENTS:</td>
            <td width="50%" class="style10">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td width="50%" class="style10">
                &nbsp;</td>
            <td width="50%" class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="50%">
                &nbsp;</td>
            <td width="50%">
                <asp:TextBox ID="photoattachment" runat="server" Height="18px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="50%">
                &nbsp;</td>
            <td width="50%">
                <asp:Button ID="Button1" runat="server" Text="CONFIRM" onclick="Button1_Click" 
                    ValidationGroup="submit" />
            </td>
        </tr>
        <tr>
            <td width="50%">
                &nbsp;</td>
            <td width="50%">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
