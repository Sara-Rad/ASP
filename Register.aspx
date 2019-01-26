<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
    <div id="divPageMessage" runat="server" class="pageMessages">
        <asp:Literal ID="litPageMessage" runat="server"></asp:Literal>
    </div>

    <fieldset >
        <legend>Register</legend>
        <div class="field">
            <div class="lable">
                <asp:Label ID="lblUserName" runat="server" Text="UserName:" />
            </div>
            <div class="controls">
                <asp:TextBox ID="txtUserName" runat="server" MaxLength="40"
                    CssClass="username" />
                <asp:RequiredFieldValidator ID="rfvUserName" runat="server"
                    ControlToValidate="txtUserName" CssClass="validator"
                    Display="Dynamic" EnableClientScript="true" 
                    SetFocusOnError="true" Text="UserName Is Required . . ."
                     />
                <asp:RegularExpressionValidator ID="revUserName" runat="server"
                    ControlToValidate="txtUserName" CssClass="validator"
                    Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                    Text="UserName Is Not Valid . . ."
                    ValidationExpression="[a-zA-Z0-9]{4,20}" />
            </div>
        </div>
        <div class="field">
            <div class="lable">
                <asp:Label ID="lblPassword" runat="server" Text="Password:" />
            </div>
            <div class="controls">
                <asp:TextBox ID="txtPassword" runat="server" MaxLength="40"
                    CssClass="password" />
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                    ControlToValidate="txtPassword" CssClass="validator"
                    Display="Dynamic" EnableClientScript="true" 
                    SetFocusOnError="true" Text="Password Is Required . . ."
                     />
                 <asp:RegularExpressionValidator ID="revPassword" runat="server"
                    ControlToValidate="txtPassword" CssClass="validator"
                    Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                    Text="Password Is Not Valid . . ."
                    ValidationExpression="[a-zA-Z0-9]{6,20}" />
            </div>
        </div>

          <div class="field">
            <div class="lable">
                <asp:Label ID="lblConfirmPassword" runat="server" Text="ConfirmPassword:" />
            </div>
            <div class="controls">
                <asp:TextBox ID="txtConfirmPassword" runat="server" MaxLength="40"
                    CssClass="password" />
                <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server"
                    ControlToValidate="txtConfirmPassword" CssClass="validator"
                    Display="Dynamic" EnableClientScript="true" 
                    SetFocusOnError="true" Text="Password Is Required . . ." 
                    />
                  <asp:CompareValidator ID="cmvConfirmPassword" runat="server"
                    ControlToValidate="txtConfirmPassword" CssClass="validator"
                    Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                    Text="Confirm Password Is Not Equal To Password . . ."
                    Type="String" CultureInvariantValues="true" ControlToCompare="txtPassword"
                      Operator="Equal" />
            </div>
        </div>
         <div class="field">
            <div class="lable">
                <asp:Label ID="lblMail" runat="server" Text="Mail:" />
            </div>
            <div class="controls">
                <asp:TextBox ID="txtMail" runat="server" MaxLength="40"
                    CssClass="mail" />
                <asp:RequiredFieldValidator ID="rfvMail" runat="server"
                    ControlToValidate="txtMail" CssClass="validator"
                    Display="Dynamic" EnableClientScript="true" 
                    SetFocusOnError="true" Text="Mail Is Required . . ."
                     />
                <asp:RegularExpressionValidator ID="revMail" runat="server"
                    ControlToValidate="txtMail" CssClass="validator"
                    Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                    Text="Mail Is Not Valid . . ."
                    ValidationExpression="\w+@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
               
            </div>
        </div>

          <div class="field">
            <div class="lable">
                <asp:Label ID="lblConfirmMail" runat="server" Text="ConfirmMail:" />
            </div>
            <div class="controls">
                <asp:TextBox ID="txtConfirmMail" runat="server" MaxLength="40"
                    CssClass="mail" />
                <asp:RequiredFieldValidator ID="rfvConfirmMail" runat="server"
                    ControlToValidate="txtConfirmMail" CssClass="validator"
                    Display="Dynamic" EnableClientScript="true" 
                    SetFocusOnError="true" Text="Mail Is Required . . ." 
                 />
               <asp:CompareValidator ID="cmvConfirmMail" runat="server"
                    ControlToValidate="txtConfirmMail" CssClass="validator"
                    Display="Dynamic" EnableClientScript="true" SetFocusOnError="true"
                    Text="Confirm Mail Is Not Equal To Mail . . ."
                    Type="String" CultureInvariantValues="true" ControlToCompare="txtMail"
                      Operator="Equal" />

            </div>
              </div>
              <div class="field">
                  <div class="lable">
                      <asp:Label ID="lblAge" runat="server" Text="Age:" />
                  </div>
                  <div class="controls">
                      <asp:TextBox ID="txtAge" runat="server" MaxLength="40" CssClass="username" />
                     <asp:CustomValidator ID="csvAge" runat="server" CssClass="validator"
                         Display="Dynamic" EnableClientScript="false" SetFocusOnError="true"
                         Text="Age Range Error (25-30) or 42" ValidateEmptyText="false"
                         ClientValidationFunction="" OnServerValidate="csvAge_ServerValidate" />
              </div>
        </div>
        <div class="button">
            <asp:Button ID="btnRegister" runat="server" Text="Register" AccessKey="R" OnClick="btnRegister_Click" />
            &nbsp
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" AccessKey="C" />
        </div>
    </fieldset>
</asp:Content>

