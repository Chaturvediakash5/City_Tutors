<%@ Page Title="" Language="C#" MasterPageFile="~/General.master" AutoEventWireup="true" CodeFile="DisplayReview.aspx.cs" Inherits="DisplayReview" %>

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
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
<div style="width:80%;height:400px;background-color:white;margin:0px auto;padding:15px;">
    <asp:GridView ID="GVReview" runat="server" Width="100%" AutoGenerateColumns="false" ShowHeader="false">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <table>
                        <tr>
                            <td rowspan="2">
                               <img src='<%#string.Concat(Eval("FolderName"),"/",Eval("FileName"))%>' style="width:70px;height:70px;margin:5px;" /> 
                            </td>
                            <td>
                                <%#Eval("Name") %>
                            </td>
                            <td class="star">
                               <span class="hf" style="display:none"><%#Eval("Star") %></span>
                    <img class="imgstar" src="images/DefaultStar.png" data-id="1" />
                    <img class="imgstar" src="images/DefaultStar.png" data-id="2" />
                    <img class="imgstar" src="images/DefaultStar.png" data-id="3" />
                    <img class="imgstar" src="images/DefaultStar.png" data-id="4" />
                    <img class="imgstar" src="images/DefaultStar.png" data-id="5" />
                            </td>
                            <td>
                                Posted On: <%#Eval("RDT") %>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                            <%#Eval("msg") %>
                                </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</div>
</asp:Content>

