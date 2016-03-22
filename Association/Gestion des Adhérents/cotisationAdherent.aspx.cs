using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Association.Gestion_des_Adhérents
{
    public partial class cotisationAdherent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int dateNissance = Calendar1.SelectedDate.Year;




            //SqlDataSource1



            using (associationEntities1 bdd = new associationEntities1())
            {


                List<Adherent> ListAdr = new List<Adherent>();

                var Result3 = from p in bdd.Adherent
                              join q in bdd.Coordonnees on p.IDAdherent equals q.IDAdherent 
                              select new
                              {
                                  IDAdherent = p.IDAdherent,
                                  Genre = p.Genre,
                                  Nom = p.Nom,
                                  Prenom = p.Prenom,
                                  VilOrig = p.VilOrig,
                                  Adresse = q.Adresse,
                                  Adresse2 = q.Adresse2,
                                  CodePostal = q.CP,
                                  Ville = q.Ville,
                                  telleFix=q.TelFixe,
                                  Portable = q.Portable,
                                  Naissance = p.Naissance,
                                  Mail = q.Mail,
                                 
                                   









                                  
                              };



              //  SqlDataSource2.DataBinding() = Result3;

                GridView2.DataSource = Result3;
                GridView2.DataBind();









            }

        }
    }
}