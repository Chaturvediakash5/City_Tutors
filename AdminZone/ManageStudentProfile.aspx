<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageStudentProfile.aspx.cs" Inherits="AdminZone_ManageStudentProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script>
         $(document).ready(function () {
             $(".spsrno").each(function (x) {
                 $(this).text(++x);
             });
         });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="col-sm-12">
    <div class="col-sm-12 down">
        <div class="row">
           <div class="col-sm-12 text-center" style="min-height:100px;padding-top:20px; background-image:url('../images/header1.jpg');background-size:cover;background-repeat:no-repeat;">
                    <span style="color:#fba822;font-size:30px;">Manage </span><span style="color:white;font-size:30px;">Student Profile</span>
                </div>
            <div class="col-sm-12">
                <div class="row">
                <div class="col-sm-12">
                 
                       <div class="col-sm-12" style="background:#ffce42;color:black;min-height:30px">
                           <div class="row">
                               <div class="col-sm-1">Photo</div>
                               <div class="col-sm-1">Name </div>
                               <div class="col-sm-1">Father Name</div>
                               <div class="col-sm-1">City</div>
                               <div class="col-sm-1">Address</div>
                               <div class="col-sm-1">Mobile No</div>
                               <div class="col-sm-3">EmailID</div>
                               <div class="col-sm-1">Course</div>
                               <div class="col-sm-1">Course Year</div>
                               <div class="col-sm-1">Date Time</div>
                              
                              
                       </div>
                   </div>
                  
                        </div>
                    <div class="container-fluid" style="max-height:300px;overflow-y:scroll;overflow-x:hidden">
                          <asp:DataList runat="server" ID="Dt" Width="100%">

                        <ItemTemplate>
                            <div class="row">
                                <div class="col-sm-12 d" style=" min-height: 50px; margin-top: 1%; margin-bottom: 2%; color: black;border-bottom:2px solid #ffce42">
                                    <div class="row">
                                        <div class="col-sm-1">
                                            <span class="spsrno">1</span>
                                            <img src='../<%#string.Concat(Eval("folderName"),"/",Eval("FileName"))%>' style="width: 70px; height: 70px; margin: 3px;" /> 
                                        </div>
                                        <div class="col-sm-1"><%#Eval("Name")%></div>
                                        <div class="col-sm-1"><%#Eval("FName")%></div>
                                        <div class="col-sm-1"><%#Eval("cityName")%></div>
                                        <div class="col-sm-1"><%#Eval("Adddress")%></div>
                                        <div class="col-sm-1"><%#Eval("MobNo")%></div>
                                        <div class="col-sm-3"><%#Eval("EmailId")%></div>
                                        <div class="col-sm-1 text-center"><%#Eval("Qualification")%></div>
                                        <div class="col-sm-1"><%#Eval("CourseYear")%></div>
                                        <div class="col-sm-1"><%#Eval("RaDate")%></div>
                                       
                                        
                                    </div> 
                                </div>
                                </div>
                            
                        </ItemTemplate>
                    </asp:DataList>
                    </div>
            </div>
                </div>
        </div>
</div>
    </div>
</asp:Content>

