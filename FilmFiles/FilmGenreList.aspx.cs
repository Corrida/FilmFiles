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
    public partial class FilmGenreList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Genre> GetGenres()
        {
            var _db = new FilmFiles.Models.FilmContext();
            IQueryable<Genre> query = _db.Genres;
            return query;
        }

        public IQueryable<Film> GetFilms([QueryString("id")] int? genreId)
        {
            var _db = new FilmFiles.Models.FilmContext();
            IQueryable<Film> query = _db.Films;
            if (genreId.HasValue && genreId > 0)
            {
                query = query.Where(p => p.GenreID == genreId);
            }
            return query;
        }
    }
}