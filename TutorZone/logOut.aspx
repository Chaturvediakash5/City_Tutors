<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logOut.aspx.cs" Inherits="TutorZone_logOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../JS/jquery.js"></script>
     <script>
      function LogOut(){
             window.history.forward();
             window.setTimeout("window.location.href='../Login.aspx'", 0);
         
         }
         
    </script>
</head>
<body onload="LogOut()">
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
