<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMasterPage.master" AutoEventWireup="true" CodeFile="RequestConfirm.aspx.cs" Inherits="AdminZone_RequestConfirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        $(document).ready(function () {
            $(".spsrno").each(function (x) {
                $(this).html(++x);
            });
            $(".ddl").each(function () {
                $(this).change(function () {
                    var v = $(this).val();
                    var rid = $(this).attr("data-id");
                    var Smail = $(this).attr("data-semail");
                    var Smob = $(this).attr("data-smobno");
                    var tmail = $(this).attr("data-tumail");
                    var tmob = $(this).attr("data-tmobno");
                    var ob = { status: v, Rid: rid, Stumob: Smob, Stumail: Smail, tumob: tmob, TuMail: tmail };
                    $.ajax({
                        type: "POST",
                        url: "RequestConfirm.aspx/TutorRequest",
                        contentType: "application/json",
                        data: JSON.stringify(ob),
                        dataType: "json",
                        success: function (result) {
                            alert(result.d);
                        }
                    });
                });
            })
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="container-fluid" style="min-height:300px;padding:0px">
        <div class="row">
             <div class="col-sm-12" style="min-height:80px; background-image:url('../images/header1.jpg');background-size:cover;background-repeat:no-repeat;padding-left:10.5%;padding-top:3%">
                    <span style="color:#fba822;font-size:30px;">TUTION&nbsp;CON</span><span style="color:white;font-size:30px;">FIRM&nbsp;REQUEST</span>
                </div>
        </div>
                    <div class="col-sm-12">
                <div class="row">
             <%--   <div class="col-sm-1"></div>--%>
                <div class="col-sm-12" style="padding:0px">
                    <div class="row">
                       <div class="col-sm-12" style="background:#ffce42;color:black;height:60px;margin-top:3%;padding-top:1%;font-size:large">
                           <div class="row">
                    
                               <div class="col-sm-1">Student Name</div>
                               <div class="col-sm-3 text-center">Student Email</div>
                               <div class="col-sm-1">Tutor Name</div>
                               <div class="col-sm-2">Tutor Email</div>
                               <div class="col-sm-1">Status</div>
                               <div class="col-sm-1">Student MobNo</div>
                               <div class="col-sm-1">Tutor MobNo</div>
                               <div class="col-sm-1">Final Fee</div>
                               <div class="col-sm-1">Action</div>
                               
                       </div>
                   </div>
                    </div>
                        </div>
                    <div class="container-fluid" style="max-height:400px;overflow-y:scroll;overflow-x:hidden;">
                          <asp:DataList runat="server" ID="Datat" Width="100%">
                        <ItemTemplate>
                            <div class="row">
                                <div class="col-sm-12" style=" min-height: 50px; margin-top: 1%; margin-bottom: 2%; color: black;border-bottom:2px solid #ffce42">
                                  <div class="row">
                                      <div class="col-sm-1"><span class="spsrno" style="color:red;text-align:left"></span>&nbsp;&nbsp;&nbsp;<%#Eval("StuName") %></div>
                                      <div class="col-sm-3 text-center"><%#Eval("StudentId")%></div>
                                      <div class="col-sm-1"><%#Eval("TuName")%></div>
                                       <div class="col-sm-2"><%#Eval("TutorId")%></div>
                                      <div class="col-sm-1"><%#Eval("Status")%></div>
                                      <div class="col-sm-1"><%#Eval("Smob") %></div>
                                      <div class="col-sm-1"><%#Eval("Tmob")%></div>
                                       <div class="col-sm-1"><%#Eval("FinalFee") %></div>
                                    <div class="col-sm-1">
                                        <asp:DropDownList CssClass="ddl" runat="server" ID="ddlaction" data-id='<%#Eval("RequestNo")%>' data-semail='<%#Eval("StudentId")%>' data-smobno='<%#Eval("Smob")%>' data-tumail='<%#Eval("TutorId")%>' data-tmobno='<%#Eval("Tmob")%>'>
                                            <asp:ListItem>--Select Action--</asp:ListItem>
                                   <asp:ListItem Value="Confirm">Confirm</asp:ListItem>
                                   <asp:ListItem Value="Cancel">Cancel</asp:ListItem>
                               </asp:DropDownList>
                                    </div>
                                  </div> 
                                </div>
                                </div>
                            
                        </ItemTemplate>
                    </asp:DataList>
                    </div>
           
               <%-- <div class="col-sm-1"></div>--%>
            </div>
                </div>
    </div>
</asp:Content>

