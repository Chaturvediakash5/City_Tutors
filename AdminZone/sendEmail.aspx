<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMasterPage.master" AutoEventWireup="true" CodeFile="sendEmail.aspx.cs" Inherits="AdminZone_sendEmail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
        .outer {
        min-height:400px;margin-top:1%;
        }
        .rid {
        float:right;cursor:pointer;margin-left:10px;font-size:large;
        }
        .Cc2 {
        display:none;
        }
        .Bcc2 {
        display:none;
        }
    </style>
    <script>
        $(document).ready(function () {
            $("#cc1").click(function () {
                $(".Cc2").show();
                $("#cc1").hide();
                $("#cross1").show();
            });
            $("#bcc1").click(function () {
                $(".Bcc2").show();
                $("#bcc1").hide();
                $("#cross2").show();
            });
            $("#cross1").click(function () {
                $("#cc1").show();
                $(".Cc2").hide();
                $("#cross1").hide();
            });
            $("#cross2").click(function () {
                $("#bcc1").show();
                $(".Bcc2").hide();
                $("#cross2").hide();
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="container-fluid">
        <div class="row">
            
    <div class="col-sm-12 text-center" style="min-height:100px;padding-top:20px; background-image:url('../images/header1.jpg');background-size:cover;background-repeat:no-repeat;">
                    <span style="color:#fba822;font-size:30px;">Send </span><span style="color:white;font-size:30px;"> Email</span>
                </div>
        </div>         
    <div class="col-lg-12" style="padding-top:50px;">
        <div class="col-lg-1"></div>
        <div class="col-lg-10 outer" style="padding:10px;">
             <div class="form-group">
                 <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    <label for="exampleInputEmail1">To</label><span class="rid" id="bcc1">Bcc</span><span class="rid" id="cc1">Cc</span>
                    <asp:TextBox ID="TxtTo" runat="server" BackColor="#eeeeee" class="form-control" placeholder="Enter Email Id" />
                </div>
             <div class="form-group Cc2">
                    <label for="exampleInputEmail1">Cc</label><span class="rid" id="cross1">&#10007;</span>
                    <asp:TextBox ID="TxtCc" runat="server" BackColor="#eeeeee" class="form-control" placeholder="Enter Email Id" />
                </div>
            <div class="form-group Bcc2">
                    <label for="exampleInputEmail1 ">Bcc</label><span class="rid" id="cross2">&#10007;</span>
                    <asp:TextBox ID="TxtBcc" runat="server" BackColor="#eeeeee" class="form-control" placeholder="Enter Email Id" />
                </div>
            <div class="form-group">
                    <label for="exampleInputEmail1">Subject</label>
                    <asp:TextBox ID="TxtSub" runat="server" BackColor="#eeeeee" class="form-control" placeholder="Enter Your Subject..." />
                </div>
             <div class="form-group">
                    <label for="exampleInputEmail1">Message</label>
                    <asp:TextBox ID="TxtMsg" runat="server" BackColor="#eeeeee" class="form-control" TextMode="MultiLine" Style="resize: none;" placeholder="Enter Your Message..." Rows="4" />
                </div>
            <div class="form-group">
                    <label for="exampleInputEmail1">Attactment</label>
                <asp:FileUpload ID="FUAT" CssClass="form-control" runat="server" />
                </div>
            <asp:Label runat="server" ID="Lbl" />
            <div class="form-group">
                   
               <center> <asp:Button ID="BtnSend" CssClass="btn" ForeColor="White" BackColor="#faa721" BorderStyle="None" Font-Size="Large" Width="150px" runat="server" Text="Send" OnClick="BtnSend_Click" /></center>
                </div>
        </div>
        <div class="col-lg-1"></div>
    </div>

 </div>
</asp:Content>

