<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Awesome Mortgage Calculator</title>
<link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="webapp">
    
    <h1>Awesome Mortgage Calculator</h1>
        <br />
        

        <table border="0">
        <tr>
        <td>*Loan Amount: ($)</td>
        <td><asp:TextBox ID="tbLoanAmt" runat="server" Height="16px" TabIndex="1" ></asp:TextBox> </td>
        <td>
            <asp:RangeValidator ID="amountValidator" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="Please Enter Valid Loan Amount" MaximumValue="99999999" MinimumValue="0" Type="Currency"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
        <td>*Annual Interest: (%)</td>
        <td><asp:TextBox ID="tbAnnualInterest" runat="server" TabIndex="2" ></asp:TextBox></td>
        
        <td><asp:RangeValidator ID="rateValidator" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="Enter Intrest Rate (i.e. 5)" MaximumValue="100" MinimumValue="0" Type="Double"></asp:RangeValidator></td>
        
        </tr>         
        <tr>
        <td>*Loan Term (Yrs):</td>
        <td><asp:TextBox ID="tbLoanTerm" runat="server" TabIndex="3" ></asp:TextBox></td>
        
        <td>
        <asp:RangeValidator ID="termValidator" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="Enter # of Years" MaximumValue="30" MinimumValue="0" Type="Double"></asp:RangeValidator></td>
        </tr>
        <tr>
        
        <td></td><td>
        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" TabIndex="4" Width="74px" />
        <asp:Button ID="btn_clear" runat="server" Text="Clear All" Width="74px" />
        </td></tr>
        </table> 
                
        <br /><br />

        <% If Not IsPostBack Then%>Welcome to the Mortgage Calculator. Please complete fields above to receive monthly payment amount and loan replayment schedule.

        <%Else%>Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        &nbsp;
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" CssClass="cssgridview">
        <alternatingrowstyle cssclass="alt" />
        </asp:GridView>

        <%End If%>
            
        </div>
    </form>
</body>
</html>
