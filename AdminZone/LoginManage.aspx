<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMasterPage.master" AutoEventWireup="true" CodeFile="LoginManage.aspx.cs" Inherits="AdminZone_LoginManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .down {
            min-height:600px;
            background:gray;
            margin-top:2%;
            margin-bottom:2%;
        }
        .ttop {
            min-height:80px;
            border-bottom:2px solid #ffce42; 
            color:white;
        }
        .m {
            min-height:100px;
        }
        .a {
            margin-top:1%;
            padding:3%;
        }
    </style>
    <script>
        $(document).ready(function () {
            $(".ChkStatus").each(function () {
                var status = $(this).attr("data-id");
                var s = $(this).parent().find(".sp");
                if (status == "True") {
                    $(this).prop("checked", "checked");
                    s.text("Enabled");
                }
                else {
                    s.text("Disabled");
                }
            });
            $(".ChkStatus").change(function () {
                var status = $(this).attr("data-id");
                var newStatus = status == "True" ? false : true;
                var userid = $(this).attr("data-uid");
                var s = $(this).parent().find(".sp");
                var msg = status == "True" ? "Are you sure, you want to block this user?" : "Are you sure, you want to un-block this user?";
                if (confirm(msg) == true) {
                    // Ajax code starts from here...
                    var para = { uid: userid, ustatus: newStatus };
                    $.ajax({
                        type: "POST",
                        url: "LoginInfo.aspx/ManageUSerStatus",
                        contentType: "application/json",
                        data: JSON.stringify(para),
                        dataType: "json",
                        success: function (result) {
                            if (result.d == true) {
                                alert("User status changed successfully.");
                                if (s.text() == "Enabled")
                                    s.text("Disabled");
                                else
                                    s.text("Enabled");
                            }
                            else
                                alert("Unable to change user status.");
                        }
                    });

                    // Ajax code ends from here..
                }
                else {
                    if (status == "False")
                        $(this).removeProp("checked");
                    else
                        $(this).prop("checked", "checked");

                }
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-sm-12">
    <div class="col-sm-12 down">
        <div class="row">
          <div class="col-sm-12 text-center" style="min-height:100px;padding-top:20px; background-image:url('../images/header1.jpg');background-size:cover;background-repeat:no-repeat;">
                    <span style="color:#fba822;font-size:30px;">Login</span><span style="color:white;font-size:30px;">Management</span>
                </div>
            <div class="col-sm-12">
                <div class="row">
             
                <div class="col-sm-12" >
                 
                       <div class="col-sm-12" style="background:#ffce42;color:white;min-height:30px;padding-top:3px;font-size:17px">
                           <div class="row">
                               <div class="col-sm-2">User Photo</div>
                               <div class="col-sm-2">Name</div>
                               <div class="col-sm-2">LastLogin</div>
                               <div class="col-sm-2">Lcount</div>
                               <div class="col-sm-2">Status</div>

                       </div>
                   </div>
                    <asp:DataList runat="server" ID="Dt" Width="100%" AllowPaging="True">
                        <ItemTemplate>
                            <div class="row">
                                <div class="col-sm-12 d" style=" min-height: 50px; margin-top: 1%; margin-bottom: 2%; color: white;border-bottom:2px solid #ffce42">
                                  <div class="row">
                                      <div class="col-sm-2">
                                          <img src='<%#string.Concat("../",Eval("FolderName"),"/",Eval("FileNAme"))%>' style="width:50px;height:50px;border-radius:50%;" title='<%#Eval("LUserId")%>' /> </div>
                               <div class="col-sm-2"><%#Eval("TuName")%></div>
                               <div class="col-sm-2"><%#Eval("Lastlogin")%></div>
                               <div class="col-sm-2"><%#Eval("Lcount")%></div>
                               <div class="col-sm-2 dv">
                                  <input type="checkbox" class="ChkStatus" data-id='<%#Eval("Status") %>' data-uid='<%#Eval("LUserId") %>' />
                               <span class="sp"></span>
                                    </div>
                              <div class="col-sm-2"></div>
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

