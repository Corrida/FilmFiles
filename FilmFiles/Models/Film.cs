using System.ComponentModel.DataAnnotations;

namespace FilmFiles.Models
{
    public class Film
    {
        [ScaffoldColumn(false)]
        public int FilmID { get; set; }

       
        [Required, StringLength(100), Display(Name = "Name")]
        public string Title { get; set; }


        [Required, StringLength(10000), Display(Name = "Film Description"), DataType(DataType.MultilineText)]
        public string Description { get; set; }


        public string Poster { get; set; }


        [Required, StringLength(100), Display(Name = "Initial Release Date")]
        public string ReleaseDate { get; set; }


        [Required, StringLength(100), Display(Name = "Box Office")]
        public string BoxOffice { get; set; }




        public int? GenreID { get; set; }

        public virtual Genre Genre { get; set; }


        public int? ActorID { get; set; }

        public virtual Actor Actor { get; set; }


        public int? DirectorID { get; set; }

        public virtual Director Director { get; set; }
    }
}