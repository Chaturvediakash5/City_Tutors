<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/General.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="StyleSheet.css" rel="stylesheet" />
     <script src="js/jquery.js"></script>
    <link href="css/animate.css" rel="stylesheet" />
    <script src="JS/wow.min.js"></script>
    <style>
        #Search_info DDlCity {
            display:none;
        }
  #Search_info DDlSubject {
        display:none;
        }
               #search {
position:absolute;
top:-10%;
left:0px;
}
 
    </style>
    <script>
        new WOW().init();
       
        $(document).ready(function () {
          
           //Validate Name
           $("#<%=DdlSearchCity.ClientID%> option").eq(0).before("<option value='0' selected>--Select City--</option>");
            $("#<%=DdlSearchSubject.ClientID%> option").eq(0).before("<option value='0' selected>--Select Subject--</option>");
            $("#btnSearch").click(function () {
              var c= $("#<%=DdlSearchCity.ClientID%>").val()
                var s = $("#<%=DdlSearchSubject.ClientID%>").val();
                if (s == null || s == "" && c == null || c == "")
                {
                    alert("Please select subject and city");
                }
                else if (s > 0 && c > 0)
                {
                    window.location.href = "Toturs.aspx?Sid=" + s + "&Cid=" + c;
                }
                else if (s >= 1 && c == 0)
                {
                    window.location.href = "Toturs.aspx?Sid=" + s + "&Cid=" + c;
                }
                else if (c >= 1 && s == 0) {
                    window.location.href = "Toturs.aspx?Sid=" + s + "&Cid=" + c;
                }
                else
                    alert("Please select subject and city");
                
            })
           $("#<%=btnSubmit.ClientID%>").click(function () {
                var name, email, mobile, msg;
                name = $("#<%=TxtName.ClientID%>").val()
               if (name.length < 1) {
                   alert("Name can not null");
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

                var mob = $("#<%=TxtMNO.ClientID%>").val();
                if(mob.length < 1){
                    $("#<%=TxtMNO.ClientID%>").css("border", "1px solid green").focus();
                return false;
            }
              
                //
               
           })
          
          
       })

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div class="col-sm-12 slider" style="position:relative">
        <div class="row">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="images/clients.jpg" alt="..." style="height:500px;width:100%;"/>
                        <div class="carousel-caption" style="padding-bottom:195px;">
                           <span style="font-size:35px;color:white;"></span>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/s4.jpg" alt="..." style="height:500px;width:100%;" />
                        <div class="carousel-caption" style="padding-bottom:250px;">
                            <span style="font-size:50px;"></span> <span style="font-size:30px;"></span>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/slider5.jpg" alt="..." style="height:500px;width:100%;"/>
                        <div class="carousel-caption" style="padding-bottom:250px;">
                               <span style="font-size:40px;"></span> <span style="font-size:30px;"></span>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/c.jpg" alt="..." style="height:500px;width:100%;"/>
                        <div class="carousel-caption" style="padding-bottom:250px;">
                               <span style="font-size:50px;"></span> <span style="font-size:30px;"></span>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/slider1.jpg" alt="..." style="height:500px;width:100%;"/>
                        <div class="carousel-caption" style="padding-bottom:250px;">
                               <span style="font-size:40px;"> </span> <span style="font-size:30px;"></span>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/woman-hand-desk-office.jpg" alt="..." style="height:500px;width:100%;"/>
                        <div class="carousel-caption" style="padding-bottom:250px;">
                               <span style="font-size:40px;">Of all the hard jobs around, one </span> <span style="font-size:30px;"> the hardest is being a good teacher. </span>
                        </div>
                    </div>
                </div>

               
            </div>
        </div>
      <div class="col-sm-12" id="search" style="min-height:400px;">
        <div class="col-sm-12">
            <div class="col-sm-12" style="min-height:400px;">
                <div class="col-sm-12 " style="min-height:150px;">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                    <div class="col-sm-5" style="min-height:150px">
                      <center>  <asp:DropDownList ID="DdlSearchCity" runat="server" style="font-size:20px;min-height:37px;width:260px;background-color:#fba822;color:white;border:none;margin-top:90px;"  DataSourceID="SqlDataSource3" DataTextField="CityName" DataValueField="CityId"></asp:DropDownList>
                          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CityTutorsDBConnectionString %>" SelectCommand="SELECT * FROM [Tbl_City]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ></asp:SqlDataSource></center>
                    </div>
                    <div class="col-sm-5" style="min-height:150px">
                    <center> <asp:DropDownList ID="DdlSearchSubject" runat="server"  style="font-size:20px;min-height:37px;width:260px;background:#fba822;color:white;border:none;margin-top:90px;" DataSourceID="SqlDataSource4" DataTextField="SubjectName" DataValueField="Sid"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CityTutorsDBConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Subject]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                        </center>
                    </div>
                    <div class="col-sm-2" style="min-height:150px">
                         <input type="button" id="btnSearch" value="search" style="background:#fd8200;width:150px;color:white;font-size:20px;border:none;min-height:37px;position:absolute;top:89px;"/>
                    </div>
                        </div>
                    <div class="col-sm-2"></div>
                </div>
             
        </div>
        </div>
    </div>
	
    </div>
      
       <!--start popup -->
    <div class="row" style="background-color:white;">
        <div class="col-sm-12">ss
            <div class="col-sm-2"></div>
            <div class="col-sm-8" style="margin-top: -90px;">
                <div class="col-sm-4 wow slideInLeft" data-wow-duration="2s" data-wow-delay=".5s" id="s1">
                    <span class="fa fa-book" style="color:white;"></span>
                    <br />
                    <h3 style="color:white;">Learn Online</h3>
                    <h5 style="color:white;">Easily accessible from any corner of the world if you have internet connection</h5>
                </div>
                <div class="col-sm-4" id="sp2">
                    <span class="fa fa-users" style="color:white;"></span>
                    <br />
                    <h3 style="color:white;">Expert Teachers</h3>
                    <h5 style="color:white;">Probide to easy way Home Tutors and This Portel is to Good Skill</h5>
                </div>
                <div class="col-sm-4 wow slideInRight" data-wow-duration="2s" data-wow-delay=".5s" id="sp3">
                    <span class="fa fa-table" style="color:white;"></span>
                    <br />
                    <h3 style="color:white;">Best Classrooms</h3>
                    <h5 style="color:white;">Probide to The best class room and best looking Class room</h5>
                </div>
            </div>
            <div class="col-sm-2"></div>
        </div>
    </div><br /><br />
  
    <!--start About Us -->
    <br /><br />
    <div class="col-sm-12" style="min-height:400px;">
        <div class="col-sm-6" style="min-height:400px;">
            <div class="col-sm-12 text-center" style="min-height:100px;font-size:35px;color:black;font-weight:bold;padding-top:30px;">
                About US
            </div>
            <div class="col-sm-12 text-justify" style="min-height:300px;padding-left:30px;padding-top:40px;">
                <span>We incorporate a national background check, certification verification as 
                    well as content-specific core professional training for tutors. Additional 
                    training options are also available for tutoring business, agencies and organizations.
                     There is  no such thing as a brief explanation on how to tutor
                    . The  art and discipline of  tutoring requires exposure to the
                     multiple aspects of teaching and learning, questioning and contemplating these theories,
                     followed by application to the tutoring process that comes to fruition only through extensive experience.
                    Our world -class teachers have years of in-depth experience as school teachers within and 
                    outside Nigeria, so we possess the highest level of experience obtainable to create the home balance.
                     City tutors is hope assured to millions
                     of students who are confronted with the challenges of attaining global standard. We simply bridge the gap!
                </span>
            </div>
        </div>
        <div class="col-sm-6" style="min-height:330px;padding:60px;margin-top:5%">
            <img src="images/3(1).jpg" height="300px" width="300px" />
      <%-- <iframe height="300px" width="100%" src="https://www.youtube.com/watch?v=7xlChPU4M8s" frameborder="0" gesture="media" allow="encrypted-media" style="border:1px solid" ></iframe>--%>
          <%--  <video autoplay="autoplay" muted="muted" height="300" width="100%" controls="controls"><source src="Song/Kabhi Yaadon Mein (Full Video Song) Divya Khosla Kumar   Arijit Singh, Palak Muchhal(360p).MP4" /></video>--%>
        </div>
    </div><br /><br />
    <!--End About Us -->

  
     
			  
    <!-- Button trigger modal -->
  <!--start OUR SERVICES -->
    <div class="col-sm-12 text-center" style="background-color:#f5f5f5;min-height:100px;padding-top:20px;margin-top:60px;">
        <span style="font-size: 35px; color: black; font-weight: bold;">Our Services</span>
    </div>
    <div class="col-sm-12" id="ourmision" style="background-color:#f5f5f5;">
        <div class="col-sm-1"></div>
        <div class="row">
            <div class="col-sm-10 ourservices">
                <div class="col-sm-12">
                    <div class="col-sm-4" style="min-height: 400px;">
                        <div class="row">
                            <div class="col-sm-12 text-center" style="min-height:120px;padding-top:20px;">
                                <span class="fa fa-book " style="border: 1px solid #fba822; padding: 8%;font-size:25px;border-radius:50px;"></span>
                            </div>
                            <div class="col-sm-12 text-center" style="min-height:50px;padding-top:10px;font-size:20px;">
                                	High School Exam
                            </div>
                            <div class="col-sm-12 text-justify" style="min-height:230px;">
                                <span>We offer one to one preparatory tuition for
                                     pupils seeking admission to top schools in Nigeria e.g Loyola Jesuit college,
                                     and other top 100 secondary schools in Nigeria. Curriculum mastery strategies, 
                                    effective test answering techniques and focus tuition contribute to our 99%
                                     accomplishment in all entrance exams in Nigeria.  Aside this,
                                     our monthly assessment is well structured and have a higher difficulty 
                                    level than these admission tests.</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4" style="min-height: 400px;">
                        <div class="row">
                            <div class="col-sm-12 text-center" style="min-height:120px;padding-top:20px;">
                                <span class="fa fa-language " style="border: 1px solid #fba822; padding: 8%;font-size:25px;border-radius:50px;"></span>
                            </div>
                            <div class="col-sm-12 text-center" style="min-height:50px;padding-top:10px;font-size:20px;">
                                	Language Tuition
                            </div>
                            <div class="col-sm-12 text-justify" style="min-height:230px;">
                                <span>For our language courses which include French, Chinese,
                                     German, Russian, Spanish, Japanese, Yoruba, Igbo, Hausa, etc,
                                     we provide face to face  tuition, part-time and full-time language 
                                    courses for primary, secondary, O LEVEL, IGCSE,  exam preparation 
                                    (including FCE &amp; IELTS), ESP (English for specific purposes), 
                                    and customized business courses for companies and individuals 
                                    interested in studying foreign languages.</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4" style="min-height: 400px;">
                        <div class="row">
                            <div class="col-sm-12 text-center" style="min-height:120px;padding-top:20px;">
                                <span class="fa fa-desktop " style="border: 1px solid #fba822;padding: 8%;font-size:25px;border-radius:50px;"></span>
                            </div>
                            <div class="col-sm-12 text-center" style="min-height:50px;padding-top:10px;font-size:20px;">
                                	Computer Tuition
                            </div>
                            <div class="col-sm-12 text-justify" style="min-height:230px;">
                                <span>We provide you experienced and result oriented tutors
                                     making you proficient in computer operations, ranging from the fundamentals to 
                                    the advanced programming languages. Most of our computer tutors belong to a
                                     pool of computer graduates, full time tutors, 
                                    and Specialized ICT Instructors. All our home tutors are screened and
                                     verified before listing at City tutors NG.</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-1"></div>
    </div>


    <!--start second-->
     <div class="col-sm-12" id="Div1" style="background-color:#f5f5f5;">
        <div class="col-sm-1"></div>
        <div class="row">
            <div class="col-sm-10 ourservices">
                <div class="col-sm-12">
                    <div class="col-sm-4" style="min-height: 400px;">
                        <div class="row">
                            <div class="col-sm-12 text-center" style="min-height:120px;padding-top:20px;">
                                <span class="fa fa-briefcase " style="border: 1px solid #fba822; padding: 8%;font-size:25px;border-radius:50px;"></span>
                            </div>
                            <div class="col-sm-12 text-center" style="min-height:50px;padding-top:10px;font-size:20px;">
                                	Business and Commercial Tuition	
                            </div>
                            <div class="col-sm-12 text-justify" style="min-height:230px;">
                                <span>City tutors NG as a subsidiary of Novatia Consulting provides
                                     highly specialized tuition in Economics, Business studies, Social studies, 
                                    Commerce, Project management, Government, project management, Business English,
                                     Business document writing and so on.  Our approach is both for curriculum mastery
                                     and personal empowerment. We offer highly individualized step by step progression in these areas.</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4" style="min-height: 400px;">
                        <div class="row">
                            <div class="col-sm-12 text-center" style="min-height:120px;padding-top:20px;">
                                <span class="fa fa-music" style="border: 1px solid #fba822; padding: 8%;font-size:25px;border-radius:50px;"></span>
                            </div>
                            <div class="col-sm-12 text-center" style="min-height:50px;padding-top:10px;font-size:20px;">
                                	Music Tuition
                            </div>
                            <div class="col-sm-12 text-justify" style="min-height:230px;">
                                <span>Music as an &#8216;art form&#8217; is  best learnt through experiential
                                     lessons and it&#8217;s learnt really well at a tender age.If you as a parent wish to have a
                                 budding pianist, guitarist, drummer or flutist at home and your son or daughter in turn does really like
                                 the idea of being a musician – you&#8217;ve landed on the
                                 right page! We have professionals to impart the skills. We also enroll our students for music competitions</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4" style="min-height: 400px;">
                        <div class="row">
                            <div class="col-sm-12 text-center" style="min-height:120px;padding-top:20px;">
                                <span class="fa fa-book" style="border: 1px solid #fba822; padding: 8%;font-size:25px;border-radius:50px;"></span>
                            </div>
                            <div class="col-sm-12 text-center" style="min-height:50px;padding-top:10px;font-size:20px;">
                                	International Exam Preparation	
                            </div>
                            <div class="col-sm-12 text-justify" style="min-height:230px;">
                                <span>Having hundreds of certified tutors from
                                     different professional bodies and organisations around the world, Our list of 
                                    international exam preparation courses include but not limited to the 
                                    following: SSAT, IELTS, TOEFL, GMAT, GRE, IGCSE, SAT,
                                     AP, ACCA, ICAN and so on. You can request the history and performance record in
                                     these exams from our front desk.</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-1"></div>
    </div>
    <!--end second-->
    <!-- start third-->
     <div class="col-sm-12" id="Div2" style="background-color:#f5f5f5;">
        <div class="col-sm-1"></div>
        <div class="row">
            <div class="col-sm-10 ourservices">
                <div class="col-sm-12">
                    <div class="col-sm-4" style="min-height: 400px;">
                        <div class="row">
                            <div class="col-sm-12 text-center" style="min-height:120px;padding-top:20px;">
                                <span class="fa fa-book " style="border: 1px solid #fba822; padding: 8%;font-size:25px;border-radius:50px;"></span>
                            </div>
                            <div class="col-sm-12 text-center" style="min-height:50px;padding-top:10px;font-size:20px;">
                                	Math Tuition
                            </div>
                            <div class="col-sm-12 text-justify" style="min-height:230px;">
                                <span>Just the word Math is sometimes enough to make most children go crazy.
                                     Yes, it is critical in nurturing the education of your children, but at the same time confusing,
                                     and even nerve wrecking. Moreover,
                                     there is no escape to the subject, City tutors NG, gives math an intentional and evident importance.</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4" style="min-height: 400px;">
                        <div class="row">
                            <div class="col-sm-12 text-center" style="min-height:120px;padding-top:20px;">
                                <span class="fa fa-book " style="border: 1px solid #fba822; padding: 8%;font-size:25px;border-radius:50px;"></span>
                            </div>
                            <div class="col-sm-12 text-center" style="min-height:50px;padding-top:10px;font-size:20px;">
                                	English Tuition	
                            </div>
                            <div class="col-sm-12 text-justify" style="min-height:230px;">
                                <span>We understand the agony of not being able to find a modern English 
                                    language tutor for <span class="small-heading">English tuition in Nigeria.</span>Our tutors 
                                    will not only prepare students for the class room settings and examinations,
                                     but also teach them general skills of the language to enhance their overall communication abilities.</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4" style="min-height: 400px;">
                        <div class="row">
                            <div class="col-sm-12 text-center" style="min-height:120px;padding-top:20px;">
                                <span class="fa fa-book " style="border: 1px solid #fba822; padding: 8%;font-size:25px;border-radius:50px;"></span>
                            </div>
                            <div class="col-sm-12 text-center" style="min-height:50px;padding-top:10px;font-size:20px;">
                                	Science Tuition	
                            </div>
                            <div class="col-sm-12 text-justify" style="min-height:230px;">
                                <span>There is more than knowledge to learning science. Most students lack
                                     the confidence in their own abilities when it comes to studying science. They give up even before 
                                    they&#8217;ve started. The main task of our
                                     tutors is to clear all the doubts students have and to teach 
                                    them to master concepts with new confidence.</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-1"></div>
    </div>
    <!-- end third-->
        <div class="row">
        <!-- start teacher -->
        <div class="col-sm-12" style="min-height: 600px;">
            <div class="col-sm-12 text-center" style="min-height: 150px; padding-top: 20px;">
                <span style="font-size: 30px; color: black; font-weight: bold;">OUR TEACHERS</span>
                <br />
                <span style="font-size: 17px; color: gray; text-align: justify;">You'll receive custom quotes from multiple teachers within hours. When you're ready, hire the teacher that you feel is the right fit.</span>
            </div>
                
                        <div class="col-sm-12">

            <asp:DataList runat="server" ID="datalistview" RepeatColumns="4" Width="100%" AutoGenerateColumns="false" ShowHeader="False">
                <ItemTemplate>
                    <table style="margin-left:40px;background-color:#f5f5f5;min-height:350px;width:80%;margin-bottom:5%;border-radius:3%">
                         <tr style="text-align:center;">
                            <td>
                               <img src='<%#string.Concat(Eval("FolderName"),"/",Eval("FileName"))%>' style="width:150px;height:150px;margin:5px;text-align:center" /> 
                            </td>
                          
                        </tr>
                         <tr style="text-align:center">
                            <td>
                                <span style="color:black;font-size:large">Name :</span>
                              <span style="color:black;font-size:large" class="clickBind"> <%#Eval("TuName") %></span> 
                            </td>
                            </tr>
                          <tr style="text-align:center">
                            <td>
                                <span style="color:black;font-size:large">Qualification :</span>
                                  <span style="color:black;font-size:large"><%#Eval("Qualification") %></span>
                             
                            </td>
                           </tr>
                          <tr style="text-align:center">
                            <td>
                                 <span style="color:black;font-size:large">Expertise Subject :</span>
                                     <span style="color:black;font-size:large"><%#Eval("SubjectName") %></span>
                                
                            </td>
                            </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
  </div> 


        </div>
    </div>
 <!-- End teacher -->
    <%--  --%>
    <br /><br />
    <div class="col-sm-12" style="min-height: 550px; background-color: #f5f5f5">
        <div class="row">
            <div class="col-sm-1" style="min-height: 550px;"></div>
            <div class="col-sm-11" style="min-height: 550px">
                    <div class="col-sm-6" style="min-height: 550px;">
                        <div class="col-sm-12" style="min-height: 80px;font-size:30px;color:black;padding-top:20px;">
                          <span>We teach in a relaxed environment</span>  
                        </div>
                        <div class="col-sm-12" style="min-height: 470px;">
                            <span style="text-align:justify;">We at Bartelt Education Center strive to ensure the individual academic and personal 
                                success of each of our students in a fun, relaxed environment. We design an
                                 individualized learning program for each student in a way that fosters self-confidence, high personal 
                                achievement, and independence that will last a lifetime. Our tutors are carefully selected for their ability to teach,
                                 to relate well to young people, and for their sensitivity 
                                and discretion. Our one-on-one and small group approach to tutoring allows us to be personally 
                                committed to seeing each of our students excel.
                            </span><br /><br />
                            <span style="text-align: justify;">Students seek help from Bartelt Education Center for many reasons.  
                                Some of our students require the additional support our tutoring services provide.
                                  Other students are already doing well, but are not being challenged academically by their current courses. 
                                 Additionally, some students are in situations where standard
                                 schooling is not the best fit.  We work with all of our students to discover exactly what they need to both succeed and excel.
                            </span><br /><br />
                           
                        </div>
                    </div>
                <div class="col-sm-6" style="min-height: 550px;padding-top:70px;">
                    <img src="UserFiles/engineering.jpg" style="min-height:350px;width:100%" />
                </div>
            </div>
        </div>
   <div class="col-sm-12" style="min-height:50px;background-color:white"></div>
    <div class="row">
 <div class="col-sm-12 text-center" style="min-height: 50px;background-color:#f2f2f2; font-size: 25px; padding-top: 7px;margin-top:50px;">
          <span style="color:black;font-size:30px;font-weight:bold">STUDENT REVIEW</span>
        </div>
        <div class="col-sm-12">
            <div class='col-sm-4 outer'><div id='testimonial4' class='carousel slide testimonial4_indicators testimonial4_control_button thumb_scroll_x swipe_x' data-ride='carousel' data-pause='hover' data-interval='5000' data-duration='2000'><div class='carousel-inner' role='listbox'>
            <asp:Label runat="server" ID="Lblfeedback1"></asp:Label>
</div></div></div>
            <div class='col-sm-4 outer'><div id='Div3' class='carousel slide testimonial4_indicators testimonial4_control_button thumb_scroll_x swipe_x' data-ride='carousel' data-pause='hover'  data-interval='5000' data-duration='2000'><div class='carousel-inner' role='listbox'>
                <asp:Label runat="server" ID="Lblfeedback2"></asp:Label>
                </div></div></div>
            <div class='col-sm-4 outer'><div id='Div4' class='carousel slide testimonial4_indicators testimonial4_control_button thumb_scroll_x swipe_x' data-ride='carousel' data-pause='hover' data-interval='5000' data-duration='2000'><div class='carousel-inner' role='listbox'>
                <asp:Label runat="server" ID="Lblfeedback3"></asp:Label>
                </div></div></div>
</div>
<br /><br />

   <span id="BtnE" data-toggle="modal" data-target="#ENModal" > E<br />N<br />Q<br />U<br />I<br />R<br />Y</span>
<!-- Modal -->
<div class="modal fade" id="ENModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
  -<div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 class="modal-title" id="myModalLabel" style="text-align:center">Enquiry <b style="color:orange">Form</b></h3>
          <hr style=" border:1px solid orange" />
      </div>
      <div class="modal-body">
       <form-

<form>
    <div class="form-group">
    <label for="exampleInputName">Name</label>
    <asp:textbox ID="TxtName" class="form-control" runat="server" placeholder="Name" style="background-color:#eeeeee;"/>
  </div> 
  <div class="form-group">
    <label for="exampleInputEmail1">Email Id</label>
    <asp:textbox ID="TxtEmail" class="form-control" runat="server" placeholder="Email" style="background-color:#eeeeee;"/>
  </div>
     <div class="form-group">
    <label for="exampleInputMno">Mobile Number</label>
    <asp:textbox ID="TxtMNO" class="form-control" runat="server" placeholder="Mobile Number" style="background-color:#eeeeee;"/>
  </div>
  
     <div class="form-group">
    <label for="exampleInputMSG">Message</label>
    <asp:textbox ID="TxtMsg" class="form-control" runat="server" placeholder="Write Message.." TextMode="MultiLine" style="background-color:#eeeeee;resize:none"/>
  </div>
    <asp:Label ID="Lblmsg" runat="server" Font-Size="20"></asp:Label>
  <asp:Button ID="btnSubmit" runat="server" Text="submit" class="btn btn-default" style="background:orange;color:white;border:none" OnClick="btnSubmit_Click" />
</form>
  </div>
      <div class="modal-footer" style="border-top:2px solid orange">
        <asp:Button ID="BtnEnq" runat="server" Text="Registration here"/><a href="Registration.aspx">Click Here</a>
      </div>
    </div>
  </div>
</div>
        
</div>
    </div>
</asp:Content>

