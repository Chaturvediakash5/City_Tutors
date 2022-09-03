<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageTutorProfile.aspx.cs" Inherits="AdminZone_ManageTutorProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../JS/jquery.js"></script>
    <script>
        $(document).ready(function () {
            $(".gen").each(function () {
                var gender = $(this).text();
                if (gender == "True")
                    $(this).text("Male");
                else
                    $(this).text("Female")
            });
            });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-sm-12" style="padding:0px">
    <div class="col-sm-12 down">
        <div class="row">
           
            <div class="col-sm-12 text-center" style="min-height:100px;padding-top:20px; background-image:url('../images/header1.jpg');background-size:cover;background-repeat:no-repeat;">
                    <span style="color:#fba822;font-size:30px;">Manage</span><span style="color:white;font-size:30px;">TutorProfile</span>
                </div>
            <div class="col-sm-12">
                <div class="row">
                <div class="col-sm-12" style="padding:0px">
                 
                       <div class="col-sm-12" style="background:#ffce42;color:black;min-height:30px">
                           <div class="row">
                               <div class="col-sm-1">Photo</div>
                               <div class="col-sm-1">Name </div>
                               <div class="col-sm-1">Gender.</div>
                               <div class="col-sm-1">Qualification</div>
                               <div class="col-sm-1">Pass Out Year</div>
                               <div class="col-sm-1">City</div>
                               <div class="col-sm-1">Address</div>
                               <div class="col-sm-1">Expertise<br />Subject</div>
                               <div class="col-sm-1">Mobile No</div>
                               <div class="col-sm-2 text-center">Email Id</div>
                               <div class="col-sm-1">Date Time</div>
                               
                       </div>
                   </div>
                    <div class="row">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Width="100%" AllowPaging="true" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging" GridLines="None">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <div class="row" style="padding:0px">
                                <div class="col-sm-12 d" style=" min-height: 50px; margin-top: 1%; margin-bottom: 2%; color: black;">
                                    <div class="row">
                                        <div class="col-sm-1">
                                            <img src='../<%#string.Concat(Eval("folderName"),"/",Eval("FileName"))%>' style="width: 70px; height: 70px; " /> 
                                        </div>
                                        <div class="col-sm-1"><%#Eval("TuName")%></div>
                                        <div class="col-sm-1"> <span class="gen" ><%#Eval("Gender")%></span></div>
                                        <div class="col-sm-1"><%#Eval("Qualification")%></div>
                                        <div class="col-sm-1"><%#Eval("PassoutYear")%></div>
                                        <div class="col-sm-1"><%#Eval("CityName")%></div>
                                        <div class="col-sm-1"><%#Eval("Address")%></div>
                                        <div class="col-sm-1"><%#Eval("SubjectName")%></div>
                                        <div class="col-sm-1"><%#Eval("MobNo")%></div>
                                        <div class="col-sm-2 text-left"><%#Eval("EmailId")%></div>
                                        <div class="col-sm-1"><%#Eval("DTReg")%></div>
                                       
                                    </div> 
                                </div>
                                </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                        </div>
                    
                        </div>
            </div>
                </div>
        </div>
</div>
    </div>
</asp:Content>

