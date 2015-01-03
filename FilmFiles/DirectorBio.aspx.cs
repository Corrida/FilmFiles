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
    public partial class DirectorBio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Director> GetDirector(
                        [QueryString("DirectorID")] int? directorId,
                        [RouteData] string DName)
        {
            var _db = new FilmFiles.Models.FilmContext();
            IQueryable<Director> query = _db.Directors;
            if (directorId.HasValue && directorId > 0)
            {
                query = query.Where(d => d.DirectorID == directorId);
            }
            else if (!String.IsNullOrEmpty(DName))
            {
                query = query.Where(d =>
                          String.Compare(d.DName, DName) == 0);
            }
            else
            {
                query = null;
            }
            return query;
        }
    }
}