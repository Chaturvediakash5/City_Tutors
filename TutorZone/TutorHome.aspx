<%@ Page Title="" Language="C#" MasterPageFile="~/TutorZone/TutorMasterPage.master" AutoEventWireup="true" CodeFile="TutorHome.aspx.cs" Inherits="TutorZone_TutorHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <style>
        .box {
            background-color:#f6f6f6;
        }
        .box:hover {
            background-color:#f6f6f6;
            border:1px solid #e6e7e8;
            box-shadow:2px 2px 25px inset;
        }
        .sptext 
        {
            color:white;
            font-size:20px;
        }
       
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-sm-12" style="min-height:80px;background-image:url('../images/header1.jpg');background-size:100% 100%;">
            <span style="font-size: 30px; color: orange;">Dashboard</span>
        </div>
        </div>
    <div class="row">
        <div class="col-sm-12" style="min-height:210px;">
            <a href="TuitionRequest.aspx">
           <div class="col-sm-4 " style="margin-top:20px;">
              
                  <div class="panel panel-default box">
  <div class="panel-body" >
                   <div class="col-sm-2"></div>
                   <div class="col-sm-8">
                       <img src="../images/tuitionRequest.png" class="img-responsive" height="80%" width="100%"/>
                   </div>
                   <div class="col-sm-2"></div>
  </div>
  <div class="panel-footer" style="background-color:orange;min-height:50px;">
       <span class="sptext">Tuition Request</span><span class="fa fa-arrow-circle-right" style="color:white;font-size:25px;margin-left:60px;"></span>
  </div>
</div>
              </div></a>
            <a href="Feedback.aspx">
             <div class="col-sm-4" style="margin-top:20px;">
               <div class="panel panel-default box">
  <div class="panel-body" >
                   <div class="col-sm-2"></div>
                   <div class="col-sm-8">
                       <img src="../images/feedback.png" class="img-responsive" height="80%" width="100%"/>
                   </div>
                   <div class="col-sm-2"></div>
  </div>
  <div class="panel-footer" style="background-color:orange;min-height:50px;">
       <span class="sptext">Feedback</span><span class="fa fa-arrow-circle-right" style="color:white;font-size:25px;margin-left:90px;"></span>
  </div>
</div>
           </div></a>
            <a href="MyArticle.aspx">
             <div class="col-sm-4" style="margin-top:20px;">
              <div class="panel panel-default box">
  <div class="panel-body" >
                   <div class="col-sm-2"></div>
                   <div class="col-sm-8">
                       <img src="../images/sprofile.png" class="img-responsive" height="80%" width="100%"/>
                   </div>
                   <div class="col-sm-2"></div>
  </div>
  <div class="panel-footer" style="background-color:orange;min-height:50px;">
       <span class="sptext">My Article</span><span class="fa fa-arrow-circle-right" style="color:white;font-size:25px;margin-left:90px;"></span>
  </div>
</div>
           </div></a>
        </div>
      
        
        </div>
     <div class="row">
        <div class="col-sm-12" style="min-height:230px;">
            <a href="MyProfile.aspx">
           <div class="col-sm-4" style="margin-top:20px;">
               <div class="panel panel-default box">
  <div class="panel-body" >
                   <div class="col-sm-2"></div>
                   <div class="col-sm-8">
                       <img src="../images/myprofile.png" class="img-responsive" height="80%" width="100%"/>
                   </div>
                   <div class="col-sm-2"></div>
  </div>
  <div class="panel-footer" style="background-color:orange;min-height:50px;">
       <span class="sptext">My Profile</span><span class="fa fa-arrow-circle-right" style="color:white;font-size:25px;margin-left:90px;"></span>
  </div>
</div>
           </div></a>
            <a href="ChangePass.aspx">
             <div class="col-sm-4" style="margin-top:20px;">
              <div class="panel panel-default box">
  <div class="panel-body" >
                   <div class="col-sm-2"></div>
                   <div class="col-sm-8">
                       <img src="../images/changepas.png" class="img-responsive" height="80%" width="100%"/>
                   </div>
                   <div class="col-sm-2"></div>
  </div>
  <div class="panel-footer" style="background-color:orange;min-height:50px;">
       <span class="sptext">Change Password</span><span class="fa fa-arrow-circle-right" style="color:white;font-size:25px;margin-left:50px;"></span>
  </div>
</div>
           </div></a>
            <a href="Logout.aspx">
             <div class="col-sm-4" style="margin-top:20px;">
               <div class="panel panel-default box">
  <div class="panel-body" >
                   <div class="col-sm-2"></div>
                   <div class="col-sm-8" style="height:130px;">
                       <img src="../images/logout.png" class="img-responsive" height="70%" width="100%"/>
                   </div>
                   <div class="col-sm-2"></div>
  </div>
  <div class="panel-footer" style="background-color:orange;min-height:50px;">
       <span class="sptext">Logout</span><span class="fa fa-arrow-circle-right" style="color:white;font-size:25px;margin-left:110px;"></span>
  </div>
</div>
           </div></a>
        </div>
      <div class="col-sm-12" style="min-height:100px;"></div>
        
        </div>
       
</asp:Content>

