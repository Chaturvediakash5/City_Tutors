<%@ Page Title="" Language="C#" MasterPageFile="~/General.master" AutoEventWireup="true" CodeFile="MyArticle.aspx.cs" Inherits="MyArticle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        $(document).ready(function () {
            $(".spsrno").each(function (x) {
                $(this).text(++x);
            });
        });
             </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
      <div class="container-fluid">
       <div class="row">
             <div class="col-sm-12" style="min-height:70px; background-image:url('images/header1.jpg');background-size:cover;background-repeat:no-repeat;padding-left:10.5%;padding-top:3%">
                    <span style="color:#fba822;font-size:30px;">ARTI</span><span style="color:white;font-size:30px;">CLE</span>
                </div>
        </div>
                    <div class="col-sm-12">
                <div class="row">
             <%--   <div class="col-sm-1"></div>--%>
                <div class="col-sm-12" style="padding:0px">
                    <div class="row">
                       <div class="col-sm-12" style="background:#ffce42;color:black;height:58px;margin-top:1%;padding-top:1%;font-size:large">
                           <div class="row">
                               <div class="col-sm-1">Sr.No.</div>
                               <div class="col-sm-2">Tutor Name</div>
                               <div class="col-sm-2">Article Subject</div>
                               <div class="col-sm-2">Article Title</div>
                               <div class="col-sm-3 text-center">Article</div>
                               <div class="col-sm-2">Date Time</div>
                       </div>
                   </div>
                    </div>
                        </div>
                    <div class="container-fluid">
                          <asp:DataList runat="server" ID="Datat" Width="100%">
                        <ItemTemplate>
                            <div class="row">
                                <div class="col-sm-12" style=" min-height: 50px; margin-top: 1%; margin-bottom: 2%; color: black;border-bottom:2px solid #ffce42">
                                  <div class="row">
                                      <div class="col-sm-1"><span class="spsrno">1</span></div>
                                       <div class="col-sm-2"><%#Eval("TuName")%></div>
                                      <div class="col-sm-2"><%#Eval("SubjectName")%></div>
                                       <div class="col-sm-2"><%#Eval("Title")%></div>
                                        <div class="col-sm-3 text-center"><%#Eval("Article")%></div>
                                      <div class="col-sm-2"><%#Eval("ADT")%></div>
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

