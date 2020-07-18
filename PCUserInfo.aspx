<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="PCUserInfo.aspx.cs" Inherits="PasswordExpressProfileWebApp.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="container">
        <div id="page_content">
            <div class="col-left">
                <div class="m_box green">
                    <div class="m_box_hdr green">SECUREVOICE PROFILE</div>
                    <div class="m_box_bdy">
                        <form action="PCUserInfo.asp" method="post" id="form2" name="form2" autocomplete="off">
                            <table id="Table2">
                                <tr>
                                    <td>
                                        <p class="fieldlabel">SecureVoice Registration PIN (cannot be changed here)</p>
                                    </td>
                                    <td>
                                        <input size="20" name="PBUserField" pename="pin" value="" maxlength="6">
                                        <div id="pinage" style="padding: 2px 0px; color: #888">
                                        * Changes in 180 days.</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="color: #333">
                                        <p>This is the PIN you will enter on the phone when prompted to do so during SecureVoice registration. If  "DISABLED" is displayed, then you are already registered.</p>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="fieldlabel">Select Date (MMDDYYYY) </p>
                                    </td>
                                    <td>
                                        <input size="20" name="PBUserField" pename="secretdate" value="" maxlength="6">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="color: #333">This is the secret date you created during SecureVoice registration. Be ready to provide it when you request the password reset option when calling the Service Desk.
							        </td>
                                </tr>
                            </table>
                            <br>

                            <input type="button" value="Finish" id="button1" name="button1" class="button">
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
