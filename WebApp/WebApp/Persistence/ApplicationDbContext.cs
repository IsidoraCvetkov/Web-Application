using System.Data.Entity;
using WebApp.Models;

namespace WebApp.Persistence
{
    public class ApplicationDbContext : DbContext
    {
        public DbSet<Pozicija> Pozicijas { get; set; }
        public DbSet<Nadredjen> Nadredjens { get; set; }
        public DbSet<Radnik> Radniks { get; set; }
        public DbSet<GodisnjiOdmor> GodisnjiOdmors { get; set; }
        public DbSet<Bonus> Bonus { get; set; }
        public DbSet<Odbitak> Odbitaks { get; set; }
        public DbSet<Plata> Platas { get; set; }
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