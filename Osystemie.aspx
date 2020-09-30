<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeFile="Osystemie.aspx.cs" Inherits="_Default" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
        }
        .auto-style2 {
            color: #FF0000;
            font-weight: bold;
        }
        .auto-style3 {
            margin-bottom: 10px;
            font: 0.9em Trebuchet MS, Arial, sans-serif;
            color: #56564c;
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2 class="DDSubHeader">O Systemie</h2>
   

        <h4 class="DDSubHeaderosystemieh4"><b>Nazwa: </b>LEOPEK Data Management System<br />
     <b>Typ:</b> Licencja demonstracyjna<br />
     <b>Usługa utrzymania:</b>  brak</h4>


     <h6 class="DDSubHeaderosystemieh5" > LEOPEK Eryk Kurzepa<br />
         UL. ZYGMUNTOWSKA 10/4,<br />
39-300 MIELEC,  <br />
POLAND<br />
     Wszelkie prawa zastrzeżone dla: LEOPEK Eryk Kurzepa<br /><br />
            KONTAKT:<br />
Tel: 0048 503 787 129  <br />
         Email: database.systems@leopek.com 
     </h6>

     <h6 class="auto-style3"> <span class="auto-style2">UWAGA:</span>
       <span class="auto-style1">&nbsp;Program ten jest chroniony przez prawa autorskie i międzynarodowe regulacje.</span></h6>
        

 
<div class="footer">
         &nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label runat="server" ID="footertext">

LEOPEK Eryk Kurzepa
ul. Zygmuntowska 10/4,39-300 Mielec, 
woj. Podkarpackie
Polska

Systemy Bazodanowe
Tel.: +48 503 787 129,
E-mail: database.systems@leopek.com



         </asp:Label>
            
        </div>
  

</asp:Content>
