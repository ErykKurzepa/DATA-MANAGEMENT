<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeFile="DetailsMojeDane.aspx.cs" Inherits="Details" %>


<asp:Content ID="headContent" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true">
        <DataControls>
            <asp:DataControlReference ControlID="FormView1" />
        </DataControls>
    </asp:DynamicDataManager>

    <h2 class="DDSubHeader">Moje dane</h2>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="List of validation errors" CssClass="DDValidator" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="FormView1" Display="None" CssClass="DDValidator" />

            <asp:FormView runat="server" ID="FormView1" DataSourceID="DetailsDataSource" OnItemDeleted="FormView1_ItemDeleted" RenderOuterTable="false">
                <ItemTemplate>
                    <table id="detailsTable" class="DDDetailsTable" cellpadding="6">
                      <tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="DANE PERSONALNE"/>
            </td>
        </tr>
 <tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Imię i Nazwisko:"/>
            </td>
            <td colspan="3">
                <asp:DynamicControl runat="server" ID="F_Name" DataField="F_Name" />
            <asp:DynamicControl runat="server" ID="L_Name" DataField="L_Name" />
                 </td>
        </tr>

 <tr class="td">
            <td class="DDLightHeader" >
                <asp:Label runat="server" Text="Dział:"/>
            </td>
            <td>
                <asp:DynamicControl runat="server" ID="DynamicControl1" DataField="Department" />
                 </td>
      <td class="DDLightHeader">
                <asp:Label runat="server" Text="Stanowisko:"/>
            </td>
            <td>
                <asp:DynamicControl runat="server" ID="DynamicControl2" DataField="Position" />
                 </td>
        </tr>

<tr class="td">
            <td class="DDLightHeader" colspan="6">
                <asp:Label runat="server" Text="Kontakt:"/>
            </td>
        </tr>

<tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Numer tel. stac."/>
            </td>
            <td>
                <asp:DynamicControl runat="server" ID="DynamicControl3" DataField="W_Phone_No" />
                 </td>
      <td class="DDLightHeader">
                <asp:Label runat="server" Text="Numer. tel. kom."/>
            </td>
            <td>
                <asp:DynamicControl runat="server" ID="DynamicControl4" DataField="M_Phone_No" />
                 </td>

    <td class="DDLightHeader">
                <asp:Label runat="server" Text="Adres email"/>
            </td>
            <td>
                <asp:DynamicControl runat="server" ID="DynamicControl_Email" DataField="Email"  />
                 </td>
        </tr>

<tr class="td">
            <td class="DDLightHeader" colspan="6">
                <asp:Label runat="server" Text="Dodatkowy opis:"/>
            </td>
        </tr>

<tr class="td">
            <td colspan="6">
                 <asp:DynamicControl runat="server" ID="DynamicControl14" DataField="Description" />
            </td>
        </tr>

<tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="USTAWIENIA UPRAWNIEŃ DO ZASOBÓW SYSTEMU"/>
            </td>
        </tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="DOSTAWCY:"/>
            </td>

            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl10" DataField="Contractor_List" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl11" DataField="Contractor_Insert" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl12" DataField="Contractor_Edit" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl13" DataField="Contractor_Delete" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
        </tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="REJESTR ZAMÓWIEŃ<br> I OCENY DOSTAWCÓW:"/>
            </td>

            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl19" DataField="Contractor_Order_List" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl20" DataField="Contractor_Order_Insert" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl21" DataField="Contractor_Order_Edit" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl22" DataField="Contractor_Order_Delete" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
        </tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="KLIENCI:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl6" DataField="Customer_List" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl7" DataField="Customer_Insert" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl8" DataField="Customer_Edit" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl9" DataField="Customer_Delete" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="REJESTR ZAMÓWIEŃ<br> KLIENTÓW:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl23" DataField="Customer_Order_List" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl24" DataField="Customer_Order_Insert" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl25" DataField="Customer_Order_Edit" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl26" DataField="Customer_Order_Delete" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="PRODUKTY<BR>I DETALE KLIENTÓW:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl15" DataField="Customer_Part_List" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl16" DataField="Customer_Part_Insert" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl17" DataField="Customer_Part_Edit" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl18" DataField="Customer_Part_Delete" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="POWIADOMIENIA<BR> O ZMIANACH:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl27" DataField="Notification_List" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl28" DataField="Notification_Insert" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl29" DataField="Notification_Edit" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl30" DataField="Notification_Delete" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="ZADANIA PRACOWNIKÓW:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl31" DataField="Task_List" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl32" DataField="Task_Insert" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl33" DataField="Task_Edit" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl34" DataField="Task_Delete" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="TECHNOLOGIE PRODUKCJI,<BR> MATERIAŁY PRODUKCYJNE,<BR> INSTRUKCJE PRACY,<BR>RYSUNKI TECHNOLOGICZNE:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl35" DataField="Technology_List" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl36" DataField="Technology_Insert" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl37" DataField="Technology_Edit" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl38" DataField="Technology_Delete" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="PROGRAMY CNC <br> I ARKUSZE USTAWCZE:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl39" DataField="CNC_Program_List" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl40" DataField="CNC_Program_Insert" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl41" DataField="CNC_Program_Edit" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl42" DataField="CNC_Program_Delete" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="NARZĘDZIA:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl43" DataField="Tool_List" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl44" DataField="Tool_Insert" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl45" DataField="Tool_Edit" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl46" DataField="Tool_Delete" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="PRZYRZĄDY I MASZYNY:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl47" DataField="Fixture_List" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl48" DataField="Fixture_Insert" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl49" DataField="Fixture_Edit" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl50" DataField="Fixture_Delete" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="DOKUMENTY<BR> KONTROLI JAKOŚCI"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl51" DataField="Quality_List" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl52" DataField="Quality_Insert" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl53" DataField="Quality_Edit" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl54" DataField="Quality_Delete" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>
<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="PROGRAMY CMM:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl55" DataField="CMM_Program_List" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl56" DataField="CMM_Program_Insert" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl57" DataField="CMM_Program_Edit" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl58" DataField="CMM_Program_Delete" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="FORMULARZE <BR>I WZORY DOKUMENTÓW:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl59" DataField="FormTemplates_List" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl60" DataField="FormTemplates_Insert" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl61" DataField="FormTemplates_Edit" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl62" DataField="FormTemplates_Delete" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>
<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="UŻYTKOWNICY:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl63" DataField="Users_List" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl64" DataField="Users_Insert" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl65" DataField="Users_Edit" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl66" DataField="Users_Delete" /> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>
                        <tr class="td">
                            <td colspan="2">
                              </td>
                        </tr>
                       
                    </table>
                </ItemTemplate>
                <EmptyDataTemplate>
                    <div class="DDNoItem">Rekord nie istnieje.</div>
                </EmptyDataTemplate>
            </asp:FormView>

            <asp:EntityDataSource ID="DetailsDataSource" runat="server" EnableDelete="true" />

            <asp:QueryExtender TargetControlID="DetailsDataSource" ID="DetailsQueryExtender" runat="server">
                <asp:DynamicRouteExpression />
            </asp:QueryExtender>



            <br />

           
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

