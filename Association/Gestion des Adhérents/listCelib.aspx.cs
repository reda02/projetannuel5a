﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Association.Gestion_des_Adhérents
{
    public partial class listCelib : System.Web.UI.Page
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
                              join q in bdd.Cotisation on p.IDAdherent equals q.IDAdherent
                              where q.AnneeCotis == dateNissance.ToString()
                              where p.SituatFam == "célibataire"
                              select new
                              {
                                  Nom = p.Nom,
                                  Prenom = p.Prenom,
                                  Genre = p.Genre,
                                  Naissance = p.Naissance,
                                  Photo = p.Photo,
                                  SituatFam = p.SituatFam,
                                  VilOrig = p.VilOrig,
                              };



                List<Adherent> listeAdherent = new List<Adherent>();

                foreach (var item in Result3)
                {
                    Adherent adr = new Adherent();

                    adr.Nom = item.Nom;
                    adr.Prenom = item.Prenom;
                    adr.Genre = item.Genre;
                    adr.Naissance = item.Naissance;
                    adr.Photo = item.Photo;
                    adr.SituatFam = item.SituatFam;
                    adr.VilOrig = item.VilOrig;


                    listeAdherent.Add(adr);
                }



                GridView1.DataSource = listeAdherent;
                GridView1.DataBind();









            }

        }
    }
}