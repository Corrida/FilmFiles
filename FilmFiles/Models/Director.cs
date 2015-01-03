using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace FilmFiles.Models
{
    public class Director
    {
        [ScaffoldColumn(false)]
        public int DirectorID { get; set; }

        [Required, StringLength(100), Display(Name = "Name")]
        public string DName { get; set; }

        [Required, StringLength(10000), Display(Name = "Bio"), DataType(DataType.MultilineText)]
        public string DBio { get; set; }

        [Required, StringLength(100), Display(Name = "Date of Birth")]
        public string DDOB { get; set; }

        public string Image { get; set; }

    }
}