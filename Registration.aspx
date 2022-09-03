<%@ Page Title="" Language="C#" MasterPageFile="~/General.master" AutoEventWireup="true" enableEventValidation="false" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="JS/jquery.js"></script>
    <style>
        #hideField{
        padding:0px;display:none;
        }
    </style>
    <script>
       
        $(document).ready(function () {
            $("#<%=DdlCity.ClientID%> option").eq(0).before("<option value='0' selected>--Select City--</option>");
            $("#<%=DdlCourseYear.ClientID%> option").eq(0).before("<option value='0' selected>--Select Year--</option>");
            $("#<%=DdlHightQuali.ClientID%> option").eq(0).before("<option value='0' selected>--Select Qualification--</option>");
            $("#<%=DdlCoures.ClientID%> option").eq(0).before("<option value='0' selected>--Select Qualification--</option>");
            $("#<%=DdlPassOut.ClientID%> option").eq(0).before("<option value='0' selected>--Select PassOut Year--</option>");
            $("#<%=ddlEXpsubject.ClientID%> option").eq(0).before("<option value='0' selected>--Select Expertise Subjects--</option>");

            $("#<%=RdbTutor.ClientID%>").change(function () {
                $("#hideField").show();
                $("#HideFTUtor").hide();
                $("#BtnTutor").show();
            });
            $("#<%=RdbStudent.ClientID%>").change(function () {
                $("#hideField").hide();
                $("#HideFTUtor").show();

            });

            $("#CPHMain_chk").change(function () {
                var x = $("#CPHMain_btnsubmit").prop("disabled");
                if (x == true)
                    $("#CPHMain_btnsubmit").prop("disabled", false);
                else
                    $("#CPHMain_btnsubmit").prop("disabled", true);

            });
            $("#CPHMain_btnsubmit").click(function () {
                $("#CPHMain_chk").prop("disabled", true);
            })
            // validation
            var l = $("#<%=lblRes.ClientID%>").text();
            if (l.length > 2) {
                $("#<%=chk.ClientID%>").removeProp();
            }
        
        });

        $(document).ready(function () {

            $("#<%=TxtName.ClientID%>").blur(function () {
                       var name = $(this).val();
                       if (name != "") {
                           $("#<%=TxtName.ClientID%>").css("border", "2px solid Green");
                    }
                    else {
                        $("#<%=TxtName.ClientID%>").css("border", "2px solid Red");
                    }
                     });
                   //For Capital Letter
                   $("#<%=TxtName.ClientID%>").keyup(function () {
                       var fullname = $(this).val()
                       var name = "";
                       //name+=fullname.charAt(0).toUpperCase();
                       name += fullname[0].toUpperCase();
                       var len = fullname.length;
                       for (i = 1; i < len; i++) {
                           if (fullname[i] == ' ') {
                               name += " " + fullname[i + 1].toUpperCase();
                               i++;
                           }
                           else {
                               name += fullname[i];
                           }
                       }
                       $("#<%=TxtName.ClientID%>").val(name)
                     })
                   $("#<%=TxtPass.ClientID%>").blur(function () {
                       var Pass = $(this).val();
                       if (Pass != "") {
                           $("#<%=TxtPass.ClientID%>").css("border", "2px solid Green");
                         }
                         else {
                             $("#<%=TxtPass.ClientID%>").css("border", "2px solid Red");
                         }
                     });
                   $("#<%=TxtCPass.ClientID%>").blur(function () {
                       var CPass = $(this).val();
                       var Pass = $("#<%=TxtPass.ClientID%>").val();
                         if (Pass != "") {
                             if (Pass == CPass) {
                                 $("#<%=TxtCPass.ClientID%>").css("border", "2px solid Green");
                             }
                             else {
                                 $("#<%=TxtCPass.ClientID%>").css("border", "2px solid Red");
                             }

                         }
                         else {
                             $("#<%=TxtCPass.ClientID%>").css("border", "2px solid Red");
                         }
                     });
                   $("#<%=TxtFather.ClientID%>").blur(function () {
                       var father = $(this).val();
                       if (father != "") {
                           $("#<%=TxtFather.ClientID%>").css("border", "2px solid Green");
                         }
                         else {
                             $("#<%=TxtFather.ClientID%>").css("border", "2px solid Red");
                         }
                     });
                   $("#<%=TxtFather.ClientID%>").keyup(function () {
                       var fullname = $(this).val()
                       var name = "";
                       //name+=fullname.charAt(0).toUpperCase();
                       name += fullname[0].toUpperCase();
                       var len = fullname.length;
                       for (i = 1; i < len; i++) {
                           if (fullname[i] == ' ') {
                               name += " " + fullname[i + 1].toUpperCase();
                               i++;
                           }
                           else {
                               name += fullname[i];
                           }
                       }
                       $("#<%=TxtFather.ClientID%>").val(name)
                     })

                   //for valid 10 number
                   $("#<%=TxtMob.ClientID%>").keypress(function (e) {
                       var num = $(this).val();
                       if (num.length <= 9) {

                       }
                       else {
                           e.preventDefault();
                       }
                   })
                   //var m = $("#CPHContent_txtphone").MaxLength({ MaxLength: 10 });
                   $("#<%=TxtMob.ClientID%>").keyup(function () {
                       var mobile = checkMobNo();
                       if (mobile == true) {
                           $("#<%=TxtMob.ClientID%>").css("border", "1px solid green");
                         }
                         else {

                             $("#<%=TxtMob.ClientID%>").css("border", "1px solid red");
                         }

                     });
            $("#<%=TxtAddress.ClientID%>").blur(function () {
                var ad = $(this).val();
                if (ad != "") {
                    $("#<%=TxtAddress.ClientID%>").css("border", "2px solid Green");
            }
            else {
                $("#<%=TxtAddress.ClientID%>").css("border", "2px solid Red");
            }
            });
            $("#<%=TxtDob.ClientID%>").blur(function () {
                var ad = $(this).val();
                if (ad != "") {
                    $("#<%=TxtDob.ClientID%>").css("border", "2px solid Green");
            }
            else {
                $("#<%=TxtDob.ClientID%>").css("border", "2px solid Red");
            }
                     });
            $("#<%=DdlCity.ClientID%>").blur(function () {
                var count = '0';
                var City = $(this);
                if (City.val() != '0') {
                    count++;

                    $("#<%=DdlCity.ClientID%>").css("border", "2px solid Green");
            }
            else {
                $("#<%=DdlCity.ClientID%>").css("border", "2px solid Red");
            }
                     });
            $("#<%=DdlCoures.ClientID%>").blur(function () {
                var count = '0';
                var cours = $(this);
                if (cours.val() != '0') {
                    count++;

                    $("#<%=DdlCoures.ClientID%>").css("border", "2px solid Green");
            }
            else {
                $("#<%=DdlCoures.ClientID%>").css("border", "2px solid Red");
            }
                     });
            $("#<%=DdlCourseYear.ClientID%>").blur(function () {
                var count = '0';
                var year = $(this);
                if (year.val() != '0') {
                    count++;

                    $("#<%=DdlCourseYear.ClientID%>").css("border", "2px solid Green");
            }
            else {
                $("#<%=DdlCourseYear.ClientID%>").css("border", "2px solid Red");
            }
                     });
            $("#<%=DdlPassOut.ClientID%>").blur(function () {
                var count = '0';
                var year = $(this);
                if (year.val() != '0') {
                    count++;

                    $("#<%=DdlPassOut.ClientID%>").css("border", "2px solid Green");
            }
            else {
                $("#<%=DdlPassOut.ClientID%>").css("border", "2px solid Red");
            }
                     });

            $("#<%=TxtEmail.ClientID%>").blur(function () {
                checkMail();

            })

            //For Mobile Number
            function checkMobNo() {
                var mob = $("#<%=TxtMob.ClientID%>").val();
            var status = true;
            if (!(mob.charAt(0) == 7 || mob.charAt(0) == 8 || mob.charAt(0) == 9)) {
                status = false;
            }
            return status;
        }

            function checkMail() {
                var email = $("#<%=TxtEmail.ClientID%>").val()
            var atpos = email.indexOf("@");
            var dotpos = email.lastIndexOf(".");
            if (atpos < 1 | dotpos < atpos + 2 || dotpos + 2 >= email.length) {
                $("#<%=TxtEmail.ClientID%>").css("border", "1px solid red");
            }
            else {
                $("#<%=TxtEmail.ClientID%>").css("border", "1px solid green");
            }
        }

        });
       
                 
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
     <div class="col-sm-12" style="min-height: 1000px; background-color: white;">
        <div class="row">
                    <div class="col-sm-12 img-responsive" style="background-color: white; min-height: 80px; background-image: url('images/header1.jpg'); background-repeat: no-repeat; background-size: cover; padding-left: 10.5%; padding-top: 1%">
                        <span style="font-size: 30px; color: orange;">Student / Parents</span><span style="font-weight: bold; font-size: 30px; color: white;">&nbsp;Tutors</span>
                   
                         </div>
                </div>
        <br />
        <div class="col-sm-4">
            <img src="images/dc2.png" style="min-height:800px;padding-top:100px"/>
        </div>
        <div class="col-sm-6">
            <br />
            <span style="color:black;font-size:30px;text-align:center"> Registration Here...</span><hr/ style="border:1px solid orange"> 
            <br />
           <%-- <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>--%>

              
            <form>
                I Am &nbsp;&nbsp; 
                <asp:RadioButton ID="RdbStudent" runat="server" GroupName="a"  Text="Student/Parents" Checked="True" />
                <asp:RadioButton GroupName="a" ID="RdbTutor" Text=" Tutors" runat="server" />
               <br />
                 <asp:Label ID="lblRes" runat="server" Font-Size="Larger"></asp:Label>
                <br />
                <div class="form-group">
                    <label for="exampleInputEmail1">Name</label>
                    <asp:TextBox ID="TxtName" runat="server" BackColor="#eeeeee"   class="form-control" placeholder="Name" />
                   
                     </div>
                
                 <div class="col-sm-12" id="HideFTUtor" style="padding:0px">
                <div class="form-group" id="fathName">
                    <label for="exampleInputEmail1">Father's Name</label>
                    <asp:TextBox ID="TxtFather" runat="server" BackColor="#eeeeee"   class="form-control" placeholder="Father's Name" />
                    
                     </div>
           
                 <div class="form-group">
                        <label for="exampleInputPassword1"> Year</label>
                        <asp:DropDownList ID="DdlCourseYear"  BackColor="#eeeeee"   CssClass="form-control" runat="server">
                            
                        </asp:DropDownList>
                    
                    </div>
                      <div class="form-group">
                        <label for="exampleInputPassword1">Courses</label>
                        <asp:DropDownList ID="DdlCoures" BackColor="#EEEEEE"   CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="Qualification" DataValueField="Qid" >
                            
                        </asp:DropDownList>
                        
                           
                        
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CityTutorsDBConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Qulification]"></asp:SqlDataSource>
                         
                    </div>
                     </div>
                 <div class="form-group">
                    <label for="exampleInputMobile">Gender</label>
                    <asp:RadioButton ID="RdbMale" runat="server" Checked="true" Text="Male" GroupName="Gender" />
                     <asp:RadioButton ID="RdbFemale" runat="server" Text="Female" GroupName="Gender" />
                </div>
                 <div class="form-group">
                    <label for="exampleInputMobile">Enter Date Of Brith</label>
                    <asp:TextBox ID="TxtDob" runat="server" BackColor="#eeeeee" TextMode="Date"   class="form-control" placeholder="Enter DOB" />
                </div>
                 <div class="form-group">
                        <label for="exampleInputPassword1">Highest Qualification</label>
                        <asp:DropDownList ID="DdlHightQuali" BackColor="#EEEEEE"   CssClass="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="Qualification" DataValueField="Qid"  >
                         
                        </asp:DropDownList>
                       
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CityTutorsDBConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Qulification]"></asp:SqlDataSource>
                       
                    </div>
              <%--  --%>
                 <div class="form-group">
                    <label for="exampleInputMobile">Mobile Number</label>
                    <asp:TextBox ID="TxtMob" runat="server" BackColor="#eeeeee"   class="form-control" placeholder="Mobile Number" />
                </div>
                 <div class="col-sm-12" id="hideField">
                

                    <div class="form-group">
                        <label for="exampleInputPassword1">Expertise Subjects</label>
                        <asp:DropDownList ID="ddlEXpsubject"  BackColor="#EEEEEE"   CssClass="form-control" runat="server" DataSourceID="SqlDataSource4" DataTextField="SubjectName" DataValueField="Sid"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CityTutorsDBConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Subject]"></asp:SqlDataSource>
                    </div>
                 
                     <div class="form-group">
                        <label for="exampleInputPassword1">Passout year</label>
                        <asp:DropDownList ID="DdlPassOut" BackColor="#eeeeee"   CssClass="form-control" runat="server">
                           
                        </asp:DropDownList>
                    </div>
                  
                      <div class="form-group">
                    <label for="exampleInputMobile">Minmum Tutionfee/houres/Month</label>
                    <asp:TextBox ID="TxtMinfee" runat="server" BackColor="#eeeeee"   class="form-control" placeholder="enter minmum fee" />
                </div>
                 <div class="form-group">
                    <label for="exampleInputMobile">Maxmum Tutionfee/houres/Month</label>
                    <asp:TextBox ID="TxtMaxfee" runat="server" BackColor="#eeeeee"   class="form-control" placeholder="Enter maxmum fee" />
                </div>
                          <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <asp:TextBox ID="TxtPass" BackColor="#eeeeee"  TextMode="Password"  runat="server" placeholder="Password" class="form-control"  />
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Confirm Password</label>
                    <asp:TextBox ID="TxtCPass" BackColor="#eeeeee" TextMode="Password"    runat="server" placeholder="Confirm Password" class="form-control" />
                </div>
                </div>
                  
                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <asp:TextBox ID="TxtEmail"   runat="server" BackColor="#eeeeee"   class="form-control" placeholder="Email" />
                </div>

                <div class="form-group">
                        <label for="exampleInputPassword1">City</label>
                        <asp:DropDownList ID="DdlCity"  BackColor="#EEEEEE"   CssClass="form-control" runat="server" DataSourceID="SqlDataSource3" DataTextField="CityName" DataValueField="CityId" >
                         
                        </asp:DropDownList>
                        
 
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server"   ConnectionString="<%$ ConnectionStrings:CityTutorsDBConnectionString %>" SelectCommand="SELECT * FROM [Tbl_City]"></asp:SqlDataSource>
                        
 
                    </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Address</label>
                    <asp:TextBox ID="TxtAddress" runat="server"    BackColor="#eeeeee"  class="form-control" placeholder="Address" TextMode="MultiLine" style="resize:none" />
                </div>
               
              
                <div class="form-group">
                   <asp:Image ID="ImgCap" runat="server" Height="35" Width="100"  /><asp:ImageButton ID="btnRef" runat="server" Height="30" Width="50" ImageUrl="~/images/refresh - Copy.png" OnClick="btnRef_Click"  />
                 
                    <asp:TextBox ID="TxtCaptcha" BackColor="#eeeeee"    runat="server" placeholder="Enter Captcha Code" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1" id="Label1">UPLoad FIle</label>
                   <asp:FileUpload ID="UpPic" runat="server" />
                </div>
                <div class="checkbox">
                    <label>
                        <asp:CheckBox ID="chk" runat="server" />
                           I agree To the <a href="#" data-toggle="modal" data-target="#ConditiomyModal" style="color:orange"> Terms & Condition  </a>Privacy Policy and also authorize The CityTutors.COm To Contact Me 
                    </label>
                
                </div>
                <asp:Button ID="btnsubmit" disabled runat="server"  class="btn btn-default" Text="Submit" Style="background: orange; color: white;" OnClick="btnsubmit_Click" />
           
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                 </form>       
        
                  <%--    </ContentTemplate>
                <Triggers>
                    <asp:PostBackTrigger ControlID="btnsubmit" />
               </Triggers>
            </asp:UpdatePanel>--%>
            <br />
            <br />
        </div>
        <div class="col-sm-2"></div>
    </div>
    




</asp:Content>

