<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ChangPassword.aspx.cs" Inherits="AdminZone_ChangPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <script>
          $(document).ready(function () {

              $("#<%=btnsave.ClientID%>").click(function () {
                var Subject, msg,op;
                Subject = $("#<%=TxtoldPassword.ClientID%>").val()
                if (Subject.length < 1) {
                    $("#<%=TxtoldPassword.ClientID%>").css("border", "2px solid Green").focus();
                    return false;
                }
                msg = $("#<%=TxtNewPass.ClientID%>").val()
                if (msg.length < 1) {
                    $("#<%=TxtNewPass.ClientID%>").css("border", "2px solid Green").focus();
                    return false;
                }
                  op = $("#<%=TxtConFirm.ClientID%>").val()
                  if (msg.length < 1) {
                      $("#<%=TxtConFirm.ClientID%>").css("border", "2px solid Green").focus();
                    return false;
                }
            })
        })
                </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div  class="col-sm-12 text-center" style="padding-top:10px;height:80px;background-image:url('../images/header1.jpg');background-size:100% 100%;">
        <span style="font-size:38px;color:orange;">Change</span><span style="font-size:38px;color:white;"> Password</span>
    </div>
    <div class="col-sm-12" style="min-height:450px;">
        <br />
        <div class="col-sm-2"></div>
        <div class="col-sm-8" style="background-color:#f6f6f6;min-height:450px;border:1px solid orange;">
            <br /><br /><br />
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
            <div class="input-group">
                <span class="input-group-addon" id="sizing-addon1"><span class="glyphicon glyphicon-user" style="color:orange;font-size:22px;"></span></span>
        <asp:TextBox runat="server" ID="TxtoldPassword" TextMode="Password" class="form-control" placeholder="Enter Old Password" aria-describedby="sizing-addon2" style="height:40px;width:100%;"></asp:TextBox>
            </div>
            <br /><br /><br />
            <div class="input-group">
                <span class="input-group-addon" id="Span1"><span class="glyphicon glyphicon-user" style="color:orange;font-size:22px;"></span></span>
        <asp:TextBox runat="server" ID="TxtNewPass" TextMode="Password" class="form-control" placeholder="Enter New Password" aria-describedby="sizing-addon2" style="height:40px;width:100%;"></asp:TextBox>
            </div>
            <br /><br /><br />
            <div class="input-group">
                <span class="input-group-addon" id="Span2"><span class="glyphicon glyphicon-user" style="color:orange;font-size:22px;"></span></span>
        <asp:TextBox runat="server" ID="TxtConFirm" TextMode="Password" class="form-control" placeholder="Enter Confirm Password" aria-describedby="sizing-addon2" style="height:40px;width:100%;"></asp:TextBox>
            </div>
            <br /><br /><br />
   <center><asp:Button ID="btnsave" runat="server" Text="Submit" style="border:none;background-color:orange;font-size:22px;height:35px;width:100%;color:white;border-radius:3px;" OnClick="btnsave_Click"/></center> 
  <br /><br />
        </div>
        <div class="col-sm-2"></div>
    </div>
</asp:Content>

