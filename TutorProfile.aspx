<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminMasterPage.master" AutoEventWireup="true" CodeFile="TutorProfile.aspx.cs" Inherits="TutorProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div  class="col-sm-12 text-center" style="height:80px;background-image:url('../images/header1.jpg');background-size:100% 100%;">
        <span style="font-size:38px;color:orange;">Tutor</span><span style="font-size:46px;color:white;">Profile</span>
    </div>
    <asp:GridView ID="GvTutor" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="EmailId" DataSourceID="SqlDataSource1" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="TuName" HeaderText="TuName" SortExpression="TuName" />
            <asp:CheckBoxField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="HQId" HeaderText="HQId" SortExpression="HQId" />
            <asp:BoundField DataField="PassoutYear" HeaderText="PassoutYear" SortExpression="PassoutYear" />
            <asp:BoundField DataField="CityId" HeaderText="CityId" SortExpression="CityId" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="ExpertiseSub" HeaderText="ExpertiseSub" SortExpression="ExpertiseSub" />
            <asp:BoundField DataField="MobNo" HeaderText="MobNo" SortExpression="MobNo" />
            <asp:BoundField DataField="EmailId" HeaderText="EmailId" ReadOnly="True" SortExpression="EmailId" />
            <asp:BoundField DataField="DTReg" HeaderText="DTReg" SortExpression="DTReg" />
            <asp:BoundField DataField="Minfee" HeaderText="Minfee" SortExpression="Minfee" />
            <asp:BoundField DataField="maxfee" HeaderText="maxfee" SortExpression="maxfee" />
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
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CityTutorsDBConnectionString %>" DeleteCommand="DELETE FROM [Tbl_Tutors] WHERE [EmailId] = @EmailId" InsertCommand="INSERT INTO [Tbl_Tutors] ([TuName], [Gender], [HQId], [PassoutYear], [CityId], [Address], [ExpertiseSub], [MobNo], [EmailId], [DTReg], [Minfee], [maxfee]) VALUES (@TuName, @Gender, @HQId, @PassoutYear, @CityId, @Address, @ExpertiseSub, @MobNo, @EmailId, @DTReg, @Minfee, @maxfee)" SelectCommand="SELECT * FROM [Tbl_Tutors]" UpdateCommand="UPDATE [Tbl_Tutors] SET [TuName] = @TuName, [Gender] = @Gender, [HQId] = @HQId, [PassoutYear] = @PassoutYear, [CityId] = @CityId, [Address] = @Address, [ExpertiseSub] = @ExpertiseSub, [MobNo] = @MobNo, [DTReg] = @DTReg, [Minfee] = @Minfee, [maxfee] = @maxfee WHERE [EmailId] = @EmailId">
         <DeleteParameters>
             <asp:Parameter Name="EmailId" Type="String" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="TuName" Type="String" />
             <asp:Parameter Name="Gender" Type="Boolean" />
             <asp:Parameter Name="HQId" Type="Int32" />
             <asp:Parameter Name="PassoutYear" Type="Int32" />
             <asp:Parameter Name="CityId" Type="Int32" />
             <asp:Parameter Name="Address" Type="String" />
             <asp:Parameter Name="ExpertiseSub" Type="Int32" />
             <asp:Parameter Name="MobNo" Type="String" />
             <asp:Parameter Name="EmailId" Type="String" />
             <asp:Parameter Name="DTReg" Type="DateTime" />
             <asp:Parameter Name="Minfee" Type="Double" />
             <asp:Parameter Name="maxfee" Type="Double" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="TuName" Type="String" />
             <asp:Parameter Name="Gender" Type="Boolean" />
             <asp:Parameter Name="HQId" Type="Int32" />
             <asp:Parameter Name="PassoutYear" Type="Int32" />
             <asp:Parameter Name="CityId" Type="Int32" />
             <asp:Parameter Name="Address" Type="String" />
             <asp:Parameter Name="ExpertiseSub" Type="Int32" />
             <asp:Parameter Name="MobNo" Type="String" />
             <asp:Parameter Name="DTReg" Type="DateTime" />
             <asp:Parameter Name="Minfee" Type="Double" />
             <asp:Parameter Name="maxfee" Type="Double" />
             <asp:Parameter Name="EmailId" Type="String" />
         </UpdateParameters>
     </asp:SqlDataSource>
</asp:Content>

