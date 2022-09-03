<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AllRequest.aspx.cs" Inherits="AdminZone_AllRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        $(document).ready(function () {
            $(".spsrno").each(function (x) {
                $(this).html(++x);
            });
        });
             </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="container-fluid" style="min-height:300px;padding:0px">
        <div class="row">
             <div class="col-sm-12" style="min-height:80px; background-image:url('../images/header1.jpg');background-size:cover;background-repeat:no-repeat;padding-left:10.5%;padding-top:3%">
                    <span style="color:#fba822;font-size:30px;">TUTION</span><span style="color:white;font-size:30px;">REQUEST</span>
                </div>
        </div>
                    <div class="col-sm-12">
                <div class="row">
             <%--   <div class="col-sm-1"></div>--%>
                <div class="col-sm-12" style="padding:0px">
                    <div class="row">
                       <div class="col-sm-12" style="background:#ffce42;color:black;height:60px;margin-top:3%;padding-top:1%;font-size:large">
                           <div class="row">
                    
                               <div class="col-sm-1">Requezt No.</div>
                               <div class="col-sm-3 text-center">Student Email</div>
                               <div class="col-sm-2">Tutor Email</div>
                               <div class="col-sm-1">From Date</div>
                               <div class="col-sm-1">To Date</div>
                               <div class="col-sm-1">Status</div>
                               <div class="col-sm-1">Final Fee</div>
                               <div class="col-sm-1">Aproval</div>
                               <div class="col-sm-1">Request date</div>
                               
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
                               <div class="col-sm-1"><%#Eval("RequestNo") %></div>
                               <div class="col-sm-3 text-left"><%#Eval("StudentId") %></div>
                               <div class="col-sm-2 text-left"><%#Eval("TutorId") %></div>
                               <div class="col-sm-1"><%#Eval("FromDT") %></div>
                               <div class="col-sm-1"><%#Eval("ToDate") %></div>
                               <div class="col-sm-1"><%#Eval("Status") %></div>
                               <div class="col-sm-1 text-center"><%#Eval("FinalFee") %></div>
                               <div class="col-sm-1"><%#Eval("Remark") %></div>
                            <div class="col-sm-1"><%#Eval("RequestDt") %></div>
                                  
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

