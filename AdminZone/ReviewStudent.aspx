<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ReviewStudent.aspx.cs" Inherits="AdminZone_ReviewStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
         .imgstar {
             width:30px;
             height:30px;
             border-radius:50%;
             cursor:pointer;
             background-color:lightblue;
         }
                 .tbhead, .tbrecord {
        width:100%;
        }
    </style>
    <script>
        $(document).ready(function () {
            $(".star").each(function () {
                var x = $(this).find(".hf").text();
                x = parseInt(x);
                for (i = 0; i < x; i++) {
                    $(this).find(".imgstar").eq(i).attr("src", "../images/YellowStar.png");
                }
            });
            $(document).ready(function () {
                $(".spsrno").each(function (x) {
                    $(this).text(++x);
                });
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-sm-12">
        <div class="col-sm-12 down">
            <div class="row">
               <div class="col-sm-12 text-center" style="min-height:100px;padding-top:20px; background-image:url('../images/header1.jpg');background-size:cover;background-repeat:no-repeat;">
                    <span style="color:#fba822;font-size:30px;">Review</span><span style="color:white;font-size:30px;">Student</span>
                </div>
                <div class="col-sm-12">
                    <div class="row">
                       
                        <div class="col-sm-12">

                            <div class="col-sm-12" style="background:#808080; color: black; min-height: 30px;width:100%;margin-top:2%">
                                <div class="row">
                                    <div class="col-sm-1">So no ..</div>
                                    <div class="col-sm-2">
                                        Photo</div>
                                    <div class="col-sm-1">Name </div>
                               <div class="col-sm-3">Message </div>
                                        <div class="col-sm-3">Star </div>
                                        <div class="col-sm-1">Date Time</div>
                                        <div class="col-sm-1">Update Now..</div>
                                    </div>
                                </div>
                                <asp:DataList runat="server" ID="Dt" Width="100%">

                                    <ItemTemplate>
                                        <div class="row">
                                            <div class="col-sm-12 d" style="min-height: 50px; margin-top: 1%; margin-bottom: 2%; color: black; border-bottom: 2px solid #ffce42">
                                                <div class="row">
                                                    <div class="col-sm-1"><span class="spsrno">1</span></div>
                                                    <div class="col-sm-2">
                                                        <img src='../<%#string.Concat(Eval("FolderName"),"/",Eval("FileName"))%>' style="width: 70px; height: 70px; margin: 5px;" />
                                                    </div>
                                                    <div class="col-sm-1"><%#Eval("Name")%></div>
                                                    <div class="col-sm-3"><%#Eval("msg")%></div>
                                                    <div class="col-sm-3 star">
                                                       <span class="hf" style="display:none"><%#Eval("Star")%></span>
                                                        <img class="imgstar" src="../images/DefaultStar.png" data-id="1" />
                                                        <img class="imgstar" src="../images/DefaultStar.png" data-id="2" />
                                                        <img class="imgstar" src="../images/DefaultStar.png" data-id="3" />
                                                        <img class="imgstar" src="../images/DefaultStar.png" data-id="4" />
                                                        <img class="imgstar" src="../images/DefaultStar.png" data-id="5" />
                                                    </div>
                                                    <div class="col-sm-1"><%#Eval("RDT")%></div>
                                                    <div class="col-sm-1"></div>
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

