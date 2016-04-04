using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Association.Gestion_des_Adhérents
{
    public partial class village : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           




            //SqlDataSource1



            using (associationEntities1 bdd = new associationEntities1())
            {


                List<Villages_de_la_région> ListAdr = new List<Villages_de_la_région>();

                var Result3 = from p in bdd.Villages_de_la_région
                              select new
                              {
                                  NumVillage = p.NumVillage,
                                  Villages = p.Villages,  
                              };



                List<Villages_de_la_région> listeVillages_de_la_région = new List<Villages_de_la_région>();

                foreach (var item in Result3)
                {
                    Villages_de_la_région adr = new Villages_de_la_région();

                    adr.NumVillage = item.NumVillage;
                    adr.Villages = item.Villages; 
                }



                GridView1.DataSource = listeVillages_de_la_région;
                GridView1.DataBind();









            }

        }
    }
}