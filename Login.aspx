<%@ Page Title="" Language="C#" MasterPageFile="~/General.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>

        $(document).ready(function () {
            // To send code...
            $("#BtnGetCode").click(function () {
                var email = $("#<%=TxtEmail.ClientID%>").val();
                var mobDigit = $("#<%=TxtNum.ClientID%>").val();
                var ob = { MobNo:mobDigit, Email: email };
                alert("ok");
                $.ajax({
                    type: "POST",
                    url: "Login.aspx/GetVarificationCode",
                    data: JSON.stringify(ob),
                    contentType: "application/json",
                    dataType: "json",
                    success: function (result) {
                        $("#<%=TxtEmail.ClientID%>").val("");
                        $("#<%=TxtNum.ClientID%>").val("");
                        window.location.href = "../ForgetPassword.aspx";
                    }
                });
            });

            var email = $("#<%=TxtEmail.ClientID%>").val()
            if (pas.length < 1)
                $("#<%=TxtEmail.ClientID%>").css("border", "2px solid red").focus();
            else
                $("#<%=TxtEmail.ClientID%>").css("border", "2px solid Green");
           
        })
        $(document).ready(function () {
            $("#<%=BtnLogin.ClientID%>").click(function(){
              var  email = $("#<%=TxtMail.ClientID%>").val()
                  var atpos = email.indexOf("@");
                  var dotpos = email.lastIndexOf("."); 
                  if (atpos < 1 | dotpos < atpos + 2 || dotpos + 2 >= email.length) {
                      $("#<%=TxtMail.ClientID%>").css("border", "2px solid Green").focus()
                      return false;
                  }
                var pas = $("#<%=TxtPass.ClientID%>").val();
                if (pas.length < 1)
                    $("#<%=TxtPass.ClientID%>").css("border", "2px solid Green").focus();
                return false;
            })
        })
        $(document).ready(function () {
            $("#<%=BtnOtp.ClientID%>").click(function () {

            })
        })
   

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
         <div class="col-sm-12" style="background-color: white; min-height: 80px; background-image: url('Images/header1.jpg'); background-repeat: no-repeat; background-size: cover;padding-left:10.5%;padding-top:1%">
                 <span style="font-size:30px;color:orange;">Login</span><span  style="font-weight:bold;font-size:30px;color:white;"> here..</span>
            </div>
    <div class="col-sm-12" style="min-height:30px;">

    </div> 
     <div class="col-sm-12" >
         <div class="col-sm-3"></div>
          <div class="col-sm-5" style="border:1px solid orange">
              <div class="col-sm-12" style="min-height:10px;"></div>
     <div class="form-group">
          I Am &nbsp;&nbsp; 
                <asp:RadioButton ID="Rdbtutors" runat="server" GroupName="a"  Text="Tutors" Checked="True" />
                <asp:RadioButton GroupName="a" ID="RdbAdmin" Text=" Admin" runat="server" />
               <br />
    <label for="exampleInputEmail" >User Id</label>
    <asp:textbox ID="TxtMail" runat="server" class="form-control"  placeholder="Email" style="background-color:#eeeeee;resize:none"/>
  </div>
    <div class="form-group">
    <label for="exampleInputPassword">Password</label>
    <asp:TextBox ID="TxtPass" TextMode="Password" class="form-control" runat="server" placeholder="Password" style="background-color:#eeeeee;resize:none"/>
  </div>
               <div class="col-sm-12" >
                   <div class="col-sm-4"></div>
                        <div class="col-sm-4">
                            <div class="form-group">
     <asp:button ID="BtnLogin" runat="server" Text="LogIn"  CssClass="form-control" style="background:orange;color:white;font-weight:bold" OnClick="BtnLogin_Click"/>

                            </div>

                        </div>

               </div>
             <div class="col-lg-4"></div>  <div class="col-sm-12" style="padding:0px">
                 <div class="col-sm-6" style="padding:0px;">
    <a data-toggle="modal" data-target="#myModal"  style="color:blue;cursor:pointer">Forgot Password???</a></div>
                 <div class="col-sm-6" style="padding:0px">
                                           
    For New Regsitration &nbsp; <a href="Registration.aspx" style="color:blue"> Tutor </a>
              </div></div>
              <div class="col-sm-12" style="min-height:10px;"></div>
        </div>  <div class="col-sm-4"></div>
     </div>
         
       
   

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header" style="border:none;">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
       
      </div>
      <div class="modal-body">
        <span style="font-weight:bold;font-size:25px;margin-left:30%;color:orange;">Get Varification Code..</span>  
                <div class="col-sm-12">
                     <div class="col-sm-12">
          <div class="col-sm-12" style="min-height:30px;"></div>
                <div class="col-sm-6">
  <div class="form-group">
    <label for="exampleInputEmail1">Enter Last 4 Digits</label></div></div>
            <div class="col-sm-6">
    <asp:textbox ID="TxtNum" runat="server" class="form-control" placeholder="Last 4 Digit Mobile No"/>
  </div></div>
                    
          <span style="margin-left:50%;font-size:20px; font-weight:bold;"> OR</span> 
                      <div class="col-sm-12" style="min-height:5px;"></div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter Your Email Address</label>
    <asp:textbox ID="TxtEmail" runat="server" class="form-control" TextMode="Email" requred="true"  placeholder="Email" />
      
  </div>

    <input type="button" id="BtnGetCode" value="Send Varification Code" 
    style="font-weight:bold; border:none;color:white;background:orange;" />

<div class="col-sm-12" style="min-height:20px;"></div>
 </div>
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>
    <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="Div1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Enter 6 Didgit OTP Code</h4>
      </div>
      <div class="modal-body">
          
        <asp:textbox ID="TxtOtp" runat="server" MaxLength="6" TextMode="Number" placeholder="Enter OTP" CssClass="form-control"/>
         <div class="col-sm-12" style="min-height:20px;"></div> <br/>
          <asp:button ID="BtnOtp" runat="server" Text="Verify OTP" OnClick="BtnOtp_Click" Style="color:white; font-weight:bold; border:none; background:orange"  />
      </div>

    </div>
  </div>
</div>
   

</asp:Content>

