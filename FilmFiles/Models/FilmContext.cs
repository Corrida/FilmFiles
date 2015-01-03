using System.Data.Entity;

namespace FilmFiles.Models 
{
    public class FilmContext : DbContext
    {
        public FilmContext() : base("FilmFiles")
    {
    }
    public DbSet<Genre> Genres { get; set; }
    public DbSet<Actor> Actors { get; set; }
    public DbSet<Director> Directors { get; set; }
    public DbSet<Film> Films { get; set; }

    }
}