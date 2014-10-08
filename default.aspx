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
        
        <br /><br />
     
        *Loan Amount: ($) <asp:TextBox ID="tbLoanAmt" runat="server" Height="16px" TabIndex="1" ></asp:TextBox>
                  
        &nbsp;&nbsp;<asp:RangeValidator ID="loanValidator" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="Enter Loan Amount (i.e. 120000)" MaximumValue="100000000" MinimumValue="0" Type="Double"></asp:RangeValidator>
                  
        <br /><br />      
        
        *Annual Interest: (%) <asp:TextBox ID="tbAnnualInterest" runat="server" TabIndex="2" ></asp:TextBox>
        
        &nbsp;<asp:RangeValidator ID="rateValidator" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="Enter Intrest Rate (i.e. 5)" MaximumValue="100" MinimumValue="0" Type="Double"></asp:RangeValidator>
        
        <br /><br />

        *Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" TabIndex="3" ></asp:TextBox>
        
        &nbsp;
        <asp:RangeValidator ID="termValidator" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="Enter # of Years" MaximumValue="30" MinimumValue="1" Type="Integer"></asp:RangeValidator>
        
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" TabIndex="4" />
        
        &nbsp;
        <asp:Button ID="btn_clear" runat="server" Text="Clear All" Width="83px" />
        
        <br /><br />
                
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" />
            
        </div>
    </form>
</body>
</html>
