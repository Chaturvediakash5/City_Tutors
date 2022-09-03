<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMasterPage.master" AutoEventWireup="true" CodeFile="SendMsg.aspx.cs" Inherits="AdminZone_SendMsg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
        .outer {
        min-height:200px;margin-top:1%;
        }
        .rid {
        float:right;cursor:pointer;margin-left:10px;font-size:large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="container-fluid">
        <div class="row">
    <div class="col-sm-12 text-center" style="min-height:100px;padding-top:20px; background-image:url('../images/header1.jpg');background-size:cover;background-repeat:no-repeat;">
                    <span style="color:#fba822;font-size:30px;">Send </span><span style="color:white;font-size:30px;"> SMS</span>
                </div>
        </div> 
        <div class="row">         
    <div class="col-lg-12" style="padding-top:130px;">
        <div class="col-lg-1"></div>
        <div class="col-lg-10 outer">
             <div class="form-group">
                 <asp:Label ID="Lblmsg" runat="server"></asp:Label>
                    <label for="exampleInputEmail1">Mobile Number.</label>
                    <asp:TextBox ID="TxtTo" runat="server" BackColor="#eeeeee" class="form-control" placeholder="Enter Mobile Number" />
                </div>
             <div class="form-group">
                    <label for="exampleInputEmail1">Message </label>
                    <asp:TextBox ID="TxtMsg" runat="server" BackColor="#eeeeee" class="form-control" TextMode="MultiLine" placeholder="Enter Your Message..." Rows="4" />
                </div>
            
            <div class="form-group">
                   
               <center> <asp:Button ID="BtnSend" CssClass="btn" ForeColor="White" BackColor="#faa721" BorderStyle="None" Font-Size="Large" Width="150px" runat="server" Text="Send SMS" OnClick="BtnSend_Click"  /></center>
                </div>
        </div>
        <div class="col-lg-1"></div>
    </div>
     </div>

 </div>
</asp:Content>

