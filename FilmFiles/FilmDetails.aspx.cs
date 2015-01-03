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
    public partial class FilmDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Film> GetFilm(
                        [QueryString("FilmID")] int? filmId,
                        [RouteData] string Title)
        {
            var _db = new FilmFiles.Models.FilmContext();
            IQueryable<Film> query = _db.Films;
            if (filmId.HasValue && filmId > 0)
            {
                query = query.Where(f => f.FilmID == filmId);
            }
            else if (!String.IsNullOrEmpty(Title))
            {
                query = query.Where(f =>
                          String.Compare(f.Title, Title) == 0);
            }
            else
            {
                query = null;
            }
            return query;
        } 
    }
}