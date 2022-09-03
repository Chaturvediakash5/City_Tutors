<%@ Page Title="" Language="C#" MasterPageFile="~/General.master" AutoEventWireup="true" CodeFile="GetOTP.aspx.cs" Inherits="GetOTP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div class="col-sm-12" style="min-height: 100px; background-color: white;">
        <div class="row">
                    <div class="col-sm-12 img-responsive" style="background-color: white; min-height: 80px; background-image: url('images/header1.jpg'); background-repeat: no-repeat; background-size: cover; padding-left: 10.5%; padding-top: 1%">
                        <span style="font-size: 30px; color: orange;">Get</span><span style="font-weight: bold; font-size: 30px; color: white;">&nbsp;Varification</span>
                   
                         </div>
                </div>
       </div>
    
     <div class="col-sm-12" style="text-align:center;font-size:30px;" > Get Varification Code..<hr style="border:2px solid orange;"/></div>  
        <div class="col-sm-12" style="min-height:20px;"></div>

        <div class="col-sm-12">
            <div class="col-sm-4"></div>
                <div class="col-sm-4" style="border:2px solid orange;">
                     <div class="col-sm-12">
           <div class="col-sm-12" style="min-height:20px;"></div>
                <div class="col-sm-6">
  <div class="form-group">
    <label for="exampleInputEmail1">Enter Last 4 Digits</label></div></div>
            <div class="col-sm-6">
    <asp:textbox ID="TxtNum" runat="server" class="form-control" placeholder="Last 4 Digit Mobile No"/>
  </div></div>
                    
          <span style="margin-left:50%; font-size:25px;"> Or</span> 
                      <div class="col-sm-12" style="min-height:20px;"></div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter Your Email Address</label>
    <asp:textbox ID="TxtEmail" runat="server" class="form-control"  placeholder="Email" />
  </div>
<asp:button ID="BtnVarification" runat="server" Text="Send Varification Code" style="color:white;background:orange;" OnClick="BtnVarification_Click" />   <div class="col-sm-12" style="min-height:20px;"></div>
 </div>
        <div class="col-sm-4"></div>
           
        </div>
    <br /><br />
</asp:Content>

