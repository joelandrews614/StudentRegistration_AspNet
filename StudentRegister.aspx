<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegister.aspx.cs" Inherits="StudentRegistration.StudentRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .TitleContainer {
            
            display:flex;
            justify-content:center;

            font-size:x-large;
            
            margin-top:30px;
            margin-bottom:40px;
        }
        

        .FormTable {
            display:flex;
            justify-content:center;
            align-items:center;
        }
        
        .FormTable table {
            padding: 20px;   
        }

        .LabelResults {
            
            
            display:flex;
            justify-content:center;
            align-items:center;
        
            margin-top: 30px;
            
            padding:1px;
        }
        
        
        .auto-style1 {
            height: 31px;
        }
        .auto-style2 {
            height: 28px;
        }

        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="TitleContainer">
            ONLINE ENTRANCE EXAMINATION REGISTRATION FORM
        </div>

        <div class= "FormTable">

            <table class="auto-style1" border="1">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Candidate's Name" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtCandidateName" runat="server" CausesValidation="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Father's Name: " Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFather" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Date of Birth: " Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlDay" runat="server">
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlMonth" runat="server">
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlYear" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Gender: " Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="rbMale" runat="server" Text="Male" GroupName="Gender" />
                        <asp:RadioButton ID="rbFemale" runat="server" Text="Female" GroupName="Gender"/>
                        <asp:RadioButton ID="rbOthers" runat="server" Text="Others" GroupName="Gender"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="UG Degree: " Font-Size="X-Large"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="ddlUGDegree" runat="server">
                            <asp:ListItem>BCA</asp:ListItem>
                            <asp:ListItem>BCOM</asp:ListItem>
                            <asp:ListItem>BSC.COMPUTER SCIENCE</asp:ListItem>
                            <asp:ListItem>BSC. IT</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Percentage: " Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPercentage" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Year of Completion: " Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlYearofCompletion" runat="server">
                            <asp:ListItem>2019</asp:ListItem>
                            <asp:ListItem>2020</asp:ListItem>
                            <asp:ListItem>2021</asp:ListItem>
                            <asp:ListItem>2022</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Text="Exam City Preferred: " Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlExamCity" runat="server">
                            <asp:ListItem>Trichy</asp:ListItem>
                            <asp:ListItem>Chennai</asp:ListItem>
                            <asp:ListItem>Madurai</asp:ListItem>
                            <asp:ListItem>Tanjore</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label9" runat="server" Text="Email Address: " Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label10" runat="server" Text="Phone Number: " Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label11" runat="server" Text="Address: " Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear All Data" OnClick="btnClear_Click" />
                    </td>
                </tr>
                </table>

        </div>

        <div class="LabelResults">

            <table class="auto-style3" border="1">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblResult1" runat="server" Text="Candidate's Name: " Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblCandidate" runat="server" Text="" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblResult2" runat="server" Text="Father's Name: " Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblFather" runat="server" Text="" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblResult3" runat="server" Text="Date of Birth: " Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblDay" runat="server" Text="lblDateOfBirth" Visible="False"></asp:Label>
                        <asp:Label ID="lblMonth" runat="server" Text="Label" Visible="False"></asp:Label>
                        <asp:Label ID="lblYear" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblResult4" runat="server" Text="Gender: " Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblGender" runat="server" Text="lblGender" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblResult5" runat="server" Text="UG Degree: " Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblUGDegree" runat="server" Text="lblUGDegree" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblResult6" runat="server" Text="Percentage: " Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblPercentage" runat="server" Text="lblPercentage" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblResult7" runat="server" Text="Year of Completion: " Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblYearOf" runat="server" Text="lblYearOf" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblResult8" runat="server" Text="Exam City Preferred: " Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblExamCity" runat="server" Text="lblExamCity" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblResult9" runat="server" Text="Email Address: " Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="lblEmail" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblResult10" runat="server" Text="Phone Number: " Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblPhone" runat="server" Text="lblPhone" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblResult11" runat="server" Text="Address: " Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblAddress" runat="server" Text="lblAddress" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
