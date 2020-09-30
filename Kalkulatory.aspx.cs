using System;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;

public partial class _Default : System.Web.UI.Page {


    protected void calculate(object sender, EventArgs e)
    {
        //Vobr. = Vc * 1000 / Pi * d
        //F = Vobr * Liczba zębów * fz 
        double Pi = 3.14159;

        try
        {
            double Vc= double.Parse(predkosc.Text); // predkosc skrawania
            double D= double.Parse(srednica.Text); //srednica
            double Obroty = (Vc * 1000) / (Pi * D);
            int Z = int.Parse(ilzebow.Text); // liczba zebow
            double Fz = double.Parse(poszab.Text); // posuw na zab
            double Posuw = Obroty * Z * Fz;

            //wyniki Math.Round(d, 2)
            obroty.Text = Math.Round(Obroty,3).ToString();
            posuw.Text = Math.Round(Posuw,3).ToString();
        }
        catch { }
      
        
    }
}
