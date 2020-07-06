<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="fmsreport.aspx.cs" Inherits="Tinplate.fmsreport" %>
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
            height: 26px;
        }
        .style13
        {
            height: 23px;
            width: 27%;
        }
        .style14
        {
            width: 27%;
        }
        .style15
        {
            height: 26px;
            width: 27%;
        }
        .style16
        {
            height: 23px;
            width: 28%;
        }
        .style17
        {
            width: 28%;
        }
        .style18
        {
            height: 26px;
            width: 28%;
        }
        .style19
        {
            color: #FF0000;
        }
        .style20
        {
            width: 24%;
        }
        .style21
        {
            height: 26px;
            width: 24%;
        }
        .style22
        {
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
    <p class="style22" 
        style="text-align: center; font-weight: 700; background-color: #CCFF66">
        <marquee direction = "left" style="height: 27px; width: 371px">WELCOME 
        TO TOTAL RECORD CALL</marquee></p>
    <table class="style7">
        <tr>
            <td width="25%">
                CALL NUMBER:</td>
            <td width="25%" class="style14">
                <asp:TextBox ID="call_no" runat="server"></asp:TextBox>
            </td>
            <td width="25%" class="style20">
                COMPLAINT ID:</td>
            <td width="25%">
                <asp:TextBox ID="complaint_id" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="25%">
                ASSET NUMBER:</td>
            <td width="25%" class="style14">
                <asp:TextBox ID="asset_no" runat="server"></asp:TextBox>
            </td>
            <td width="25%" class="style20">
                USER NAME:</td>
            <td width="25%">
                <asp:TextBox ID="user_name" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="25%">
                DEPARTMENT:</td>
            <td width="25%" class="style14">
                <asp:TextBox ID="department" runat="server" 
                   ></asp:TextBox>
            </td>
            <td width="25%" class="style20">
                CONTACT NUMBER:</td>
            <td width="25%">
                <asp:TextBox ID="contact_no" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="25%">
                COMPLAINT DETAILS:</td>
            <td width="25%" class="style14">
                <asp:TextBox ID="complaint_detail" runat="server" TextMode="MultiLine" Height="41px" 
                    Width="213px"></asp:TextBox>
            </td>
            <td width="25%" class="style20">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%" class="style9">
                COMPLAINT CATEGORY:<span class="style19">*</span></td>
            <td width="25%" class="style15">
                <asp:DropDownList ID="complaint_category" runat="server" Height="29px" 
                    Width="129px">
                    <asp:ListItem>None</asp:ListItem>
                    <asp:ListItem>A1-Layer Product</asp:ListItem>
                    <asp:ListItem>A2-</asp:ListItem>
                    <asp:ListItem>A3-</asp:ListItem>
                    <asp:ListItem>A4-H/W No Spare Issue</asp:ListItem>
                    <asp:ListItem>A5- H/W Spare NA</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="complaint_category" ErrorMessage="Please enter value" 
                    style="color: #FF0000" ValidationGroup="final"></asp:RequiredFieldValidator>
            </td>
            <td width="25%" class="style21">
                COMPLAINT SUB CATEGORY:<span class="style19">*</span></td>
            <td width="25%" class="style9">
                <asp:DropDownList ID="complaint_subcategory" runat="server" Height="27px" 
                    Width="128px">
                    <asp:ListItem>None</asp:ListItem>
                    <asp:ListItem>Service Request</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="complaint_subcategory" ErrorMessage="Please enter value" 
                    style="color: #FF0000" ValidationGroup="final"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="25%">
                LOG DATE:</td>
            <td width="25%" class="style14">
                <asp:TextBox ID="log_date" runat="server"></asp:TextBox>
            </td>
            <td width="25%" class="style20">
                LOG TIME:</td>
            <td width="25%">
                <asp:TextBox ID="log_time" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td width="25%">
                SELECT THE TEAM :<span class="style19">*</span></td>
            <td colspan="3" style="width: 50%">
                <asp:RadioButton ID="RadioButton1" runat="server" Text="L1 TEAM" 
                    GroupName="report" oncheckedchanged="RadioButton1_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" Text="L2 TEAM" 
                    GroupName="report" oncheckedchanged="RadioButton2_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton3" runat="server" Text="L3 TEAM" 
                    GroupName="report" oncheckedchanged="RadioButton3_CheckedChanged" />&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="SELECT" 
                    ValidationGroup="report" Height="20px" onclick="Button1_Click" 
                    style="text-align: center" Width="77px" />
            </td>
        </tr>
       
    </table>
        <table class="style7" __designer:mapid="92">
            <tr __designer:mapid="93">
                <td width="25%" __designer:mapid="94">
                    &nbsp;</td>
                <td class="style17" __designer:mapid="95">
                    &nbsp;</td>
                <td class="style14" __designer:mapid="96">
                    &nbsp;</td>
                <td width="25%" __designer:mapid="97">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="98">
                <td width="25%" class="style9" __designer:mapid="99">
                </td>
                <td class="style18" __designer:mapid="9a">
                    CALL RESOLVED BY L1 TEAM*</td>
                <td class="style15" __designer:mapid="9b">
                    <asp:DropDownList ID="drop_l1" runat="server" Height="22px" Width="130px">
                        <asp:ListItem>None</asp:ListItem>
                        <asp:ListItem>ESPL Team L1</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="drop_l1" ErrorMessage="Please enter value" 
                        style="color: #FF0000" ValidationGroup="final"></asp:RequiredFieldValidator>
                </td>
                <td width="25%" class="style9" __designer:mapid="a0">
                </td>
            </tr>
            <tr __designer:mapid="a1">
                <td width="25%" __designer:mapid="a2">
                    &nbsp;</td>
                <td class="style17" __designer:mapid="a3">
                    &nbsp;</td>
                <td class="style14" __designer:mapid="a4">
                    &nbsp;</td>
                <td width="25%" __designer:mapid="a5">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="a1">
                <td width="25%" __designer:mapid="a2" colspan="4" style="width: 50%">
        <table class="style7" __designer:mapid="a6">
            <tr __designer:mapid="a7">
                <td width="25%" __designer:mapid="a8">
                    &nbsp;</td>
                <td class="style14" __designer:mapid="a9">
                    &nbsp;</td>
                <td width="25%" __designer:mapid="aa">
                    &nbsp;</td>
                <td class="style17" __designer:mapid="ab">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="ac">
                <td width="25%" __designer:mapid="ad">
                    &nbsp;</td>
                <td class="style14" __designer:mapid="ae">
                    ASSIGNED DATE:<span class="style19" __designer:mapid="af">*</span></td>
                <td width="25%" __designer:mapid="b0">
                    <asp:TextBox ID="l2_date" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="l2_date" ErrorMessage="Please enter value" 
                        style="color: #FF0000" ValidationGroup="final"></asp:RequiredFieldValidator>
                </td>
                <td class="style17" __designer:mapid="b3">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="b4">
                <td width="25%" __designer:mapid="b5">
                    &nbsp;</td>
                <td class="style14" __designer:mapid="b6">
                    ASSIGNED TIME:<span class="style19" __designer:mapid="b7">*</span></td>
                <td width="25%" __designer:mapid="b8">
                    <asp:TextBox ID="l2_time" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="l2_time" ErrorMessage="Please enter value" 
                        style="color: #FF0000" ValidationGroup="final"></asp:RequiredFieldValidator>
                </td>
                <td class="style17" __designer:mapid="bb">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="bc">
                <td width="25%" __designer:mapid="bd">
                    &nbsp;</td>
                <td class="style14" __designer:mapid="be">
                    ALL RESOLVED BY L2 TEAM:<span class="style19" __designer:mapid="bf">*</span></td>
                <td width="25%" __designer:mapid="c0">
                    <asp:DropDownList ID="drop_l2" runat="server" Height="26px" Width="125px">
                        <asp:ListItem>None</asp:ListItem>
                        <asp:ListItem>TCIL Team L2</asp:ListItem>
                        <asp:ListItem>JSS Team L2</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="drop_l2" ErrorMessage="Please enter value" 
                        style="color: #FF0000" ValidationGroup="final"></asp:RequiredFieldValidator>
                </td>
                <td class="style17" __designer:mapid="c6">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="c7">
                <td width="25%" __designer:mapid="c8">
                    &nbsp;</td>
                <td class="style14" __designer:mapid="c9">
                    &nbsp;</td>
                <td width="25%" __designer:mapid="ca">
                    &nbsp;</td>
                <td class="style17" __designer:mapid="cb">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="c7">
                <td width="25%" __designer:mapid="c8" colspan="4">
        <table class="style7" __designer:mapid="6f">
            <tr __designer:mapid="70">
                <td width="25%" __designer:mapid="71">
                    &nbsp;</td>
                <td class="style14" __designer:mapid="72">
                    &nbsp;</td>
                <td class="style17" __designer:mapid="73">
                    &nbsp;</td>
                <td width="25%" __designer:mapid="74">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="75">
                <td class="style8" width="25%" __designer:mapid="76">
                </td>
                <td class="style13" __designer:mapid="77">
                    ASSIGNED DATE:<span class="style19" __designer:mapid="78">*</span></td>
                <td class="style16" __designer:mapid="79">
                    <asp:TextBox ID="l3_date" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="l3_date" ErrorMessage="Please enter value" 
                        style="color: #FF0000" ValidationGroup="final"></asp:RequiredFieldValidator>
                </td>
                <td class="style8" width="25%" __designer:mapid="7c">
                </td>
            </tr>
            <tr __designer:mapid="7d">
                <td width="25%" __designer:mapid="7e">
                    &nbsp;</td>
                <td class="style14" __designer:mapid="7f">
                    ASSIGNED TIME:<span class="style19" __designer:mapid="80">*</span></td>
                <td class="style17" __designer:mapid="81">
                    <asp:TextBox ID="l3_time" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="l3_time" ErrorMessage="Please enter value" 
                        style="color: #FF0000" ValidationGroup="final"></asp:RequiredFieldValidator>
                </td>
                <td width="25%" __designer:mapid="84">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="85">
                <td width="25%" __designer:mapid="86">
                    &nbsp;</td>
                <td class="style14" __designer:mapid="87">
                    CALL RESOLVED BY L3 TEAM:<span class="style19" __designer:mapid="88">*</span></td>
                <td class="style17" __designer:mapid="89">
                    <asp:TextBox ID="l3_call" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="l3_call" ErrorMessage="Please enter value" 
                        style="color: #FF0000" ValidationGroup="final"></asp:RequiredFieldValidator>
                </td>
                <td width="25%" __designer:mapid="8c">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="8d">
                <td width="25%" __designer:mapid="8e">
                    &nbsp;</td>
                <td class="style14" __designer:mapid="8f">
                    &nbsp;</td>
                <td class="style17" __designer:mapid="90">
                    &nbsp;</td>
                <td width="25%" __designer:mapid="91">
                    &nbsp;</td>
            </tr>
        </table>
                </td>
            </tr>
        </table>
                </td>
            </tr>
        </table>
    
    <table class="style7">
        <tr>
            <td width="25%">
                CLOSING DATE:<span class="style19">*</span></td>
            <td width="25%">
                <asp:TextBox ID="closing_date" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="closing_date" ErrorMessage="Please enter value" 
                    style="color: #FF0000" ValidationGroup="final"></asp:RequiredFieldValidator>
            </td>
            <td width="25%">
                CLOSING TIME:<span class="style19">*</span></td>
            <td width="25%">
                <asp:TextBox ID="closing_time" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="closing_time" ErrorMessage="Please enter value" 
                    style="color: #FF0000" ValidationGroup="final"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8" width="25%">
                ASSIGNED ENGG. NAME:<span class="style19">*</span></td>
            <td class="style8" width="25%">
                <asp:TextBox ID="eng_name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="eng_name" ErrorMessage="Please enter value" 
                    style="color: #FF0000" ValidationGroup="final"></asp:RequiredFieldValidator>
            </td>
            <td class="style8" width="25%">
                ROOT CAUSE:<span class="style19">*</span></td>
            <td class="style8" width="25%">
                <asp:TextBox ID="root_cause" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="root_cause" ErrorMessage="Please enter value" 
                    style="color: #FF0000" ValidationGroup="final"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="25%">
                CORRECTIVE ACTION:<span class="style19">*</span></td>
            <td width="25%">
                <asp:TextBox ID="corrective_action" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="corrective_action" ErrorMessage="Please enter value" 
                    style="color: #FF0000" ValidationGroup="final"></asp:RequiredFieldValidator>
            </td>
            <td width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                CATEGORY:<span class="style19">*</span></td>
            <td width="25%">
                <asp:TextBox ID="category" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="category" ErrorMessage="Please enter value" 
                    style="color: #FF0000" ValidationGroup="final"></asp:RequiredFieldValidator>
            </td>
            <td width="25%">
                SUB CATEGORY 2:<span class="style19">*</span></td>
            <td width="25%">
                <asp:TextBox ID="sub_category2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                    ControlToValidate="sub_category2" ErrorMessage="Please enter value" 
                    style="color: #FF0000" ValidationGroup="final"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="25%">
                STATUS:<span class="style19">*</span></td>
            <td width="25%">
                <asp:DropDownList ID="status" runat="server" Height="22px" Width="128px">
                    <asp:ListItem>None</asp:ListItem>
                    <asp:ListItem>open</asp:ListItem>
                    <asp:ListItem>closed</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="status" ErrorMessage="Please enter value" 
                    style="color: #FF0000" ValidationGroup="final"></asp:RequiredFieldValidator>
            </td>
            <td width="25%">
                RESOLUTION TIME:<span class="style19">*</span></td>
            <td width="25%">
                <asp:TextBox ID="resolution_time" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                    ControlToValidate="resolution_time" ErrorMessage="Please enter value" 
                    style="color: #FF0000" ValidationGroup="final"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td width="25%">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="SUBMIT" 
                    ValidationGroup="final" />
            </td>
            <td width="25%">
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    Text="LOG OUT" />
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center; font-size: large; color: #FF0000">
                <asp:Label ID="Label1" runat="server" Text="RECORD SUCCESSFULLY SUMITED" 
                    style="font-weight: 700"></asp:Label>
            </td>
        </tr>
    </table>
    
    </asp:Content>
