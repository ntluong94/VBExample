<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Form1.aspx.vb" Inherits="ExampleVB.Form1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <style>
/*table ,tr td{
   
}
tbody {
 display:block;
  width: 100%;
  overflow: auto;
  height: 100px;
}
thead, tbody tr {
    display:table;
    width: 99.9%;
    table-layout:fixed;
}
thead {
    width: 97.4%;
}
table {
   width: 100%;
}*/
.fixed_header{
    width: 400px;
    table-layout: fixed;
    border-collapse: collapse;
}

.fixed_header tbody{
  display:block;
  width: 100%;
  overflow: auto;
  height: 100px;
}

.fixed_header thead tr {
   display: block;
}

.fixed_header thead {
  background: black;
  color:#fff;
}

.fixed_header th, .fixed_header td {
  padding: 5px;
  text-align: left;
  width: 200px;
}




    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

<div style="width:100%">
<div style="margin: 0 auto;width:50%;">
<asp:ListView ID="ListView1" runat="server" style="margin-left: 190px">
   <LayoutTemplate>
      <table class="fixed_header"cellspacing="0" cellpadding="3" rules="all">
          <thead>
         <tr style="background-color: #336699; color: White;">
             <th>--</th>
             <th>MÃ SV</th>
            <th>HỌ TÊN</th>
            <th>MÃ LỚP</th>
             <th>PHÁI</th>
         </tr>
               </thead>
         <tbody>
            <asp:PlaceHolder ID="itemPlaceHolder" runat="server"/>
         </tbody>
      </table>
   </LayoutTemplate>
   <ItemTemplate>
      <tr>
          <td><input type="radio" name="name1" />&nbsp;</td>
         <td><%# Eval("MASV")%></td>
         <td><%# Eval("HOTEN")%></td>
         <td><%# Eval("MALOP")%></td>
         <td><%# Eval("PHAI")%></td>
      </tr>
   </ItemTemplate>

   <AlternatingItemTemplate>
      <tr style="background-color: #dadada;">
          <td><input type="radio" name="name1" />&nbsp;</td>
         <td><%# Eval("MASV")%></td>
         <td><%# Eval("HOTEN")%></td>
         <td><%# Eval("MALOP")%></td>
         <td><%# Eval("PHAI")%></td>
      </tr>
   </AlternatingItemTemplate>


</asp:ListView>

</div>
</div>
                  
    </form>
<script>

</script> 
</body>
</html>
