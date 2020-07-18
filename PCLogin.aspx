<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="PCLogin.aspx.cs" Inherits="PasswordExpressProfileWebApp.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
        <div id="page_content">
            <div class="col-left">
                <div class="m_box green">
                    <div class="m_box_hdr green">VALIDATE USER</div>
                    <div class="m_box_bdy">
                        <form runat="server" method="post" action="PCUserInfo.aspx"  ID="LoginFormID" name="LoginForm" autocomplete="off">
                            <table border="0">
                                <tr>
                                    <td>
                                        <p class="fieldlabel">NUID:</p>
                                    </td>
                                    <td>
                                        <asp:TextBox runat="server" ID="nuid" name="nuid" value="" maxlength="50" size="20" /></td>
                                    <td></td>
                                </tr>
                            </table>
                            <br>
                            <input type="reset" value="Reset" class="button" />
                            <asp:Button  ID="NextButtonID" runat="server" Text="Next"  CssClass="button"  />

                        </form>
                    </div>
                </div>
            </div>
            <div style="clear: both"></div>
            <div id="loading">Loading</div>
        </div>
        <!-- end PAGE CONTENT -->

    </div>
    <!-- end CONTAINER -->
</asp:Content>
