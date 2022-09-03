<%@ Page Title="" Language="C#" MasterPageFile="~/General.master" AutoEventWireup="true" CodeFile="RequestforTutor.aspx.cs" Inherits="RequestforTutor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .outer {
            min-height:500px;
        }
        .a {
            font-size:19px;
        }
        #show {
        display:none;
        }
    </style>
    <script>
       
        $(document).ready(function () { 
            $("#<%=Rdlold.ClientID%>").change(function () {
                $("#show").show();
            });
            $("#<%=rblnew.ClientID%>").change(function () {
                $("#show").hide();
                var x = $("#<%=lblmin.ClientID%>").text();
                var y = $("#<%=lblmax.ClientID%>").text();
                var em = $("#<%=HFEmail.ClientID%>").val();
                var FeeRecord = [x, y, em];
               // alert(FeeRecord);
                window.location.href = "Registration.aspx?Nid="+FeeRecord;
            });

          //  var b = $("#<%=LblMsg.ClientID%>").text().length;
            //if (b > 0)
              //  $("#LblMsg").fadeIn("slow").delay(6000).fadeOut(2000).delay(500, function () {
                //    $("#<%=LblMsg.ClientID%>").text("");
               // })
            
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
     <div class="container-fluid outer">
        <div class="row">
                    <div class="col-sm-12" style="background-color: white; min-height: 80px; background-image: url('Images/header1.jpg'); background-repeat: no-repeat; background-size: cover;padding-left:10.5%;padding-top:1%">
                 <span style="font-size:30px;color:orange;"> REQUEST</span><span  style="font-weight:bold;font-size:30px;color:white;"> TUTION</span>
            </div>
            </div>
         <asp:Label ID="LblMsg" runat="server" Font-Size="Large"></asp:Label>
        <div class="col-sm-12">
                       <div class="col-sm-4"></div>
                        <div class="col-sm-6" style="margin-top:3%">
                                     <div class="form-group">
                    <label class="a" ><asp:RadioButton ID="rblnew" runat="server"  GroupName="b"/>New Student </label>
                  <label class="a" style="margin-left:30%"><asp:RadioButton ID="Rdlold" runat="server"  GroupName="b" />Registred Student</label>
                </div>
                     <div class="form-group" id="show">
                    <asp:TextBox ID="txtemail"  runat="server" BackColor="#eeeeee" class="form-control" placeholder="Enter Your Email ID" TextMode="Email" />
                </div>
                           
                             <div class="form-group">
                    <label class="a">From Date</label>
                    <asp:TextBox ID="txtfromDate" runat="server" BackColor="#eeeeee" class="form-control" TextMode="Date" />
                </div>
                           
                            <div class="form-group">
                    <label class="a" >To Date</label>
                    <asp:TextBox ID="txttodate" runat="server" BackColor="#eeeeee" class="form-control" TextMode="Date" />
                </div>
                                    <div class="form-group">
                    <label class="a" >Fee/Month</label>
                  <asp:Label runat="server" id="lblmin" style="font-size:19px;margin-left:15%"  ></asp:Label>
                                        <asp:HiddenField runat="server" ID="HFEmail" />
                                        <asp:Label runat="server" id="lblmax" style="font-size:19px;margin-left:20%" >&#8377;Maxfee</asp:Label>
                </div>
                    
<asp:Button runat="server" ID="btnsubmit" Text="Submit My Request"  OnClick="btnsubmit_Click" Style="background: orange; color: white;border:none;height:30px;width:30%;font-size:large;font-weight:bold"/>
                        </div>
                        <div class="col-sm-2"></div>
        </div>
    </div>
</asp:Content>

