<%@ Page Title="" Language="C#" MasterPageFile="~/General.master" AutoEventWireup="true" CodeFile="MamberPage.aspx.cs" Inherits="MamberPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
       .cssred {
            border-top:4px solid #d0d1d7;
            min-height:200px;
        }
        .cssgreen {
            border-top:4px solid green;
            min-height:400px;
        }
        .box {
            background-color:#efeff2;
            min-height:400px;
            margin-top:20px;
        }
        .spHead 
        {
            color:orange;font-size:22px;margin-left:10px;
        }
        .spd 
        {
            color:orange;font-size:20px;margin-left:10px;
        }
        .box:hover 
        {
            border:1px solid #d0d1d7;
            box-shadow:2px 2px 25px inset;
        }
      
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div class="container-fluid">
         <div class="row">
               <div class="col-sm-12">
               <h1 style="font-size: 50px;color: #57585a;text-align:center;   "> Meet Our Amazing Team</h1>
                <h3 style="text-align:center;"><p class="italic"> We love building and <span style="color: #1fc055">rebuilding Bands</span></p>
                <p class="italic"> Using <span style="color: #1fc055"> Colors , Fonts </span> and illustration , We brand the company in a way you will never forget</p></h3>
				<center><a href="Index.aspx" style="font-size:25px;">Go To Home Page</a></center>
           </div>
               </div>
        <div class="row">
            
        <div class="col-sm-12">
            <div class="col-sm-3 ">
            </div>
            <div class="col-sm-3 cssgreen">
                 <div class="col-sm-12 box">
                    <div class="col-sm-12" style="height:20px;"></div>
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8" style="height:150px;">
                        <img src="Pic%20Team%20Member/Akash.jpg" class="img-responsive" height="100%" width="100%" style="border:2px double black;"/>
                </div>
                     
                        <div class="col-sm-2"></div>
                    <div class="col-sm-12"><br /><br /><br />
                    <center><span class="fa fa-facebook-square" style="color:orange;font-size:28px;"></span>
                      <span class="fa fa-twitter-square" style="color:orange;font-size:28px;margin-left:10px;"></span>
                        <span class="fa fa-google-plus-square" style="color:orange;font-size:28px;margin-left:10px;"></span><br />
                        <span class="spHead">Akash Chaturvedi</span><br />
                        <span class="spHead">Team Leader</span><br />
                        <span class="spd">Programmer & Database</span>
                        <span class="spd" style="margin-left:-5px;">EmailID:<br />
                            chaturvediakash5@gmail.com</span>
                    </center>
                        </div>
                </div>
            </div>
            <div class="col-sm-3 cssred">
                 <div class="col-sm-12 box">
                    <div class="col-sm-12" style="height:20px;"></div>
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8" style="height:150px;">
                        
                        <img src="Pic%20Team%20Member/DivakerImage.jpg" class="img-responsive" height="100%" width="100%" style="border:2px double black;"/>
                </div>
                        <div class="col-sm-2"></div>
                    <div class="col-sm-12"><br /><br /><br />
                    <center><span class="fa fa-facebook-square" style="color:orange;font-size:28px;"></span>
                      <span class="fa fa-twitter-square" style="color:orange;font-size:28px;margin-left:10px;"></span>
                        <span class="fa fa-google-plus-square" style="color:orange;font-size:28px;margin-left:10px;"></span>
                       <br/> <span class="spHead">Divaker Pal</span><br />
                        <span class="spd">Programmer & DataBase</span><br />
                        <span class="spd" style="margin-left:-5px;font-size:18px;">EmailID:<br />divakalpal@reddifmail.com</span>
                    </center>
                        </div>
                </div>
            </div>
            <div class="col-sm-3">
            </div>
        </div>
            <div class="col-sm-12" style="min-height:20px;"></div>
        </div> <%-- //closing of row--%>
        <div class="row">
        <div class="col-sm-12">
            <div class="col-sm-3 cssred">
                <div class="col-sm-12 box">
                    <div class="col-sm-12" style="height:20px;"></div>
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8" style="height:150px;">
                       
                        <img src="Pic%20Team%20Member/up11.jpg" class="img-responsive" height="100%" width="100%" style="border:2px double black;"/>
                </div>
                        <div class="col-sm-2"></div>
                    <div class="col-sm-12"><br />
                        <br /><br />
                    <center><span class="fa fa-facebook-square" style="color:orange;font-size:28px;"></span>
                      <span class="fa fa-twitter-square" style="color:orange;font-size:28px;margin-left:10px;"></span>
                        <span class="fa fa-google-plus-square" style="color:orange;font-size:28px;margin-left:10px;"></span><br />
                       <br/> <span class="spHead">Uday Prakash</span><br />
                        <span class="spd">Designer</span><br />
                        <span class="spd" style="margin-left:-5px;font-size:18px;">EmailID:<br />udayprakash2071996@gmail.com</span>
                    </center>
                        </div>
                </div>
            </div>
            <div class="col-sm-3 cssgreen">
                 <div class="col-sm-12 box">
                    <div class="col-sm-12" style="height:20px;"></div>
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8" style="height:150px;">
                        <img src="Pic%20Team%20Member/Surbhi2.jpg" class="img-responsive" height="100%" width="70%" style="border:2px double black;"/>
                </div>
                        <div class="col-sm-2"></div>
                    <div class="col-sm-12"><br /><br />
                    <center><span class="fa fa-facebook-square" style="color:orange;font-size:28px;"></span>
                      <span class="fa fa-twitter-square" style="color:orange;font-size:28px;margin-left:10px;"></span>
                        <span class="fa fa-google-plus-square" style="color:orange;font-size:28px;margin-left:10px;"></span><br />
                       <br/> <span class="spHead">Surbhi Gautam</span><br />
                        <span class="spd">Designer  & Data Base</span><br />
                        <span class="spd" style="margin-left:-5px;font-size:18px;">EmailID:<br />surbhigautam326@gmail.com</span>
                    </center>
                        </div>
                </div>
            </div>
            <div class="col-sm-3 cssred">
                 <div class="col-sm-12 box">
                    <div class="col-sm-12" style="height:20px;"></div>
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8" style="height:150px;">
                        <img src="Pic%20Team%20Member/Priyanka2.jpeg" class="img-responsive" height="80%"  width="100%" style="border:2px double black;"/>
                </div>
                        <div class="col-sm-2"></div>
                    <div class="col-sm-12"><br /><br />
                    <center><span class="fa fa-facebook-square" style="color:orange;font-size:28px;"></span>
                      <span class="fa fa-twitter-square" style="color:orange;font-size:28px;margin-left:10px;"></span>
                        <span class="fa fa-google-plus-square" style="color:orange;font-size:28px;margin-left:10px;"></span><br />
                       <br/> <span class="spHead">Priyanka</span><br />
                        <span class="spd"> Designer</span><br />
                        <span class="spd" style="margin-left:-5px;font-size:18px;">EmailID:<br />kumaripriyanka04101998@gmail.com</span>
                    </center>
                        </div>
                </div>
            </div>
           
        </div>
            <div class="col-sm-12" style="min-height:20px;"></div>
        </div> <%-- //closing of row--%>
         <div class="row">
            
        <div class="col-sm-12">
        
           

        </div>
            <div class="col-sm-12" style="min-height:20px;"></div>
        </div> <%-- //closing of row--%>
    </div>
    
</asp:Content>

