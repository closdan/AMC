<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AMC.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <script type="text/javascript">
    
      function pageLoad() {
      }
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       
        登录名：<asp:TextBox ID="userid" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userid" ErrorMessage="此项不能为空"></asp:RequiredFieldValidator>
        <asp:Button ID="check" runat="server" Text="登录名是否可用" />
        </br>
        <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
                登录密码：
       
     
        <asp:TextBox ID="password" runat="server"></asp:TextBox>
        
        </br>
       
    确认密码：<asp:TextBox ID="password1" runat="server"></asp:TextBox></br>
    真实姓名：<asp:TextBox ID="name" runat="server"></asp:TextBox></br>
    部门：<asp:DropDownList ID="region" runat="server"></asp:DropDownList><br />
&nbsp;性别：<asp:RadioButtonList ID="sex" runat="server">
<asp:ListItem Value="男" Selected=True>男</asp:ListItem>
<asp:ListItem Value="女" Selected=True>女</asp:ListItem>
        </asp:RadioButtonList>
&nbsp;<br />
        生日：<br />
   电话：<asp:TextBox ID="phone" runat="server"></asp:TextBox></br>
   电邮：<asp:TextBox ID="email" runat="server"></asp:TextBox></br>
   地址：<asp:TextBox ID="address" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="register" runat="server" Text="注册" />
        </br>
    </div>
    </form>
</body>
</html>
