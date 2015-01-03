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
    public partial class DirectorList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Director> GetDirectors()
        {
            var _db = new FilmFiles.Models.FilmContext();
            IQueryable<Director> query = _db.Directors;
            return query;
        }
    }
}