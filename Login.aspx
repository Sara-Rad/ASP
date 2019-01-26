<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    <div id="divPageMessage" runat="server" class="pageMessages">
        <asp:Literal ID="litPageMessage" runat="server" />
    </div>
    <fieldset>
        <legend>Login</legend>
        <asp:ValidationSummary ID="myLoginValidation" runat="server"
            EnableClientScript="true" CssClass="validator" DisplayMode="BulletList"
            ShowSummary="true" ShowMessageBox="false" HeaderText="Please Fix Below Errors And Then Continue . . ."
            ValidationGroup="Login" />

        <div class="field">
            <div class="lable">
                <asp:Label ID="lblUserName" runat="server" Text="UserName:" />
            </div>
            <div class="controls">
                <asp:TextBox ID="txtUserName" runat="server" MaxLength="40" CssClass="username" />

                <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName"
                    Display="Dynamic" SetFocusOnError="true" EnableClientScript="true"
                    CssClass="validator" Text="*" ErrorMessage="UserName Is Required . . ." 
                    ValidationGroup="Login" />

                <asp:RegularExpressionValidator ID="revUserName" runat="server" ControlToValidate="txtUserName"
                    Display="Dynamic" SetFocusOnError="true" EnableClientScript="true"
                    CssClass="validator" Text="*" ErrorMessage="UserName Is Not Valid . . ."
                    ValidationExpression="[a-zA-Z0-9]{4,20}" 
                    ValidationGroup="Login" />

            </div>
        </div>

        <div class="field">
            <div class="lable">
                <asp:Label ID="lblPassword" runat="server" Text="Password:" />
            </div>
            <div class="controls">
                <asp:TextBox ID="txtPassword" runat="server" MaxLength="40" CssClass="password" TextMode="Password" />
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                    Display="Dynamic" SetFocusOnError="true" EnableClientScript="true"
                    CssClass="validator" Text="*" ErrorMessage="Password Is Required . . ." 
                    ValidationGroup="Login" />

                <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword"
                    Display="Dynamic" SetFocusOnError="true" EnableClientScript="true"
                    CssClass="validator" Text="*" ErrorMessage="Password Is Not Valid . . ."
                    ValidationExpression="[a-zA-Z0-9]{6,20}" 
                    ValidationGroup="Login" />

            </div>
        </div>

        <div class="button">
            <asp:Button ID="btnLogin" runat="server" Text="Login" AccessKey="L" ValidationGroup="Login" />
            &nbsp
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" AccessKey="C" />
        </div>
    </fieldset>
    <br />
    <fieldset>

        <asp:ValidationSummary ID="myForgetPasswordValidation" runat="server"
            EnableClientScript="true" CssClass="validator" DisplayMode="BulletList"
            ShowSummary="true" ShowMessageBox="false" HeaderText="Please Fix Below Errors And Then Continue . . ."
            ValidationGroup="ForgetPassword" />

        <legend>Forget Password</legend>
        <div class="field">
            <div class="lable">
                <asp:Label ID="lblForgetPassword" runat="server" Text="ForgetPassword:" />
            </div>
            <div class="controls">
                <asp:TextBox ID="txtForgetPassword" runat="server" MaxLength="40" CssClass="password" />

                <asp:RequiredFieldValidator ID="rfvForgetPassword" runat="server" CssClass="validator"
                    Display="Dynamic" SetFocusOnError="true" EnableClientScript="true" Text="*"
                    ErrorMessage="Please Type Your UserName . . ." ControlToValidate="txtForgetPassword"
                    ValidationGroup="ForgetPassword" />
            </div>
            <div class="button">
                <asp:Button ID="btnForgetPassword" runat="server" Text="Send" AccessKey="S" ValidationGroup="ForgetPassword"  />
            </div>
        </div>
    </fieldset>
</asp:Content>

