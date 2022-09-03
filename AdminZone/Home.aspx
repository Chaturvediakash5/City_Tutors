<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="AdminZone_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-sm-12  text-center" style="padding-top: 20px; min-height: 80px; background-image: url('../images/header1.jpg'); background-size: 100% 100%;">
        <span style="color: orange; font-size: 32px;">Dashboard</span>
    </div>
                           <div class="col-sm-12 dash" style="margin-top:2%">
                           <div class="col-sm-4 ">
                             <a href="ManageTutorProfile.aspx"><div class="col-sm-12 item">
                                   <div class="col-sm-6 imgicon" style="background-image:url('../images/tprofile.png');background-size:100% 100%;"></div>
                                    <div class="col-sm-6 txticon">
                                        <span>Manage Tutor Profile</span><br />
                                    </div>
                               </div></a>  
                           </div>
                           <div class="col-sm-4 ">
                             <a href="ManageStudentProfile.aspx"><div class="col-sm-12 item">
                                    <div class="col-sm-6 imgicon" style="background-image:url('../images/sprofile.png');background-size:100% 100%;"></div>
                                    <div class="col-sm-6 txticon">
                                        <span>Manage Student Profile</span><br />
                                    </div>
                               </div></a>  
                           </div>
                           <div class="col-sm-4">
                              <a href="FeedbackTutor.aspx"><div class="col-sm-12 item">
                                      <div class="col-sm-6 imgicon" style="background-image:url('../images/myprofile.png');background-size:100% 100%;"></div>
                                    <div class="col-sm-6 txticon">
                                        <span>Feedback By Tutor</span><br />
                                    </div>
                               </div></a> 
                           </div>
                       </div>
                        <div class="col-sm-12" style="min-height:20px;"></div>
                        <div class="col-sm-12 dash">
                           <div class="col-sm-4 ">
                              <a href="ReviewStudent.aspx"><div class="col-sm-12 item">
                                 <div class="col-sm-6 imgicon" style="background-image:url('../images/sreview.png');background-size:100% 100%;"></div>
                                    <div class="col-sm-6 txticon">
                                        <span>Review By Student</span><br />
                                    </div>
    </div></a> 
                           </div>
                           <div class="col-sm-4 ">
                              <a href="Enquiry.aspx"><div class="col-sm-12 item">
                                    <div class="col-sm-6 imgicon" style="background-image:url('../images/enq.png');background-size:100% 100%;"></div>
                                    <div class="col-sm-6 txticon">
                                        <span>Enquiry</span><br />
                                    </div>
                               </div></a> 
                           </div>
                           <div class="col-sm-4">
                             <a href="SendMsg.aspx"><div class="col-sm-12 item">
                                    <div class="col-sm-6 imgicon" style="background-image:url('../images/sms.png');background-size:100% 100%;"></div>
                                    <div class="col-sm-6 txticon">
                                        <span>Send SMS</span><br />
                                    </div>
                               </div></a>  
                           </div>
                       </div>
                     <div class="col-sm-12" style="min-height:20px;"></div>
                     <div class="col-sm-12 dash">
                           <div class="col-sm-4 ">
                             <a href="sendEmail.aspx"><div class="col-sm-12 item">
                                 <div class="col-sm-6 imgicon" style="background-image:url('../images/email.png');background-size:100% 100%;"></div>
                                    <div class="col-sm-6 txticon">
                                        <span>Send Email </span><br />
                                    </div>
                              </div></a>  
                           </div>
                           <div class="col-sm-4 ">
                              <a href="ChangPassword.aspx"><div class="col-sm-12 item">
                                    <div class="col-sm-6 imgicon" style="background-image:url('../images/changpass.jpg');background-size:100% 100%;"></div>
                                    <div class="col-sm-6 txticon">
                                        <span>Change Password</span><br />
                                    </div>
                               </div></a> 
                           </div>
                           <div class="col-sm-4">
                            <a href="LogOut.aspx"><div class="col-sm-12 item">
                                    <div class="col-sm-6 imgicon" style="background-image:url('../images/logout.png');background-size:100% 100%;height:80px;width:40%;"></div>
                                    <div class="col-sm-6 txticon">
                                        <span>Logout</span><br />
                                    </div>
                               </div></a>   
                           </div>
                       </div>
    <div class="col-sm-12" style="min-height:20px;"></div>
   
</asp:Content>

