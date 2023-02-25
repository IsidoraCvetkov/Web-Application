using System.Data.Entity;
using WebApp.Models;

namespace WebApp.Persistence
{
    public class ApplicationDbContext : DbContext
    {
        public DbSet<Pozicija> Pozicije { get; set; }
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