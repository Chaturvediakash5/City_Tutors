<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMasterPage.master" AutoEventWireup="true" CodeFile="StudentProfile.aspx.cs" Inherits="StudentProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div  class="col-sm-12 text-center" style="height:80px;background-image:url('../images/header1.jpg');background-size:100% 100%;">
        <span style="font-size:38px;color:orange;">Tutor</span><span style="font-size:46px;color:white;">Profile</span>
    </div>
    <asp:GridView ID="GvStudent" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="EmailId" DataSourceID="SqlDataSource1" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Adddress" HeaderText="Adddress" SortExpression="Adddress" />
            <asp:BoundField DataField="MobNo" HeaderText="MobNo" SortExpression="MobNo" />
            <asp:BoundField DataField="EmailId" HeaderText="EmailId" ReadOnly="True" SortExpression="EmailId" />
            <asp:BoundField DataField="Courses" HeaderText="Courses" SortExpression="Courses" />
            <asp:BoundField DataField="CourseYear" HeaderText="CourseYear" SortExpression="CourseYear" />
            <asp:BoundField DataField="RaDate" HeaderText="RaDate" SortExpression="RaDate" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />

    </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CityTutorsDBConnectionString %>" DeleteCommand="DELETE FROM [Tbl_RStudent] WHERE [EmailId] = @EmailId" InsertCommand="INSERT INTO [Tbl_RStudent] ([Name], [FName], [City], [Adddress], [MobNo], [EmailId], [Courses], [CourseYear], [RaDate], [Gender], [DOB]) VALUES (@Name, @FName, @City, @Adddress, @MobNo, @EmailId, @Courses, @CourseYear, @RaDate, @Gender, @DOB)" SelectCommand="SELECT * FROM [Tbl_RStudent]" UpdateCommand="UPDATE [Tbl_RStudent] SET [Name] = @Name, [FName] = @FName, [City] = @City, [Adddress] = @Adddress, [MobNo] = @MobNo, [Courses] = @Courses, [CourseYear] = @CourseYear, [RaDate] = @RaDate, [Gender] = @Gender, [DOB] = @DOB WHERE [EmailId] = @EmailId">
         <DeleteParameters>
             <asp:Parameter Name="EmailId" Type="String" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="Name" Type="String" />
             <asp:Parameter Name="FName" Type="String" />
             <asp:Parameter Name="City" Type="Int32" />
             <asp:Parameter Name="Adddress" Type="String" />
             <asp:Parameter Name="MobNo" Type="String" />
             <asp:Parameter Name="EmailId" Type="String" />
             <asp:Parameter Name="Courses" Type="Int32" />
             <asp:Parameter Name="CourseYear" Type="Int32" />
             <asp:Parameter Name="RaDate" Type="DateTime" />
             <asp:Parameter Name="Gender" Type="String" />
             <asp:Parameter DbType="Date" Name="DOB" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="Name" Type="String" />
             <asp:Parameter Name="FName" Type="String" />
             <asp:Parameter Name="City" Type="Int32" />
             <asp:Parameter Name="Adddress" Type="String" />
             <asp:Parameter Name="MobNo" Type="String" />
             <asp:Parameter Name="Courses" Type="Int32" />
             <asp:Parameter Name="CourseYear" Type="Int32" />
             <asp:Parameter Name="RaDate" Type="DateTime" />
             <asp:Parameter Name="Gender" Type="String" />
             <asp:Parameter DbType="Date" Name="DOB" />
             <asp:Parameter Name="EmailId" Type="String" />
         </UpdateParameters>
     </asp:SqlDataSource>
</asp:Content>

