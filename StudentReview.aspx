<%@ Page Title="" Language="C#" MasterPageFile="~/General.master" AutoEventWireup="true" CodeFile="StudentReview.aspx.cs" Inherits="StudentReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>  .out {
        min-height:600px;
        margin-bottom:10px;
        }
         .imgstar {
             width:30px;
             height:30px;
             border-radius:50%;
             cursor:pointer;
             background-color:lightblue;
         }
         </style>
    <script>
        $(document).ready(function () {
            //Validate Name
            $("#<%=BtnReviw.ClientID%>").click(function () {
                var  email, msg;
              
                email = $("#<%=TxtEmail.ClientID%>").val()
                var atpos = email.indexOf("@");
                var dotpos = email.lastIndexOf("."); 
                if (atpos < 1 | dotpos < atpos + 2 || dotpos + 2 >= email.length) {
                    $("#<%=TxtEmail.ClientID%>").css("border", "2px solid Green").focus()
                    return false;
              
                }
                else
                    $("#<%=TxtEmail.ClientID%>").css("border", "2px solid Green").focus()

                msg = $("#<%=TxtCmnts.ClientID%>").val
                if(msg.length<1)
                    $("#<%=TxtCmnts.ClientID%>").css("border", "2px solid Green").focus()
                })
        })
</script>
    <script>
        $(document).ready(function () {
            $(".imgstar").mouseover(function () {
                var imgno = $(this).attr("data-id");
                for (i = 0; i < imgno; i++) {
                    //$(".imgstar").eq(i).attr("src", "images/YellowStar.png");
                    $(".imgstar").eq(i).css("background-color", "Yellow");
                }
            });
            $(".imgstar").mouseout(function () {
                $(".imgstar").css("background-color", "lightblue");
            });
            $(".imgstar").click(function () {
                var imgno = $(this).attr("data-id");
                $(".imgstar").attr("src", "images/DefaultStar.png");
                for (i = 0; i < imgno; i++) {
                    $(".imgstar").eq(i).attr("src", "images/YellowStar.png");
                }
                $("#<%=HFStar.ClientID%>").val(imgno);
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12 out">
              <div class="row">
                <div class="col-sm-12 text-center" style="min-height:100px;padding-top:20px; background-image:url('/images/header1.jpg');background-size:cover;background-repeat:no-repeat;">
                    <span style="color:#fba822;font-size:30px;">Student</span><span style="color:white;font-size:30px;"> Review</span>
                </div>
                  </div> 
                <div class="col-sm-12 inner">
                <div class="row">
                <div class="col-sm-3"></div>
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                <div class="col-sm-6" style="min-height:550px;background:white;margin-top:2%;margin-bottom:2%;border-radius:15px;">
                   <asp:Label ID="Label1" runat="server" Font-Size="20"></asp:Label>
                     <span style="font-size:20px;color:gray;">Select Subject</span>
                    <asp:DropDownList ID="ddlSubject" runat="server" Height="40px" Width="99%" style="resize:none;border:none;background-color:#eeeeee;" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="SubjectName" DataValueField="Sid" >

                    </asp:DropDownList> 
                    
                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CityTutorsDBConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Subject]"></asp:SqlDataSource>
                    
                    
                    <br />
                    <span style="font-size:20px;color:gray;">Tutor Name</span><br />

                    <asp:DropDownList ID="DDLTutor" Height="40px" Width="99%" TextMode="Email" style="resize:none;border:none;background-color:#eeeeee;" runat="server" DataSourceID="SqlDataSource2" DataTextField="TuName" DataValueField="EmailId"  >

                    </asp:DropDownList>
      
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CityTutorsDBConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Tutors] WHERE ([ExpertiseSub] = @ExpertiseSub)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlSubject" Name="ExpertiseSub" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
      
                    <br />
                    <span style="font-size:20px;color:gray;">Email Id</span>
                                        <asp:TextBox ID="TxtEmail"   runat="server" Height="40px" Width="99%" placeholder=" Enter Your Comments....." CssClass="form-control" TextMode="Email" style="resize:none;border:none;background-color:#eeeeee;" /><br />
                
                     <span style="font-size:20px;color:gray;">Star Rating:</span>
                    <img class="imgstar" src="images/DefaultStar.png" data-id="1" />
                    <img class="imgstar" src="images/DefaultStar.png" data-id="2" />
                    <img class="imgstar" src="images/DefaultStar.png" data-id="3" />
                    <img class="imgstar" src="images/DefaultStar.png" data-id="4" />
                    <img class="imgstar" src="images/DefaultStar.png" data-id="5" />
                    <asp:HiddenField ID="HFStar" runat="server" Value="0" />
                    <br />
                    <span style="font-size:20px;color:gray;">Message:</span><br />
                    <asp:TextBox ID="TxtCmnts"   runat="server" Height="164px" Width="99%" placeholder=" Enter Your Comments....." CssClass="form-control" TextMode="MultiLine" style="resize:none;border:none;background-color:#eeeeee;"/><br />
                   <br /><br /> <asp:Button ID="BtnReviw" runat="server" Text="Click Here" Height="40px" Width="30%" CssClass="btn" Font-Size="Large" ForeColor="white" Font-Bold="true" BorderStyle="Groove" BackColor="Orange" style="border-radius:5px;border:none" OnClick="BtnReviw_Click"/>
                </div>
                <div class="col-sm-3"></div>
            </div>
                </div>
                </div>
        </div>
    </div>
</asp:Content>

