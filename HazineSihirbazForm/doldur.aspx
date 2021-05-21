<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doldur.aspx.cs" Inherits="HazineSihirbazForm.doldur" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form runat="server">
                <asp:GridView ID="GridView1" runat="server" Height="194px" Width="100%" AutoGenerateColumns="False" BorderColor="Black" Font-Bold="False" Font-Names="Comic Sans MS" BorderWidth="3px">
                    <Columns>
                        <asp:ButtonField ButtonType="Image" CommandName="Select" ImageUrl="~/ikon/editikon.png" Text="EDİT" />
                        <asp:BoundField DataField="New_TransactionId" HeaderText="Transaction ID" />
                        <asp:BoundField DataField="FileName" HeaderText="File Name" />
                        <asp:BoundField DataField="DeletionStateCode" HeaderText="Deletion State Code" />
                        <asp:BoundField DataField="CreatedOn" HeaderText="Created On" />
                        <asp:BoundField DataField="ModifiedOn" HeaderText="Modified On" />
                        <asp:BoundField DataField="CreatedBy" HeaderText="Created By" />
                        <asp:BoundField DataField="ModifiedBy" HeaderText="Modified By" />
                        <asp:BoundField DataField="OwningBusinessUnit" HeaderText="Owning Business Unit" />
                        <asp:BoundField DataField="StatusCode" HeaderText="Status Code" />
                        <asp:BoundField DataField="OwningUser" HeaderText="Owning User" />
                        <asp:BoundField DataField="new_HeaderGuid" HeaderText="Header Guid" />
                        <asp:BoundField DataField="new_StatementDate" HeaderText="Statement Date" />
                        <asp:BoundField DataField="new_Sign" HeaderText="Sign" />
                        <asp:BoundField DataField="new_Customer" HeaderText="Customer" />
                        <asp:BoundField DataField="new_TransactionDate" HeaderText="Transaction Date" />
                        <asp:BoundField DataField="new_BankTransactionType" HeaderText="Bank Transaction Type" />
                        <asp:BoundField DataField="new_Currency" HeaderText="Currency" />
                        <asp:BoundField DataField="new_Amount" HeaderText="Amount" />
                        <asp:BoundField DataField="new_Description" HeaderText="Description" />
                        <asp:BoundField DataField="new_GLCode" HeaderText="GLCode" />
                        <asp:BoundField DataField="new_IsProcessed" HeaderText="Is Processed" />
                        <asp:BoundField DataField="new_TransactionCode" HeaderText="Transaction Code" />
                        <asp:BoundField DataField="new_IsReady" HeaderText="Is Ready" />
                        <asp:BoundField DataField="new_BankTransactionCode" HeaderText="Bank Transaction Code" />
                        <asp:BoundField DataField="new_new_WillBeTransfered" HeaderText="New Will Be Transfered" />
                        <asp:BoundField DataField="new_WillBeTransfered" HeaderText="Will Be Transfered" />
                        <asp:BoundField DataField="new_State" HeaderText="State" />
                        <asp:BoundField DataField="new_LogoNumber" HeaderText="Logo Number" />
                        <asp:BoundField DataField="new_SpecialRate" HeaderText="Special Rate" />
                        <asp:BoundField DataField="new_FirstState" HeaderText="First State" />
                        <asp:BoundField DataField="new_Project" HeaderText="Project" />
                        <asp:BoundField DataField="new_LastIntegrationErrorMessage" HeaderText="Last Integration Error Message" />
                        <asp:BoundField DataField="new_LastIntegrationErrorDate" HeaderText="Last Integration Error Date" />
                        <asp:BoundField DataField="new_TransactionMatchInformation" HeaderText="Transaction Match Information" />
                        <asp:BoundField DataField="new_FicheSpecialCode" HeaderText="Fiche Special Code" />
                        <asp:BoundField DataField="new_ActionSpecialCode" HeaderText="Action Special Code" />
                        <asp:BoundField DataField="new_FirmsId" HeaderText="Firms ID" />
                        <asp:BoundField DataField="new_AnalysisDimension" HeaderText="Analysis Dimension" />
                        <asp:BoundField DataField="new_TransactionIBAN" HeaderText="Transaction IBAN" />
                        <asp:BoundField DataField="new_BaseTransaction" HeaderText="Base Transaction" />
                        <asp:BoundField DataField="new_DocumentNo" HeaderText="Document No" />
                        <asp:BoundField DataField="new_ExpenditureId" HeaderText="Expenditure ID" />
                        <asp:BoundField DataField="new_DivisionId" HeaderText="Division ID" />
                        <asp:BoundField DataField="new_ServiceCard" HeaderText="Service Card" />
                        <asp:BoundField DataField="new_OpposedBankAccountId" HeaderText="Opposed Bank Account ID" />
                        <asp:BoundField DataField="new_CheckId" HeaderText="Check ID" />
                        <asp:BoundField DataField="new_BankAccountsId" HeaderText="Bank Accounts ID" />
                    </Columns>

                    <HeaderStyle BackColor="#3DAABF" ForeColor="White" />

                </asp:GridView>
        </form>
</body>
</html>
