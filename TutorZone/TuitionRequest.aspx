<%@ Page Title="" Language="C#" MasterPageFile="~/TutorZone/TutorMasterPage.master" AutoEventWireup="true" CodeFile="TuitionRequest.aspx.cs" Inherits="TutorZone_TuitionRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
        .tbhead, .tbrecord {
        width:100%;
        }
    </style>
    <script src="JS/jquery-3.1.1.min.js"></script>
  <script>
      $(document).ready(function () {
          $(".spsrno").each(function (x) {
              $(this).text(++x);
          });
          $(".ddl").each(function () {
              $(this).change(function () {
                  var v = $(this).val();
                  var id = $(this).attr("data-id");

                  var b = $("#a" + id).val();

                  //$("#a" + id).css("Readonly",true);
                  var rid = $(this).attr("data-id");
                  var ob = { status: v, Rid: rid, fee: b };
                  $.ajax({
                      type: "POST",
                      url: "TuitionRequest.aspx/StudentRequest",
                      contentType: "application/json",
                      data: JSON.stringify(ob),
                      dataType: "json",
                      success: function (result) {
                          alert(result.d);
                      }
                  });
              });
          })
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
                       <div class="col-sm-12" style="background:#ffce42;color:black;height:45px;margin-top:3%;padding-top:1%;font-size:large">
                           <div class="row">
                               <div class="col-sm-1"></div>
                               <div class="col-sm-2">Request ID</div>
                               <div class="col-sm-2">Student Name</div>
                               <div class="col-sm-2">Request Date</div>
                               <div class="col-sm-2">Qualification</div>
                               <div class="col-sm-1">Final Fee</div>
                               <div class="col-sm-2">Action</div>
                               
                       </div>
                   </div>
                    </div>
                        </div>
                    <div class="container-fluid" style="max-height:400px;overflow-y:scroll;overflow-x:hidden">
                          <asp:DataList runat="server" ID="Datat" Width="100%">
                        <ItemTemplate>
                            <div class="row">
                                <div class="col-sm-12" style=" min-height: 50px; margin-top: 1%; margin-bottom: 2%; color: black;border-bottom:2px solid #ffce42">
                                  <div class="row">
                                      <div class="col-sm-1"></div>
                                      <div class="col-sm-2"><span class="spsrno">1</span></div>
                                       <div class="col-sm-2"><%#Eval("Name")%></div>
                                      <div class="col-sm-2"><%#Eval("RequestDt")%></div>
                                       <div class="col-sm-2"><%#Eval("Qualification")%></div>
                                       <div class="col-sm-1"><input type="text" class="form-control" id='a<%#Eval("RequestNo") %>'  /></div>
                                    <div class="col-sm-2">
                                        <asp:DropDownList runat="server" ID="ddlaction" CssClass="ddl" data-id='<%#Eval("RequestNo") %>'>
                                            <asp:ListItem>--Select Action--</asp:ListItem>
                                   <asp:ListItem>Confirm</asp:ListItem>
                                   <asp:ListItem>Cancel</asp:ListItem>
                               </asp:DropDownList>
                                    </div>
                                     
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

