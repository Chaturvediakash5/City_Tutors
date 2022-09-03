<%@ Page Title="" Language="C#" MasterPageFile="~/TutorZone/TutorMasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="TutorZone_Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        $(document).ready(function () {
            
            $("#<%=btnFeed.ClientID%>").click(function () {
                var Subject,msg;
                Subject = $("#<%=TxtSubject.ClientID%>").val()
                if (Subject.length < 1) {
                    $("#<%=TxtSubject.ClientID%>").css("border", "2px solid Green").focus();
                    return false;
                }
                msg= $("#<%=TxtMsg.ClientID%>").val()
                if (msg.length < 1) {
                    $("#<%=TxtMsg.ClientID%>").css("border", "2px solid Green").focus();
                    return false;
                }
            })
        })
                </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div  class="col-sm-12 text-center" style="height:80px;background-image:url('../images/header1.jpg');background-size:100% 100%;">
        <span style="font-size:38px;color:orange;">Feed</span><span style="font-size:46px;color:white;">back</span>
    </div>
    <div class="col-sm-12">
        <div class="col-sm-6" style="min-height:400px;background-image:url('../images/feed.jpg');background-size:100% 100%;"></div>
        <div class="col-sm-6" style="min-height:400px;">
            <div class="panel panel-default">
  <div class="panel-heading" style="height:38px;">

  </div>
  <div class="panel-body">
      <br /><br />
 <asp:Label ID="lblmsg" runat="server" style="font-size:20px;text-align:center"></asp:Label>
        <div class="input-group">
  <span class="input-group-addon" id="sub"><span class="glyphicon glyphicon-book" style="color:orange;font-size:22px;"></span></span>
        <asp:TextBox runat="server" ID="TxtSubject" class="form-control" placeholder="Enter Subject" aria-describedby="sizing-addon2" style="height:40px;"></asp:TextBox>
</div> <br />
      <div class="input-group">
  <span class="input-group-addon" id="Span2" ><span class="glyphicon glyphicon-envelope" style="color:orange;font-size:22px;"></span></span>
        <asp:TextBox runat="server" ID="TxtMsg" MaxLength="10" class="form-control" placeholder="Write Message Here..." aria-describedby="sizing-addon2" TextMode="MultiLine" style="resize:none;" Height="150px"></asp:TextBox>
</div><br /><br />
   <center><asp:Button ID="btnFeed" runat="server" Text="Submit" style="border:none;background-color:orange;font-size:22px;height:40px;width:30%;color:white;border-radius:3px;" OnClick="btnFeed_Click"/></center> 
  <br /><br />
  </div>
</div>
        </div>
    </div>
</asp:Content>

