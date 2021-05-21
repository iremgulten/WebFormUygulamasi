<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="HazineSihirbazForm.WebForm" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Hazine Sihirbazı Form</title>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <style>
        .baslik {
            font-family: 'Comic Sans MS';
            font-size: x-large;
            color: #FFFFFF;
            background-color: #6bb8c7;
            text-align: center;
            border-radius: 40px;
            padding-top: 35px;
            padding-bottom: 35px;
        }

        .margin {
            margin: 55px 30px;
        }

        .form_box {
            width: 290px;
            border: 2px solid #456879;
            border-radius: 10px;
        }

        .form_yazi {
            width: 333px;
            text-align: right;
            font-family: 'Comic Sans MS';
            font-weight: bold;
            color: #3daabf;
            font-size:small;
        }

        .form_div {
            width: 100%;
        }

        .tablo {
        }

        .btn {
            font-family: "Comic Sans MS";
            font-weight: bold;
            font-size: medium;
            margin-right: 25px;
            color: #3DAABF;
        }

    </style>

    <script type="text/javascript">
        function Edit(id) {
            load_panel.style.visibility = "visible";

            jQuery.ajax({
                url: "/WebForm.aspx/Edit_Click",
                type: "POST",
                data: "{'id':'" + id + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    alert(data);

                    load_panel.style.visibility = "hidden";

                    document.getElementById("TextBox1").value = '';
                    document.getElementById("TextBox2").value = '';
                    document.getElementById("TextBox3").value = '';
                    document.getElementById("TextBox4").value = '';
                    document.getElementById("TextBox5").value = '';
                    document.getElementById("TextBox6").value = '';
                    document.getElementById("TextBox7").value = '';
                    document.getElementById("TextBox8").value = '';
                    document.getElementById("TextBox9").value = '';
                    document.getElementById("TextBox10").value = '';
                }
            });



            return false;

        }
        $(document).ready(function () {

            load_panel.style.visibility = "hidden";
            $('#btn_kaydet').click(function () {

                
                load_panel.style.visibility = "visible";

                var id = document.getElementById("TextBox1");
                var file_name = document.getElementById("TextBox2");
                var state_code = document.getElementById("TextBox3");
                var created_on = document.getElementById("TextBox4");
                var modified_on = document.getElementById("TextBox5");
                var created_by = document.getElementById("TextBox6");
                var modified_by = document.getElementById("TextBox7");
                var owning_unit = document.getElementById("TextBox8");
                var status_code = document.getElementById("TextBox9");
                var owning_user = document.getElementById("TextBox10");

                jQuery.ajax({
                    url: "/WebForm.aspx/Kaydet_Click",
                    type: "POST",
                    data: "{'id':'" + id.value + "','file_name':'" + file_name.value + "','state_code':'" + state_code.value + "','created_on':'" + created_on.value + "','modified_on':'" + modified_on.value + "','created_by':'" + created_by.value + "','modified_by':'" + modified_by.value + "','owning_unit':'" + owning_unit.value + "','status_code':'" + status_code.value + "','owning_user':'" + owning_user.value + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        alert(data.d);
                        load_panel.style.visibility = "hidden";

                        document.getElementById("TextBox1").value = '';
                        document.getElementById("TextBox2").value = '';
                        document.getElementById("TextBox3").value = '';
                        document.getElementById("TextBox4").value = '';
                        document.getElementById("TextBox5").value = '';
                        document.getElementById("TextBox6").value = '';
                        document.getElementById("TextBox7").value = '';
                        document.getElementById("TextBox8").value = '';
                        document.getElementById("TextBox9").value = '';
                        document.getElementById("TextBox10").value = '';
                        

                    }
                });



            });

            $('#btn_sil').click(function () {

                load_panel.style.visibility = "visible";


                var id = document.getElementById("TextBox1");
                var file_name = document.getElementById("TextBox2");
                var state_code = document.getElementById("TextBox3");
                var created_on = document.getElementById("TextBox4");
                var modified_on = document.getElementById("TextBox5");
                var created_by = document.getElementById("TextBox6");
                var modified_by = document.getElementById("TextBox7");
                var owning_unit = document.getElementById("TextBox8");
                var status_code = document.getElementById("TextBox9");
                var owning_user = document.getElementById("TextBox10");

                jQuery.ajax({
                    url: "/WebForm.aspx/Sil_Click",
                    type: "POST",
                    data: "{'id':'" + id.value+ "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        alert(data.d);

                        load_panel.style.visibility = "hidden";

                        document.getElementById("TextBox1").value = '';
                        document.getElementById("TextBox2").value = '';
                        document.getElementById("TextBox3").value = '';
                        document.getElementById("TextBox4").value = '';
                        document.getElementById("TextBox5").value = '';
                        document.getElementById("TextBox6").value = '';
                        document.getElementById("TextBox7").value = '';
                        document.getElementById("TextBox8").value = '';
                        document.getElementById("TextBox9").value = '';
                        document.getElementById("TextBox10").value = '';
                    }
                });

            });

           


        });

    </script>


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="baslik">
                HAZİNE SİHİRBAZI FORM SAYFASI
            </div>
            <asp:Panel ID="Panel1" runat="server" CssClass="form margin">
                <table class="form_div" style="border: medium dotted #3DAABF">
                    <tr>
                        <td style="width: 257px;">&nbsp;</td>
                        <td style="width: 286px;">&nbsp;</td>
                        <td style="width: 162px;">&nbsp;</td>
                        <td style="width: 282px;">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="form_yazi" style="width: 257px;">Transaction Id:</td>
                        <td style="width: 286px;">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form_box" Height="41px" Width="270px"></asp:TextBox>
                        </td>
                        <td style="width: 162px;">&nbsp;</td>
                        <td class="form_yazi" style="width: 286px;">Created By:</td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" CssClass="form_box" Height="41px" Width="270px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_yazi" style="width: 257px;">File Name:</td>
                        <td style="width: 286px;">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form_box" Height="41px" Width="270px"></asp:TextBox>
                        </td>
                        <td style="width: 162px;">&nbsp;</td>
                        <td class="form_yazi" style="width: 286px;">Modified By:</td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server" CssClass="form_box" Height="41px" Width="270px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_yazi" style="width: 257px;">Deletion State Code:</td>
                        <td style="width: 286px;">
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form_box" Height="41px" Width="270px"></asp:TextBox>
                        </td>
                        <td style="width: 162px;">
                            <asp:Panel  ID="load_panel" runat="server" Height="51px" Width="158px" >
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <img  style="height:51px; width:51px; " src="ikon/ajax-loader.gif" />
                            </asp:Panel>
                        </td>
                        <td class="form_yazi" style="width: 286px;">&nbsp;Owning Business Unit:</td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server" CssClass="form_box" Height="41px" Width="270px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_yazi" style="width: 257px;">Created On:</td>
                        <td style="width: 286px;">
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form_box" Height="41px" Width="270px"></asp:TextBox>
                        </td>
                        <td style="width: 162px;">&nbsp;</td>
                        <td class="form_yazi" style="width: 282px;">Status Code:</td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server" CssClass="form_box" Height="41px" Width="270px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="form_yazi" style="width: 257px;">Modified On:</td>
                        <td style="width: 286px;">
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form_box" Height="41px" Width="270px"></asp:TextBox>
                        </td>
                        <td style="width: 162px;">&nbsp;</td>
                        <td class="form_yazi" style="width: 282px;">Owning User:</td>
                        <td>
                            <asp:TextBox ID="TextBox10" runat="server" CssClass="form_box" Height="41px" Width="270px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 257px;">&nbsp;</td>
                        <td style="width: 286px;">&nbsp;</td>
                        <td style="width: 162px;" >&nbsp;</td>
                        <td style="width: 282px;">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 257px;">&nbsp;</td>
                        <td style="width: 286px;">&nbsp;</td>
                        <td style="width: 162px;">
                            &nbsp;</td>
                        <td style="width: 282px; text-align: right;">
                            <asp:Button ID="btn_sil" runat="server" CssClass="btn" Height="49px" OnClientClick="return false;" Text="SİL" Width="166px" />
                        </td>
                        <td>
                            <asp:Button ID="btn_kaydet" OnClientClick="return false;" name="btn_kaydet" runat="server" Height="49px" Text="KAYDET" Width="166px" CssClass="btn" />

                            <br />

                        </td>
                    </tr>
                </table>
            </asp:Panel>

            <div class="tablo margin" id="icerik" style="overflow: scroll;" >
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="2" OnPageIndexChanging="GridView1_PageIndexChanging" Height="194px" Width="100%" AutoGenerateColumns="False" BorderColor="Black" Font-Bold="False" Font-Names="Comic Sans MS" BorderWidth="3px" >
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <a href="#" onclick='return Edit("<%# Eval("New_TransactionId") %>")'>
                                    <img src="/ikon/editikon.png" height="40" width="40" />
                                </a>     
                            </ItemTemplate>
                        </asp:TemplateField>
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

                    <HeaderStyle BackColor="#3DAABF" ForeColor="White" Font-Size="Medium" />

                    <RowStyle Font-Size="Small" />

                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
