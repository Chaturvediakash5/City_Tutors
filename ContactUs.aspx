<%@ Page Title="" Language="C#" MasterPageFile="~/General.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <style>
         .Text {
        width:50%;
        border-radius:5px;
        border:1px solid orange;
        }
          .icon {
         
            color:black;
            margin:4%;
            font-size:large;
            cursor:pointer;
        }
     </style>
    <script>
        $(document).ready(function () {
            //Validate Name
            $("#<%=BtnSend.ClientID%>").click(function () {
                var name, email, mobile, msg;
                name = $("#<%=TxtName.ClientID%>").val()
                if (name.length < 1) {
                    $("#<%=TxtName.ClientID%>").css("border", "2px solid Green").focus();
                    return false;
                }
                email = $("#<%=TxtEmail.ClientID%>").val()
                var atpos = email.indexOf("@");
                var dotpos = email.lastIndexOf("."); 
                if (atpos < 1 | dotpos < atpos + 2 || dotpos + 2 >= email.length) {
                    $("#<%=TxtEmail.ClientID%>").css("border", "2px solid Green").focus()
                    return false;
              
                }
                else
                    $("#<%=TxtEmail.ClientID%>").css("border", "2px solid Green").focus()

                msg = $("#<%=TxtMsg.ClientID%>").val()
                if (msg.length < 1) {
                    $("#<%=TxtMsg.ClientID%>").css("border", "2px solid red").focus();
                    return false;
                }

                var mob = $("#<%=TxtMob.ClientID%>").val();
            if(mob.length < 1){
                    $("#<%=TxtMob.ClientID%>").css("border", "1px solid green").focus();
                   return false;
                }
              
                //
               
            } )
          
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div class="col-sm-12" style="min-height:600px;">
        <div class="row">
            <div class="col-sm-12" style="background-color: white; min-height: 80px; background-image: url('Images/header1.jpg'); background-repeat: no-repeat; background-size: cover;padding-left:10.5%;padding-top:1%">
                 <span style="font-size:30px;color:orange;"> Contact</span><span  style="font-weight:bold;font-size:30px;color:white;"> Us</span>
            </div>
            <div class="col-sm-12" style="min-height:500px;">
                <div class="col-sm-1"></div>
            <div class="col-sm-10 headera">
                <div class="col-sm-12 innera" >
                    <div class="col-sm-3 linnera">
                        <h3 style="font-weight:bold;color:black;">CONTACT INFO</h3><br />
                        <span class="fa fa-map-marker" style="color:black;font-size:16px;">&nbsp;&nbsp;</span><span class="spanText">1262 Tube Well No-1 Khati Baba Jhansi Pin-284003</span><br /><br />
                       <span class="fa fa-envelope-o" style="color:black;font-size:16px;">&nbsp;&nbsp;</span> <span class="spanText">chaturvediakash5@gmail.com</span><br /><br />
                        <span class="fa fa-phone" style="color:black;font-size:16px;">&nbsp;&nbsp;</span><span class="spanText"> 8400493702,6386785034</span><br /><br />
                        <h3 style="font-weight:bold">SOCIAL MEDIA</h3>
                       <a> <span class="fa  fa-envelope icon"></span></a>
                        <a> <span class="fa fa-facebook-square icon"></span></a>
                        <a> <span class="fa fa-twitter-square icon"></span></a>
                        <a> <span class="fa fa-rss icon" ></span> </a>
                        <a> <span class="fa fa-google-plus-square icon" ></span></a>
                    </div>
                     <div class="col-sm-9 rinnera">
                         <h3 style="font-weight:bold;text-align:center;color:black;">SEND YOUR MESSAGE</h3>
                         <br />
                        <asp:Label ID="lblmsg" runat="server" Font-Size="20px" ForeColor="Green"></asp:Label>
                         <div class="col-sm-12" style="margin-left:2%">
                           
                             <div class="col-sm-6"><asp:TextBox ID="TxtName" MaxLength="25" runat="server" CssClass="form-control" style="width:100%;background-color:#eeeeee" placeholder="Name" ></asp:TextBox></div>
                             <div class="col-sm-6"> <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control" style="width:100%;background-color:#eeeeee" placeholder="Email" ></asp:TextBox></div>
                         </div>
                          <div class="col-sm-12" style="margin-left:2%">
                             <asp:TextBox ID="TxtMob" runat="server" CssClass="form-control" style="width:96%;margin-top:2%;margin-left:2%;background-color:#eeeeee" placeholder="Mobile No"></asp:TextBox>
                         </div>
                          <div class="col-sm-12" style="margin-left:2%">
                            <asp:TextBox ID="TxtMsg" runat="server" placeholder="Message" TextMode="MultiLine" CssClass="form-control" Height="140px" Width="96%" style="background-color:#eeeeee;border-radius:5px;resize:none;margin-left:2%;margin-top:2%"></asp:TextBox>
                         </div>
                          <div class="col-sm-12" style="margin-left:2%">
                            <asp:Button ID="BtnSend" runat="server" Text="Send" Height="40px" Width="25%" style="border-radius:5px;color:white;font-size:large; margin-left:2%;margin-top:2%;background:orange;" OnClick="BtnSend_Click" />
                         </div>
                     </div>
                </div>
            </div>
            <div class="col-sm-1"></div>
            </div>
            <div class="Col-sm-12  h2 text-center" style="font-family:Arial;font-weight:bold;color:black;">Google Map
        <br /><br />
        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3602.798725329699!2d78.5345542!3d25.4449918!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x397771c828530cf1%3A0x7be549503c3ed429!2sAkash%20Chaturvedi!5e0!3m2!1sen!2sin!4v1615303110881!5m2!1sen!2sin" style="min-height:295px;width:98% ;background:#eeeeee"></iframe>
        </div>
            <br />
        </div>
    </div>
</asp:Content>

