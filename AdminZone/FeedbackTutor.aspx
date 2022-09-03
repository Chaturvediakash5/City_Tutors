<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMasterPage.master" AutoEventWireup="true" CodeFile="FeedbackTutor.aspx.cs" Inherits="AdminZone_FeedbackTutor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
      
        .down {
            min-height: 600px;
            background: #f6f6f6;
            margin-top: 2%;
            margin-bottom: 2%;
            color:black;
        }

        .ttop {
            min-height: 80px;
            border-bottom: 2px solid #ffce42;
            color: black;
        }

        .m {
            min-height: 100px;
        }

        .a {
            margin-top: 1%;
            padding: 3%;
        }
    </style>
 
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
                    <span style="color:#fba822;font-size:30px;">Feedback </span><span style="color:white;font-size:30px;">Tutor</span>
                </div>
            <div class="col-sm-12">
                <div class="row">
             
                <div class="col-sm-12" >
                 
                       <div class="col-sm-12" style="background:#ffce42;color:black;min-height:30px">
                           <div class="row">
                               <div class="col-sm-3">UserId</div>
                              
                               <div class="col-sm-2">Subject</div>
                               <div class="col-sm-3">Feedback Message</div>
                               <div class="col-sm-2">Date Time</div>
                       </div>
                   </div>
                    <asp:DataList runat="server" ID="Dt" Width="100%">

                        <ItemTemplate>
                            <div class="row">
                                <div class="col-sm-12 d" style=" min-height: 50px; margin-top: 1%; margin-bottom: 2%; color: black;border-bottom:2px solid #ffce42">
                                  <div class="row">
                                      <div class="col-sm-3"><%#Eval("UserId")%></div>
                                    

                               <div class="col-sm-2"><%#Eval("Subject")%></div>
                               <div class="col-sm-3"><%#Eval("FeedbackMsg")%></div>
                               <div class="col-sm-2"><%#Eval("FDT")%></div>
                              
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

