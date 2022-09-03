<%@ Page Title="" Language="C#" MasterPageFile="~/TutorZone/TutorMasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="TutorZone_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
.out{
min-height:100%;
width:100%;
}

#tag{
font-size:70px;
font-family:Adobe Arabic;
color:white;
margin-top:50%;
margin-bottom:15%;

}
</style>
    <script>
        $(document).ready(function () {
            //Validate Name
            $("#<%=BtnSign.ClientID%>").click(function () {
                var opass, npass, cpass;
                opass = $("#<%=TxtOpass.ClientID%>").val()
                if (opass.length < 1) {
                    $("#<%=TxtOpass.ClientID%>").css("border", "2px solid Green").focus();
                    return false;
                }
                npass = $("#<%=TxtNPass.ClientID%>").val()
                if (npass.length < 1) {
                    $("#<%=TxtNPass.ClientID%>").css("border", "2px solid Green").focus();
                    return false;
                }
                cpass = $("#<%=TxtCpass.ClientID%>").val()
                if (cpass.length < 1) {
                    $("#<%=TxtCpass.ClientID%>").css("border", "2px solid Green").focus();
                    return false;
                }
            })
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container out">
        <div class="row">
                <div class="col-sm-12 text-center" style="min-height:100px;padding-top:20px; background-image:url('/images/header1.jpg');background-size:cover;background-repeat:no-repeat;">
                    <span style="color:#fba822;font-size:30px;">Change</span><span style="color:white;font-size:30px;">&nbsp;Password</span>
                </div>
                  </div>
        <div class="col-sm-12" style="min-height:50px"></div>
<div class="row">
   
<div class="col-sm-12 im">
    <div class="col-sm-3"></div>
    <div class="col-sm-6"  style="min-height:60px;border-radius:10px;">
        
       <div class="col-sm-3"></div>
        <div class="col-sm-9"></div>
        <asp:Label ID="LblMsg" runat="server" style="font-size:20px;text-align:center"></asp:Label>
  <h4 style="color:gray;">Old Password</h4>
     <asp:Textbox ID="TxtOpass" runat="server" TextMode="Password" Placeholder=" Enter Old Password" style="border-radius:5px;width:100%;height:40px;background-color:#eeeeee;border:none"/><br /><br />

<h4 style="color:gray;">New Password</h4>
 <asp:Textbox ID="TxtNPass"  required="true" TextMode="Password" runat="server" Placeholder="  Enter Your Password" style="border-radius:5px;width:100%;height:40px;background-color:#eeeeee;border:none"/><br /><br />
        <h4 style="color:gray;">Confirm Password</h4>
 <asp:Textbox ID="TxtCpass" runat="server" required="true" TextMode="Password" Placeholder="  Enter Your Confirm Password" style="border-radius:5px;width:100%;height:40px;background-color:#eeeeee;border:none"/><br /><br />
<br />
<asp:Button ID="BtnSign" runat="server" Text="Sign In" style="width:20%;height:40px;background:orange;color:white;font-size:20px;height:40px;border:none" OnClick="BtnSign_Click"></asp:Button>

</div>
    <div class="col-sm-3">
</div>
</div>

</div>
   </div> 
</asp:Content>

