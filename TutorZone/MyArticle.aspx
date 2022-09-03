<%@ Page Title="" Language="C#" MasterPageFile="~/TutorZone/TutorMasterPage.master" AutoEventWireup="true" CodeFile="MyArticle.aspx.cs" Inherits="TutorZone_MyArticle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        $(document).ready(function () {
            $("#<%=ddlSubject.ClientID%> option").eq(0).before("<option value='0' selected>--Select SUbject--</option>");
            $("#<%=BtnArtical.ClientID%>").click(function () {
             
                var Subject,Title,Article;
                Title = $("#<%=TxtTitle.ClientID%>").val()
                if (Title.length < 1) {
                    $("#<%=TxtTitle.ClientID%>").css("border", "2px solid Green").focus();
                    return false;
                }
               Article = $("#<%=TxtArticle.ClientID%>").val()
                if (Article.length < 1) {
                    $("#<%=TxtArticle.ClientID%>").css("border", "2px solid Green").focus();
                    return false;
                }
                $("#<%=ddlSubject.ClientID%>").blur(function () {
                    var count = '0';
                    var Subject= $(this);
                    if (Subject.val() != '0')
                    {
                        count++;
                          
                        $("#<%=ddlSubject.ClientID%>").css("border", "2px solid Green");
                    }
                    else {
                        $("#<%=ddlSubject.ClientID%>").css("border", "2px solid Red");
                    }
                })
            })
        })

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div  class="col-sm-12 text-center" style="height:80px;background-image:url('../images/header1.jpg');background-size:100% 100%;">
        <span style="font-size:38px;color:orange;">My</span><span style="font-size:46px;color:white;">Article</span>
    </div>
            <div class="col-sm-12">
                <div class="row">
                <div class="col-sm-3"></div>
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                <div class="col-sm-6" style="min-height:550px;background:white;margin-top:2%;margin-bottom:2%;border-radius:15px;">
                   <asp:Label ID="Label1" runat="server" Font-Size="20"></asp:Label>
                     <span style="font-size:20px;color:gray;">Subject:</span><br />
                    <asp:DropDownList ID="ddlSubject" runat="server" style="height:40px;width:400px;background-color:#eeeeee;" DataSourceID="SqlDataSource1" DataTextField="SubjectName" DataValueField="Sid">

                    </asp:DropDownList>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CityTutorsDBConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Subject]"></asp:SqlDataSource>
                    <br /><br />
                    <span style="font-size:20px;color:gray;"> Title:</span><br />
                    <asp:TextBox ID="TxtTitle" runat="server"  Height="40px" Width="100%" placeholder=" Enter Subject Title....." CssClass="form-control" style="border:none;background-color:#eeeeee;"/><br />
                    <span style="font-size:20px;color:gray;"> Article:</span><br />
                    <asp:TextBox ID="TxtArticle"   runat="server" Height="164px" Width="99%" placeholder=" Enter Artical....." CssClass="form-control" TextMode="MultiLine" style="resize:none;border:none;background-color:#eeeeee;"/><br />
                   <br /><br /> <asp:Button ID="BtnArtical" runat="server" Text="Add Artical" Height="40px" Width="30%" Font-Size="Large" ForeColor="white" Font-Bold="true" BorderStyle="Groove" BackColor="Orange" style="border-radius:5px;border:none" OnClick="BtnArtical_Click"/>
                </div>
                <div class="col-sm-3"></div>
            </div>
                </div>
</asp:Content>

