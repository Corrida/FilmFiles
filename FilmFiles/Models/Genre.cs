using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace FilmFiles.Models
{
    public class Genre
    {
        [ScaffoldColumn(false)]
        public int GenreID { get; set; }

        [Required, StringLength(100), Display(Name = "Name")]
        public string GName { get; set; }


        [Display(Name = "Film Description")]
        public string Description { get; set; }
        public virtual ICollection<Film> Films { get; set; }

    }
}