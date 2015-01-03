using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FilmFiles
{
    public partial class DBEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

            protected void LinkButtonInsert_Click(object sender, EventArgs e)
            {
                SqlDataSource1.InsertParameters["Title"].DefaultValue =
                    ((TextBox)GridView1.FooterRow.FindControl("txtTitle")).Text;

                SqlDataSource1.InsertParameters["Description"].DefaultValue =
                    ((TextBox)GridView1.FooterRow.FindControl("txtDescription")).Text;

                SqlDataSource1.InsertParameters["Poster"].DefaultValue =
                    ((TextBox)GridView1.FooterRow.FindControl("txtPoster")).Text;

                SqlDataSource1.InsertParameters["ReleaseDate"].DefaultValue =
                    ((TextBox)GridView1.FooterRow.FindControl("txtReleaseDate")).Text;

                SqlDataSource1.InsertParameters["BoxOffice"].DefaultValue =
                    ((TextBox)GridView1.FooterRow.FindControl("txtBoxOffice")).Text;

                SqlDataSource1.InsertParameters["GenreID"].DefaultValue =
                    ((TextBox)GridView1.FooterRow.FindControl("txtGenreID")).Text;

                SqlDataSource1.InsertParameters["ActorID"].DefaultValue =
                    ((TextBox)GridView1.FooterRow.FindControl("txtActorID")).Text;

                SqlDataSource1.InsertParameters["DirectorID"].DefaultValue =
                    ((TextBox)GridView1.FooterRow.FindControl("txtDirectorID")).Text;

                SqlDataSource1.Insert();
            }

            protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
            {

            }

        }
    }
