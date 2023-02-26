using System.Data.Entity;
using WebApp.Models;

namespace WebApp.Persistence.Repository
{
    public class NadredjenRepository : Repository<Nadredjen, int>, INadredjenRepository
    {
        public NadredjenRepository(DbContext context) : base(context)
        {

        }
    }
}