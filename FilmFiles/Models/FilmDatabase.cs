using System.Collections.Generic;
using System.Data.Entity;

namespace FilmFiles.Models
{
    public class FilmDatabase : DropCreateDatabaseIfModelChanges<FilmContext>
    {
        protected override void Seed(FilmContext context)
        {
            GetGenres().ForEach(g => context.Genres.Add(g));
            GetDirectors().ForEach(d => context.Directors.Add(d));
            GetActors().ForEach(a => context.Actors.Add(a));
            GetFilms().ForEach(f => context.Films.Add(f));
        }

        private static List<Genre> GetGenres()
        {
            var genres = new List<Genre> { 
                new Genre 
                { 
                    GenreID = 1, 
                    GName = "Action" 
                }, 
                new Genre 
                { 
                    GenreID = 2, 
                    GName = "Adventure" 
                }, 
                new Genre 
                { 
                    GenreID = 3, 
                    GName = "Comedy" 
                }, 
                new Genre
                { 
                    GenreID = 4, 
                    GName = "Crime & Gangster" 
                },
                new Genre
                { 
                    GenreID = 5, 
                    GName = "Drama" 
                }, 
                new Genre 
                { 
                    GenreID = 6, 
                    GName = "Fantasy" 
                }, 
                new Genre 
                { 
                    GenreID = 7,
                    GName = "Romance" 
                }, 
                new Genre 
                { 
                    GenreID = 8,
                    GName = "Sci-Fi" 
                },
                new Genre 
                { 
                    GenreID = 9,
                    GName = "Thriller" 
                }, 
                new Genre 
                { 
                    GenreID = 10,
                    GName = "War" 
                },
                new Genre 
                { 
                    GenreID = 11,
                    GName = "Western" 
                }, 
                new Genre 
                { 
                    GenreID = 12,
                    GName = "Horror" 
                }, 
                
            };

            return genres;
        }
        private static List<Actor> GetActors()
        {
            var actors = new List<Actor> { 
                new Actor 
                { 
                    ActorID = 1, 
                    AName = "Tom Hanks",
                    ABio = "Thomas Jeffrey Hanks was born in Concord, California, to Janet Marylyn (Frager), a hospital worker, and Amos Mefford Hanks, an itinerant cook. His father had English, and some German, ancestry, while his mother's family, originally surnamed Fraga, was entirely Portuguese. Tom grew up in what he has called a fractured family.",
                    Image = "TH.jpg",     
                    ADOB = "9 July 1956",
                },
                new Actor 
                { 
                    ActorID = 2, 
                    AName = "Bruce Willis",
                    ABio = "Actor and musician Bruce Willis is well known for his film appearances as wisecracking or hard-edged characters, often in spectacular action films. Collectively, he has appeared in films that have grossed in excess of $2.5 billion USD placing him in the top ten stars in terms of box office receipts.",
                    Image = "BW.jpg", 
                    ADOB = "19 March 1955",
                },
                new Actor 
                { 
                    ActorID = 3, 
                    AName = "Henry Cavill",
                    ABio = "Henry William Dalgliesh Cavill was born on the Bailiwick of Jersey, a British Crown Dependency in the Channel Islands, just off the coast of Normandy, France. His mother, Marianne, is a bank secretary also born on the island, and his father, Colin Richard Cavill, is an English-born stockbroker.",
                    Image = "HC.jpg", 
                    ADOB = "5 May 1983",
                },
                new Actor 
                { 
                    ActorID = 4, 
                    AName = "Arnold Schwarzenegger",
                    ABio = "With an almost unpronounceable surname and a thick Austrian accent, who would have ever believed that a brash, quick talking bodybuilder from a small European village would become one of Hollywood's biggest stars, marry into the prestigious Kennedy family, amass a fortune via shrewd investments and one day be the Governor of California",
                    Image = "AS.jpg", 
                    ADOB = "30 July 1947",

                },
                new Actor 
                { 
                    ActorID = 5, 
                    AName = "Sam Rockwell",
                    ABio = "Sam Rockwell was born on November 5, 1968, in San Mateo, California, the child of two actors, Pete Rockwell and Penny Hess. The family moved to New York when he was two years old, living first in the Bronx and later in Manhattan.",
                    Image = "SR.jpg", 
                    ADOB = "5 November 1968",
                },
                new Actor 
                { 
                    ActorID = 6, 
                    AName = "Harrison Ford",
                    ABio = "Harrison Ford was born on July 13, 1942 in Chicago, Illinois, to Dorothy (Nidelman), a radio actress, and Christopher Ford (born John William Ford), an actor turned advertising executive. His father had Irish and German ancestry, and his maternal grandparents were Jewish immigrants from the Russian Empire.",
                    Image = "HF.jpg", 
                    ADOB = "13 July 1942",
                },
                new Actor 
                { 
                    ActorID = 7, 
                    AName = "Sigourney Weaver",
                    ABio = "Sigourney Weaver was born Susan Alexandra Weaver in Leroy Hospital in New York City. Her father, TV producer Sylvester L. Weaver Jr., originally wanted to name her Flavia, because of his passion for Roman history (he had already named her elder brother Trajan)",
                    Image = "SW.jpg", 
                    ADOB = "8 October 1949",
                },
                new Actor 
                { 
                    ActorID = 8, 
                    AName = "Steve Carrell",
                    ABio = "Steve Carell, one of America's most versatile comics, was born Steven John Carell on August 16, 1962, in Concord, Massachusetts. He is the son of Harriet T. (Koch), a psychiatric nurse, and Edwin A. Carell, an electrical engineer. His mother is of Polish descent and his father is of Italian and German ancestry (Steve's grandfather had changed the surname from Caroselli to Carrell). ",
                    Image = "SC.jpg", 
                    ADOB = "16 August 1962",
                },
                new Actor 
                { 
                    ActorID = 9, 
                    AName = "Joaquin Phenix",
                    ABio = "Joaquin Phoenix was born in San Juan, Puerto Rico, to Arlyn (Dunetz) and John Bottom, and is the middle child in a brood of five. His parents, from the continental United States, were then serving as Children of God missionaries. His mother is from a Jewish family in New York, while his father, from California, is of mostly British Isles descent. ",
                    Image = "JQ.jpg", 
                    ADOB = "28 October 1974",
                },
                new Actor 
                { 
                    ActorID = 10, 
                    AName = "Michael Keaton",
                    ABio = "Quirky, inventive and handsome US actor Michael Keaton first achieved major fame with his door busting performance as fast talking, ideas man Bill Blazejowski alongside nerdish morgue attendant Henry Winkler in Night Shift (1982).",
                    Image = "MK.jpg", 
                    ADOB = "5 September 1951",
                },
            };

            return actors;
        }

        private static List<Director> GetDirectors()
        {
            var directors = new List<Director> { 
                new Director 
                { 
                    DirectorID = 1, 
                    DName = "Steven Spielberg",
                    DBio = "Undoubtedly one of the most influential film personalities in the history of film, Steven Spielberg is perhaps Hollywood's best known director and one of the wealthiest filmmakers in the world. Spielberg has countless big-grossing, critically acclaimed credits to his name, as producer, director and writer.",
                    Image = "SS.jpg", 
                    DDOB = "18 December 1946",
                },
                new Director 
                { 
                    DirectorID = 2, 
                    DName = "Zack Snyder", 
                    DBio = "Zachary Edward Snyder is an American film director, film producer, and screenwriter, best known for action and science fiction films. Snyder made his feature film debut with the 2004 remake Dawn of the Dead and has gone on to be known for his comic book movies and superhero films, including 300 (2007), Watchmen (2009), Man of Steel (2013) and its upcoming sequel, Batman v Superman: Dawn of Justice (2016). ",
                    Image = "ZS.jpg", 
                    DDOB = "1 March 1966",
                },
                new Director 
                { 
                    DirectorID = 3, 
                    DName = "James Cameron", 
                    DBio = "James Francis Cameron was born on August 16, 1954 in Kapuskasing, Ontario, Canada. He moved to the United States in 1971. The son of an engineer, he majored in physics at California State University but, after graduating, drove a truck to support his screenwriting ambition",
                    Image = "JC.jpg", 
                    DDOB = "16 August 1954",
                },
                new Director 
                { 
                    DirectorID = 4, 
                    DName = "Ridley Scott", 
                    DBio = "Ridley Scott was born in South Shields, Tyne and Wear (then Northumberland) on 30 November 1937. His father was an officer in the Royal Engineers and the family followed him as his career posted him throughout the UK and Europe before they eventually returned to Teesside. ",
                    Image = "RS.jpg", 
                    DDOB = "30 November 1937",
                },
                new Director 
                { 
                    DirectorID = 5, 
                    DName = "Spike Jonze", 
                    DBio = "Spike Jonze made up one-third (along with Andy Jenkins and Mark Lewman) of the triumvirate of genius minds behind Dirt Magazine, the brother publication of the much lamented ground-breaking Sassy Magazine. ",
                    Image = "SJ.jpg", 
                    DDOB = "22 October 1969",
                },
                new Director 
                { 
                    DirectorID = 6, 
                    DName = "Duncan Jones", 
                    DBio = "Duncan Jones was born on May 30, 1971 in Beckenham, Kent, England as Duncan Zowie Haywood Jones. He is a director and writer, known for Moon (2009), Source Code (2011) and Warcraft (2016). He has been married to Rodene Ronquillo since November 6, 2012. ",
                    Image = "DJ.jpg", 
                    DDOB = "30 May 1971",
                },
                new Director 
                { 
                    DirectorID =7, 
                    DName = "Pierre Coffin", 
                    DBio = "Pierre Coffin is an actor and director, known for Despicable Me (2010), Despicable Me 2 (2013) and Minions (2015).",
                    Image = "PC.jpg", 
                    DDOB = "1 November 1967",
                },
                new Director 
                { 
                    DirectorID = 8, 
                    DName = "John McTiernan",
                    DBio = "John McTiernan was born on January 8, 1951 in Albany, New York, USA as John Campbell McTiernan Jr. He is a director and producer, known for Die Hard (1988), Die Hard: With a Vengeance (1995) and Predator (1987). He has been married to Gail Sistrunk since 2012. He was previously married to Kate Harrington, Donna Dubrow and Carol Land. ",
                    Image = "JMcT.jpg", 
                    DDOB = "8 January 1951",
                },
                new Director 
                { 
                    DirectorID = 9, 
                    DName = "Alejandro González Iñárritu",
                    DBio = "Alejandro González Iñárritu (Spanish pronunciation, ih-nyar-ee-too; born August 15, 1963) is a Mexican film director. González Iñárritu is the first Mexican director to be nominated for the Academy Award for Best Director and by the Directors Guild of America for Best Director.",
                    Image = "AGI.jpg", 
                    DDOB = "15 August 1963",
                },
            };

            return directors;
        }

        private static List<Film> GetFilms()
        {
            var films = new List<Film> { 
                new Film 
                { 
                    FilmID = 1, 
                    Title = "Saving Private Ryan", 
                    DirectorID = 1,
                    GenreID = 10, 
                    Description = "Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.",  
                    Poster ="SPR.png", 
                    ActorID = 1,
                    ReleaseDate = "24 July 1998",
                    BoxOffice = "$481,840,900.00", 
               }, 
                new Film  
                { 
                    FilmID = 2, 
                    Title = "Her", 
                    DirectorID = 5,
                    GenreID = 7,
                    Description = "A lonely writer develops an unlikely relationship with his newly purchased operating system that's designed to meet his every need.", 
                    Poster ="HER.png",
                    ActorID = 9,
                    ReleaseDate = "10 January 2014",
                    BoxOffice = "$47,351,251.00", 
               }, 
               new Film 
                { 
                    FilmID = 3, 
                    Title = "The Terminator",
                    DirectorID = 3,
                    GenreID = 8,
                    Description = "A human-looking indestructible cyborg is sent from 2029 to 1984 to assassinate a waitress, whose unborn son will lead humanity in a war against the machines, while a soldier from that war is sent to protect her at all costs.", 
                    Poster ="T800.png", 
                    ActorID = 4,
                    ReleaseDate = "26 October 1984",
                    BoxOffice = "$38,371,200.00", 
                }, 
                new Film 
                { 
                    FilmID = 4, 
                    Title = "Alien", 
                    DirectorID = 4,
                    GenreID = 12,
                    Description = "The commercial vessel Nostromo receives a distress call from an unexplored planet. After searching for survivors, the crew heads home only to realize that a deadly bioform has joined them.", 
                    Poster ="Alien.png", 
                    ActorID = 7,
                    ReleaseDate = "22 June 1979",
                    BoxOffice = "$80,931,801.00", 
                },                 
                new Film 
                { 
                    FilmID = 5, 
                    Title = "Aliens", 
                    DirectorID = 3,
                    GenreID = 1,
                    Description = "The planet from Alien (1979) has been colonized, but contact is lost. This time, the rescue team has impressive firepower, but will it be enough?", 
                    Poster ="AL2.png", 
                    ActorID = 7,
                    ReleaseDate = "18 July 1986",
                    BoxOffice = "$85,160,248.00", 
                }, 
                 new Film 
                { 
                    FilmID = 6, 
                    Title = "Die Hard", 
                    DirectorID = 8,
                    GenreID = 1,
                    Description = "John McClane, officer of the NYPD, tries to save wife Holly Gennaro and several others, taken hostage by German terrorist Hans Gruber during a Christmas party at the Nakatomi Plaza in Los Angeles.", 
                    Poster ="DHard.png", 
                    ActorID = 2,
                    ReleaseDate = "20 July 1988",
                    BoxOffice = "$83,008,852.00", 
                }, 
                 new Film 
                { 
                    FilmID = 7, 
                    Title = "Man Of Steel", 
                    DirectorID = 2,
                    GenreID = 8,
                    Description = "Clark Kent, one of the last of an extinguished race disguised as an unremarkable human, is forced to reveal his identity when Earth is invaded by an army of survivors who threaten to bring the planet to the brink of destruction.", 
                    Poster ="MOS.png", 
                    ActorID = 3,
                    ReleaseDate = "14 June 2013",
                    BoxOffice = "$291,045,518.00", 
                },
                new Film
                { 
                    FilmID = 8, 
                    Title = "Despicable Me", 
                    DirectorID = 7,
                    GenreID = 3,
                    Description = "When a criminal mastermind uses a trio of orphan girls as pawns for a grand scheme, he finds their love is profoundly changing him for the better.", 
                    Poster ="DM.png", 
                    ActorID = 8,
                    ReleaseDate = "9 July 2010",
                    BoxOffice = "$251,513,985.00", 
                },
                new Film
                { 
                    FilmID = 9, 
                    Title = "Moon", 
                    DirectorID = 6,
                    GenreID = 5,
                    Description = "Astronaut Sam Bell has a quintessentially personal encounter toward the end of his three-year stint on the Moon, where he, working alongside his computer, GERTY, sends back to Earth parcels of a resource that has helped diminish our planet's power problems.", 
                    Poster ="MOON.png",
                    ActorID = 5,
                    ReleaseDate = "17 July 2009",
                    BoxOffice = "$291,045,518.00", 
                }, 
                new Film
                { 
                    FilmID = 10, 
                    Title = "Blade Runner", 
                    DirectorID = 4,
                    GenreID = 8,
                    Description = "A blade runner must pursue and try to terminate four replicants who stole a ship in space and have returned to Earth to find their creator.", 
                    Poster ="BR.png",
                    ActorID = 6,
                    ReleaseDate = "25 June 1982",
                    BoxOffice = "$32,868,943.00", 
                }, 
            };

            return films;
        }
    }
}
