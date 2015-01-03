using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace FilmFiles.Models
{
    public class Actor
    {
        [ScaffoldColumn(false)]
        public int ActorID { get; set; }

        [Required, StringLength(100), Display(Name = "Name")]
        public string AName { get; set; }

        [Required, StringLength(10000), Display(Name = "Bio"), DataType(DataType.MultilineText)]
        public string ABio { get; set; }

        [Required, StringLength(100), Display(Name = "Date of Birth")]
        public string   ADOB { get; set; }

        public string Image { get; set; }
    }
}