<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Users_Insert.ascx.cs" Inherits="DynamicData_EntityTemplates_Users_Insert" %>

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
                <asp:DynamicControl runat="server" ID="F_Name" DataField="F_Name" Mode="Insert"/>
            <asp:DynamicControl runat="server" ID="L_Name" DataField="L_Name" Mode="Insert"/>
                 </td>
        </tr>

 <tr class="td">
            <td class="DDLightHeader" >
                <asp:Label runat="server" Text="Dział:"/>
            </td>
            <td>
                <asp:DynamicControl runat="server" ID="DynamicControl1" DataField="Department" Mode="Insert"/>
                 </td>
      <td class="DDLightHeader">
                <asp:Label runat="server" Text="Stanowisko:"/>
            </td>
            <td>
                <asp:DynamicControl runat="server" ID="DynamicControl2" DataField="Position" Mode="Insert"/>
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
                <asp:DynamicControl runat="server" ID="DynamicControl3" DataField="W_Phone_No" Mode="Insert"/>
                 </td>
      <td class="DDLightHeader">
                <asp:Label runat="server" Text="Numer. tel. kom."/>
            </td>
            <td>
                <asp:DynamicControl runat="server" ID="DynamicControl4" DataField="M_Phone_No" Mode="Insert"/>
                 </td>

    <td class="DDLightHeader">
                <asp:Label runat="server" Text="Adres email"/>
            </td>
            <td>
                <asp:DynamicControl runat="server" ID="DynamicControl_Email" DataField="Email" Mode="Insert"/>
                 </td>
        </tr>

<tr class="td">
            <td class="DDLightHeader" colspan="6">
                <asp:Label runat="server" Text="Dodatkowy opis:"/>
            </td>
        </tr>

<tr class="td">
            <td colspan="6">
                 <asp:DynamicControl runat="server" ID="DynamicControl14" DataField="Description" Mode="Insert"/>
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
                <asp:DynamicControl runat="server" ID="DynamicControl10" DataField="Contractor_List" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl11" DataField="Contractor_Insert" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl12" DataField="Contractor_Edit" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl13" DataField="Contractor_Delete" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
        </tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="REJESTR ZAMÓWIEŃ<br> I OCENY DOSTAWCÓW:"/>
            </td>

            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl19" DataField="Contractor_Order_List" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl20" DataField="Contractor_Order_Insert" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl21" DataField="Contractor_Order_Edit" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl22" DataField="Contractor_Order_Delete" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
        </tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="KLIENCI:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl6" DataField="Customer_List" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl7" DataField="Customer_Insert" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl8" DataField="Customer_Edit" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl9" DataField="Customer_Delete" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="REJESTR ZAMÓWIEŃ<br> KLIENTÓW:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl23" DataField="Customer_Order_List" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl24" DataField="Customer_Order_Insert" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl25" DataField="Customer_Order_Edit" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl26" DataField="Customer_Order_Delete" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="PRODUKTY<BR>I DETALE KLIENTÓW:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl15" DataField="Customer_Part_List" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl16" DataField="Customer_Part_Insert" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl17" DataField="Customer_Part_Edit" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl18" DataField="Customer_Part_Delete" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="POWIADOMIENIA<BR> O ZMIANACH:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl27" DataField="Notification_List" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl28" DataField="Notification_Insert" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl29" DataField="Notification_Edit" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl30" DataField="Notification_Delete" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="ZADANIA PRACOWNIKÓW:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl31" DataField="Task_List" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl32" DataField="Task_Insert" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl33" DataField="Task_Edit" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl34" DataField="Task_Delete" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="TECHNOLOGIE PRODUKCJI,<BR> INSTRUKCJE,<BR>RYSUNKI TECHNOLOGICZNE:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl35" DataField="Technology_List" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl36" DataField="Technology_Insert" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl37" DataField="Technology_Edit" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl38" DataField="Technology_Delete" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="PROGRAMY CNC:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl39" DataField="CNC_Program_List" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl40" DataField="CNC_Program_Insert" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl41" DataField="CNC_Program_Edit" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl42" DataField="CNC_Program_Delete" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="NARZĘDZIA:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl43" DataField="Tool_List" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl44" DataField="Tool_Insert" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl45" DataField="Tool_Edit" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl46" DataField="Tool_Delete" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="PRZYRZĄDY:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl47" DataField="Fixture_List" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl48" DataField="Fixture_Insert" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl49" DataField="Fixture_Edit" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl50" DataField="Fixture_Delete" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="DOKUMENTY<BR> KONTROLI JAKOŚCI"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl51" DataField="Quality_List" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl52" DataField="Quality_Insert" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl53" DataField="Quality_Edit" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl54" DataField="Quality_Delete" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>
<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="PROGRAMY CMM:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl55" DataField="CMM_Program_List" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl56" DataField="CMM_Program_Insert" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl57" DataField="CMM_Program_Edit" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl58" DataField="CMM_Program_Delete" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="FORMULARZE <BR>I WZORY DOKUMENTÓW:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl59" DataField="FormTemplates_List" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl60" DataField="FormTemplates_Insert" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl61" DataField="FormTemplates_Edit" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl62" DataField="FormTemplates_Delete" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>

<tr class="td">
            <td class="DDLightHeader" style="text-align:right">
                <asp:Label runat="server" Text="PRACOWNICY YASA:"/>
            </td>

            <td style="text-align:center"">
                <asp:DynamicControl runat="server" ID="DynamicControl63" DataField="Users_List" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Przeglądanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl64" DataField="Users_Insert" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Dodawanie"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl65" DataField="Users_Edit" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Edycja"/>
                 </td>
            <td style="text-align:center">
                <asp:DynamicControl runat="server" ID="DynamicControl66" DataField="Users_Delete" Mode="Insert"/> <br /><asp:Label class="DDLightHeader" runat="server" Text="Usuwanie"/>
                 </td>
</tr>



