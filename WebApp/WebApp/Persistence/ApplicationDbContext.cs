using System.Data.Entity;
using WebApp.Models;

namespace WebApp.Persistence
{
    public class ApplicationDbContext : DbContext
    {
        public DbSet<Pozicija> Pozicije { get; set; }
        public DbSet<Nadredjen> Nadredjeni { get; set; }
        public DbSet<Radnik> Radnici { get; set; }
        public DbSet<GodisnjiOdmor> GodisnjiOdmori { get; set; }
        public DbSet<Bonus> Bonusi { get; set; }
        public DbSet<Odbitak> Odbitci { get; set; }
        public ApplicationDbContext()
            //Reference name connection string from web.config file 
            : base("DefaultConnection")
        {
        }

        public static ApplicationDbContext Create()
        {
            return new ApplicationDbContext();
        }
    }
}