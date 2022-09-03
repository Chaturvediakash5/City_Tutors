<%@ Page Title="" Language="C#" MasterPageFile="~/TutorZone/TutorMasterPage.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="TutorZone_MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <style>
        .outer {
            min-height:500px;
            background-color:red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12" style="min-height: 80px; background-image: url('../images/header1.jpg'); background-size: cover; background-repeat: no-repeat; padding-left: 10.5%; padding-top: 1.5%">
                <span style="color: #fba822; font-size: 30px;">MY </span><span style="color: white; font-size: 30px;">PROFILE</span>
            </div>
        </div>
        <div class="col-sm-12">
            <div class="col-sm-12" style="min-height: 30px;"></div>
            <div class="col-sm-4">
                <asp:Image ID="ImgUserPic" runat="server" Height="100px" Width="100px" />
            </div>
            <div class="col-sm-6">
                <div class="col-sm-12">
                    <div class="col-sm-5" style="padding: 0px;">
                        <asp:FileUpload ID="FuPic" runat="server" class="form-control" />
                    </div>
                    <div class="col-sm-4">
                        <asp:Button ID="BtnUpload" runat="server" Text="Upload" Style="background: orange; color: white; font-weight: bold" OnClick="BtnUpload_Click"/>
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>
        </div><br /><br />
        <div class="row" style="margin-top:5px;">
            <div class="col-sm-12" style="background-color: #f6f6f6; min-height: 530px;">
                <div class="row">
                    <div class="col-sm-6" style="min-height: 500px;">
                        <div class="col-sm-12" style="min-height: 30px;"></div>
                        <div class="col-sm-12">
                            <div class="col-sm-6">
                                <label>Name</label>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="TxtName" runat="server" placeholder="Name" Style="border: none" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                         <div class="col-sm-12" style="min-height: 30px;"></div>
                        <div class="col-sm-12">
                            <div class="col-sm-6">
                                <label>Gender</label>
                            </div>
                            <div class="col-sm-6">
                            <asp:TextBox ID="txtGen" runat="server" Style="border: none"></asp:TextBox>
                                    <asp:RadioButton ID="RdbMale" runat="server" Text="Male" GroupName="gender" Checked="True" />
                                    <asp:RadioButton ID="RdbFemale" runat="server" Text="Female" GroupName="gender" />
                                
                            </div>
                        </div>
                         <div class="col-sm-12" style="min-height: 30px;"></div>
                        <div class="col-sm-12">
                            <div class="col-sm-6">
                                <label>Highest Qualification</label>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="TxtHQ" runat="server" Style="border: none"></asp:TextBox>
                                <asp:DropDownList ID="DDLHiQu" runat="server" Style="border: none" class="form-control"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-sm-12" style="min-height: 30px;"></div>
                      
                            <div class="col-sm-12" style="min-height: 30px;"></div>
                            <div class="col-sm-12">
                            <div class="col-sm-6">
                                <label>Mobile No</label>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="TxtMobileNo" runat="server" Style="border: none" TextMode="Number" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                            <div class="col-sm-12" style="min-height: 30px;"></div>
                            <div class="col-sm-12">
                            <div class="col-sm-6">
                                <label>Expertise Subjects</label>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtExSub" runat="server" Style="border: none"></asp:TextBox>
                                <asp:DropDownList ID="DDLExperSubject" runat="server" Style="border: none" class="form-control"></asp:DropDownList>
                            </div>
                        </div>
                            <div class="col-sm-12" style="min-height: 30px;"></div>
                            <div class="col-sm-12" style="min-height: 50px;"></div>
                    <div class="col-sm-12">
                        <div class="col-sm-6"></div>
                        
                        <div class="col-sm-6">
                            <asp:Button ID="BtnUpdate" class="btn btn-default" runat="server" CssClass="form-control " Text="Update" Style="background: orange; color: white; font-weight: bold" OnClick="BtnUpdate_Click" />
                        </div>
                    </div>
                    </div>
                    <div class="col-sm-6" style="min-height: 500px;">
                        <div class="col-sm-12" style="min-height: 30px;"></div>
                            <div class="col-sm-12">
                            <div class="col-sm-6">
                                <label>Pass Year</label>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtpasout" runat="server" Style="border: none"></asp:TextBox>
                                <asp:DropDownList ID="DDLPassYear" runat="server" Style="border: none" class="form-control"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-sm-12" style="min-height: 30px;"></div>
                            <div class="col-sm-12">
                            <div class="col-sm-6">
                                <label>City</label>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtCity" runat="server" Style="border: none"></asp:TextBox>
                                <asp:DropDownList ID="DDLCity" runat="server" Style="border: none" class="form-control"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-sm-12" style="min-height: 30px;"></div>
                            <div class="col-sm-12">
                            <div class="col-sm-6">
                                <label>Email Id</label>
                            </div>
                            <div class="col-sm-6">
                                <asp:Label ID="LBLEmailId" runat="server" Style="border: none"></asp:Label>
                            </div>
                        </div>
                         <div class="col-sm-12" style="min-height: 30px;"></div>
                            <div class="col-sm-12">
                            <div class="col-sm-6">
                                <label>Max Salary / Hour Month</label>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="TxtMaxSal" runat="server" placeholder="Enter Max Salary / Hour Month" Style="border: none" TextMode="Number" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-12" style="min-height: 30px;"></div>
                            <div class="col-sm-12">
                            <div class="col-sm-6">
                                <label>Min Salary / Hour Month</label>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="TxtMinSal" runat="server" placeholder="Enter Min Salary / Hour Month" Style="border: none" TextMode="Number" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                         <div class="col-sm-12" style="min-height: 30px;"></div>
                            <div class="col-sm-12">
                            <div class="col-sm-6">
                                <label>Address</label>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="TxtAddres" runat="server" placeholder="Enter Address" Style="border: none" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-12" style="min-height: 30px;"></div>
                      
                            <div class="col-sm-12">
                            <div class="col-sm-6">
                            </div>
                            <div class="col-sm-6">
                            <asp:Button ID="BtnEdit" class="btn btn-default" runat="server" CssClass="form-control " Text="Edit" Style="background: orange; color: white; font-weight: bold;" OnClick="BtnEdit_Click"  />
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  
</asp:Content>

