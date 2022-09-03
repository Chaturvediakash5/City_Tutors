<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="AdminZone_Enquiry" %>

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
                    <span style="color:#fba822;font-size:30px;">Enquiry</span><span style="color:white;font-size:30px;"></span>
                </div>
            <div class="col-sm-12">
                <div class="row">
               
                <div class="col-sm-12" >
                 
                       <div class="col-sm-12" style="background:#ffce42;color:black;min-height:30px">
                           <div class="row">
                               <div class="col-sm-1">So no ..</div>
                               <div class="col-sm-2">Name </div>
                               <div class="col-sm-2">EmailID</div>
                               <div class="col-sm-2">Mobile No </div>
                               <div class="col-sm-2">Message </div>
                               <div class="col-sm-2">Date Time</div>
                               <div class="col-sm-1">Update Now..</div>
                       </div>
                   </div>
                    <asp:DataList runat="server" ID="Dt" Width="100%" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">

                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="White" ForeColor="#333333" />

                        <ItemTemplate>
                            <div class="row">
                                <div class="col-sm-12 d" style=" min-height: 50px; margin-top: 1%; margin-bottom: 2%; color: black;">
                                  <div class="row">
                                      <div class="col-sm-1"><span class="spsrno">1</span></div>
                                      <div class="col-sm-2"><%#Eval("Name")%></div>
                                       <div class="col-sm-2"><%#Eval("EmailId")%></div>
                                      <div class="col-sm-2"><%#Eval("Mob")%></div>
                                       <div class="col-sm-2"><%#Eval("Msg")%></div>
                                    <div class="col-sm-2"><%#Eval("EnqueryDate")%></div>
                                      <div class="col-sm-1"></div>
                                  </div> 
                                </div>
                                </div>
                            
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    </asp:DataList>
                        </div>
            
            </div>
                </div>
        </div>
 
</div>
    </div>
</asp:Content>

