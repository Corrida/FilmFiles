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
    public partial class ActorBio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<Actor> GetActor(
                        [QueryString("ActorID")] int? actorId,
                        [RouteData] string AName)
        {
            var _db = new FilmFiles.Models.FilmContext();
            IQueryable<Actor> query = _db.Actors;
            if (actorId.HasValue && actorId > 0)
            {
                query = query.Where(a => a.ActorID == actorId);
            }
            else if (!String.IsNullOrEmpty(AName))
            {
                query = query.Where(a =>
                          String.Compare(a.AName, AName) == 0);
            }
            else
            {
                query = null;
            }
            return query;
        }
    }
}