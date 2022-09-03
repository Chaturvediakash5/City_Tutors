<%@ Page Title="" Language="C#" MasterPageFile="~/General.master" AutoEventWireup="true" CodeFile="Toturs.aspx.cs" Inherits="Toturs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <style>
         .imgstar {
             width:35px;
             height:35px;
             border-radius:50%;
             cursor:pointer;
             background-color:lightblue;
         }
    </style>
    <script>

        $(document).ready(function () {
            $(".star").each(function () {
                var x = $(this).find(".hf").text();
                x = parseInt(x);
                for (i = 0; i < x; i++) {
                    $(this).find(".imgstar").eq(i).attr("src", "images/YellowStar.png");
                }
            });
            $(".btnRequest").click(function (e) {
                var arr = [$(this).attr("data-id"),$(this).attr("data-minfee"),$(this).attr("data-maxfee")];
                window.location.href = "RequestforTutor.aspx?inform=" +arr;
            })
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
   <div class="row">
        <!-- start teacher -->
        <div class="col-sm-12" style="min-height: 600px;">
            <div class="col-sm-12 text-center" style="min-height: 150px; padding-top: 20px;">
                <span style="font-size: 30px; color: black; font-weight: bold;">OUR TEACHERS</span>
                <br />
                <span style="font-size: 17px; color: gray; text-align: justify;">You'll receive custom quotes from multiple teachers within hours. When you're ready, hire the teacher that you feel is the right fit.</span>
            </div>
            
                    <center><asp:Label ID="LblMsg" runat="server" Font-Size="Large" style="text-align:center;font-size:20px;"></asp:Label></center>
    <asp:DataList ID="GVReview" runat="server" Width="100%" AutoGenerateColumns="false" ShowHeader="false" RepeatColumns="4">
 
                <ItemTemplate>
                    <table style="margin-left:80px;background-color:#f2f2f2;margin-bottom:10%">
                        <tr style="text-align:center;">
                            <td>
                               <img src='<%#string.Concat(Eval("FolderName"),"/",Eval("FileName"))%>' style="width:100px;height:100px;margin:5px;text-align:center" /> 
                            </td>
                          
                        </tr>
                        
                        <tr>
                            <td>
                                <span style="color:black;">Name :</span>
                                <span><%#Eval("TuName") %></span>
                               
                            </td>
                            </tr>
                        <tr>
                            <td>
                                <span style="color:black;">Qualification :</span>
                                <%#Eval("Qualification") %>
                            </td>
                           </tr>
                        <tr>
                            <td>
                                 <span style="color:black;">Expertise Subject :</span>
                                <%#Eval("SubjectName") %>
                            </td>
                            </tr>
                        <tr class="max">
                            <td>
                                 <span style="color:black;">Minmum Salary :</span>
                                 <span class="clickBind" data-quali="<%#Eval("Minfee") %>"><%#Eval("Minfee") %></span>
                               
                            </td>
                            </tr>
                        <tr>
                            <td>
                                <span style="color:black;">Maxmum Salary :</span>
                                <span class="clickBind" data-quali="<%#Eval("maxfee") %>"><%#Eval("maxfee") %></span>
                                
                            </td>
                           
                        </tr> 

                        <tr>
                            <td>

                            <input type="button" class="btnRequest" data-id="<%#Eval("EmailId")%>" data-minfee="<%#Eval("Minfee") %>" data-maxfee="<%#Eval("Maxfee") %>" value="Request Here.."style="height:30px;width:100px;background:orange;color:white;margin-left:30px;" />
                        </td>
                                </tr> 
                              
                       
                    </table>

                </ItemTemplate>
     
    </asp:DataList>
</div>  
                
       </div>
</asp:Content>
<%--  --%>
