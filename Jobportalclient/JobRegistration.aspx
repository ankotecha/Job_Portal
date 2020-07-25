<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JobRegistration.aspx.cs" Inherits="Jobportalclient.JobRegistration" %>

<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title></title>  
</head>  
<body>  
    <form id="form1" runat="server">  
    <div>  
      <table width="84%" cellpadding="0" cellspacing="0" style="border: solid 1px #3366CC;">  
            <tr>  
                <td colspan="4" style="height: 30px; background-color: violet;">  
                    <span class="TextTitle" style="color: #FFFFFF;">Company Registration Form</span>  
                </td>  
            </tr>  
            <tr>  
                <td height="20px" colspan="0">  
                </td>  
            </tr>  
            <tr>  
                <td width="50%" valign="top">  
                    <table id="TableLogin" class="HomePageControlBGLightGray" cellpadding="4" cellspacing="4"  
                        runat="server" width="100%">  
                        <tr>  
                            <td colspan="3" align="center">  
                                <asp:Label ID="LabelMessage" ForeColor="Red" runat="server" EnableViewState="False"  
                                    Visible="False"></asp:Label><br>  
                            </td>  
                        </tr>  
                        <tr style="font-weight: normal; color: #000000">  
                            <td align="right">  
                                Company<span>Name:</span>;  
                            </td>  
                            <td align="left" style="padding-left: 10px;">  
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Width="262px"  
                                    MaxLength="50" Height="34px"></asp:TextBox>  
                            </td>  
                        </tr>  
                        <tr>  
                            <td align="right">  
                                Post<span class="TextTitle">:</span>  
                            </td>  
                            <td align="left" style="padding-left: 10px;">  
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" Width="261px"  
                                    MaxLength="50" Height="34px"></asp:TextBox>  
                                <br />  
                            </td>  
                        </tr>  
                        <tr>  
                            <td align="right">  
                                <span class="TextTitle">JobId:</span>  
                            </td>  
                            <td align="left" style="padding-left: 10px;">  
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" Width="258px"  
                                    MaxLength="50" Height="34px"></asp:TextBox>  
                                <br />  
                            </td>  
                        </tr>  
                        <tr>  
                            <td align="right">  
                                Qualification  
                            </td>  
                            <td align="left" style="padding-left: 10px;">  
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox" Width="258px"  
                                    MaxLength="50" Height="34px"></asp:TextBox>  
                                <br />  
                            </td>  
                        </tr>  
                         <tr>  
                            <td align="right">  
                                Salary </td>  
                            <td align="left" style="padding-left: 10px;">  
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox" Width="258px"  
                                    MaxLength="50" Height="34px"></asp:TextBox>  
                                <br />  
                            </td>  
                        </tr>  
                         <tr>  
                            <td align="right">  
                                Description  
                            </td>  
                            <td align="left" style="padding-left: 10px;">  
                                <asp:TextBox ID="TextBox6" runat="server" CssClass="textbox" Width="258px"  
                                    MaxLength="50" Height="34px" TextMode="MultiLine"></asp:TextBox>  
                                <br />  
                            </td>  
                        </tr>  
                         <tr>  
                            <td align="right">  
                                Vacancy</td>  
                            <td align="left" style="padding-left: 10px;">  
                                <asp:TextBox ID="TextBox7" runat="server" CssClass="textbox" Width="258px"  
                                    MaxLength="50" Height="34px" TextMode="Number"></asp:TextBox>  
                                <br />  
                            </td>  
                        </tr>  
                        <tr>  
                            <td align="right">  
                            </td>  
                            <td align="left" style="padding-left: 10px;">  
                                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Width="87px" />  
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                <br />  
                            </td>  
                        </tr>  
                    </table>  
                </td>  
            </tr>  
        </table>  
    </div>  
    </form>  
</body>  
</html>
