<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="NA14.aspx.vb" Inherits="MetalHealth.Na_14" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

  <style type="text/css">
    .lable-font{
        font-size:13px;
        padding-right: 57px;
        
    }
    .lable-font-ins{
        font-size:13px
    }
.link-a {
      margin-left: 1100px;
      margin-top: 15px;
      }
.link-a a:link {
  color: #99c5f2;
  background-color: transparent;
  text-decoration: none;
  font-size: 13px;
}
.link-a a:visited {
      color: #99c5f2;
  background-color: transparent;
  text-decoration: none;
}
.link-a a:hover {
  color: red;
  background-color: transparent;
  text-decoration: underline;
}
.link-a a:active {
  color: #99c5f2;
  background-color: transparent;
  text-decoration: underline;
}
.foo {
  float: left;
  width: 13px;
  height: 8px;
  margin: 5px;
  border: 1px solid rgba(0, 0, 0, .2);
}

.blue {
  background: #99c5f2;
}
.btn-page {
     background-color:#cccccc;
          width:56px;
          height:20px;
      }
</style>


    <title></title>
</head>
<body>    
<form id="form1" runat="server" >

        <asp:Label ID="Label4" runat="server" Text="会員番号："></asp:Label>
        <asp:Label ID="lblLoginId" runat="server" Text=" "></asp:Label>
        
        <br />
        <asp:Label ID="Label5" runat="server" Text="氏名："></asp:Label>
        <asp:Label ID="lblKaiinNameMei" runat="server" Text=" "></asp:Label>
        
        
    
        <hr style="border-color: #0000FF; height: -15px; width: 850px;" />
          <div style="text-align: center;">
        <h2 style="color:#2f5686;margin-bottom: 0px;">登録患者様一覧</h2>
    </div>

    <div>  
        <asp:Button ID="Button3" runat="server" style="margin-left: 1118px;margin-bottom: 30px; margin-top: 0px;width: 80px;height: 21px;" Text="ログアウト" />
    </div>

    <div style="margin: 0 auto; width: 320px; text-align: center;">
        <asp:Button ID="Button1"  style="float:left; margin-left: 30px; background-color:#ccc;" runat="server" Text="新規登録" />
        <asp:Button ID="Button2" style="float:right; margin-left: 0px; background-color:#ccc;" runat="server" Text="患者様情報変更" />
    </div>
    <br/>
 <div style="width:100%">
    <div style="margin: 0 auto;width: 50%;margin-bottom: 0px;">
        <div>
        <div style="padding-left:279px;padding-top: -40px;" >
        <p style="margin-bottom: 0px;">
            <asp:Label CssClass="lable-font" ID="Label6" runat="server" Text="登録患者様一覧"></asp:Label>
            <ins style="font-size:13px;color:#0070c0;">前のページ</ins>             
            <asp:Label CssClass="lable-font-ins" ID="Label2" runat="server" Text="1" style="color:red;"></asp:Label>
            /
            <asp:Label CssClass="lable-font-ins" ID="Label3" runat="server" Text="20"></asp:Label>
            <ins style="font-size:13px;color:#0070c0;">次のページ</ins>
             <asp:Button CssClass="btn-page" ID="Button4" runat="server" Text="ページ"/>
             <asp:TextBox ID="txtPass" runat="server" MaxLength="8" Width="15px"></asp:TextBox>
        </p>       
        </div>
        </div>     
    </div>
</div>


<div style="width:100%">
    <div style="margin: 0 auto;width:428px;">
   <div style="width:97%; height:200px; overflow:auto; margin:0 auto;">
    <asp:ListView ID="ListView1" runat="server">
       <LayoutTemplate>
          <table cellspacing="0" cellpadding="3" rules="all">
              <thead>
             <tr style="background-color: #4f81bd; color: White;">
                 <th></th>
                 <th>カルテ№</th>
                <th>氏名</th>
                <th>登録年月日</th>
                 <th>診断年月日</th>
             </tr>
                   </thead>
             <tbody style=" overflow: auto;">
                <asp:PlaceHolder ID="itemPlaceHolder" runat="server"/>
             </tbody>
          </table>
       </LayoutTemplate>
       <ItemTemplate>
          <tr style="background-color: #d0d8e8;">
              <td><input type="radio" name="name1" />&nbsp;</td>
            <%--  <td><%# Eval("HikenshaID")%></td>--%>
<%--              <td><%# Eval("NameMei")%></td>
              <td><%# Eval("InsYmd")%></td>
              <td><%# Eval("UpdIYmd")%></td>--%>
          </tr>
       </ItemTemplate>

       <AlternatingItemTemplate>
          <tr>
              <td><input type="radio" name="name1" />&nbsp;</td>
          <%--    <td><%# Eval("HikenshaID")%></td>--%>
<%--              <td><%# Eval("NameMei")%></td>
              <td><%# Eval("InsYmd")%></td>
              <td><%# Eval("UpdIYmd")%></td>--%>
          </tr>
       </AlternatingItemTemplate>
    </asp:ListView>
            </div>
    </div>
    <div  class="link-a">
        <a href="#" target="_blank"><i class="foo blue"></i>トップページ</a>
     </div>
</div>
    </form>
</body>
</html>
