using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmFiles.Models;
using System.Web.ModelBinding;

namespace FilmFiles
{
    public partial class ActorList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Actor> GetActors()
        {
            var _db = new FilmFiles.Models.FilmContext();
            IQueryable<Actor> query = _db.Actors;
            return query;
        }
    }
}