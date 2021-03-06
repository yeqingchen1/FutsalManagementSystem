﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="playerscore.aspx.cs" Inherits="五人制足球.playerscore" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>五人制足球---球员得分</title>
    <link href="css/MainPage.css" rel="stylesheet" />
    <link href="css/zzsc.css" rel="stylesheet" />
    <link href="css/TopScorer.css" rel="stylesheet" />
    <link href="css/Login.css" rel="stylesheet" />
    <style type="text/css">
        body
        {
            height: 100%;
            font: 14px/20px sans-serif;
            color: #51555C;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <%-- 导航栏的标题--%>
        <div class="title">
            <div style="border: 1px solid #aaa; border-radius: 5px; text-align: center; line-height: 80px; font-size: 24px;">五人制足球积分管理系统</div>
            <div style="margin-bottom: 0; text-align: right; color: red"><a href="Login.aspx" style="text-decoration: none; color: red">管理员退出</a></div>
        </div>
        <%-- 内容 --%>
        <div class="content">
            <div class="leftcontent" style="border: 1px solid #aaa; border-radius: 5px; text-align: center; font-size: 24px; height: 420px; margin-top: 10px;">
                <asp:TreeView ID="TreeView1" runat="server" ImageSet="Arrows" NodeIndent="10" NoExpandImageUrl="url">
                    <HoverNodeStyle Font-Underline="false" />
                    <NodeStyle Font-Names="Arial" Font-Size="12pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                    <ParentNodeStyle Font-Bold="false" />
                    <SelectedNodeStyle Font-Underline="true" HorizontalPadding="0px" VerticalPadding="0px" />
                </asp:TreeView>
            </div>
            <div class="rightcontent" style="border: 1px solid #aaa; border-radius: 5px; height: 420px; margin-top: 10px;">
                <div class="pagetitle" style="width: 580px; margin-left: 20px; height: 40px; border-bottom: 1px solid #036; font-family: 楷体; line-height: 40px;">
                    <i>添加球员得分</i>
                </div>
                <div class="login" style="margin-top: 20px;">
                    <%-- 轮次 --%>
                    <asp:Label ID="Label1" runat="server" Text="轮次" CssClass="td1"></asp:Label>
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="td2" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                    <span style="color: red; margin-left: 0;" class="td3"></span>
                    <br />
                    <%-- 球队名--%>
                    <div style="margin-top: 10px;">
                        <asp:Label ID="Label2" runat="server" Text="球队" CssClass="td4"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="td2" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                        <span style="color: red; margin-left: 0;" class="td3"></span>
                    </div>
                    <%-- 球员名--%>
                    <div style="margin-top: 10px;">
                        <asp:Label ID="Label3" runat="server" Text="球员" CssClass="td4"></asp:Label>
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="td2"></asp:DropDownList>
                        <span style="color: red; margin-left: 0;" class="td3"></span>
                    </div>
                    <%-- 得分--%>
                    <div style="margin-top: 10px;">
                        <asp:Label ID="Label5" runat="server" Text="得分" CssClass="td4"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="td2"></asp:TextBox>
                        <span style="color: red; margin-left: 0;" class="td3"></span>
                    </div>
                    <table style="margin-top: 5px; width: 630px; text-align: center">
                        <tr>
                            <td colspan="3" class="td1" style="text-align: center; margin-top: 10px;">
                                <asp:Button ID="Button1" runat="server" Text="添加员得分" CommandName="yes" BorderWidth="5" OnClick="Button1_Click" OnClientClick="return confirm('是否确定添加球员得分');" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div style="height: 15px; overflow: hidden; clear: both;"></div>
        <div class="footer">三峡大学信息管理与信息系统专业</div>
    </form>
</body>
</html>
