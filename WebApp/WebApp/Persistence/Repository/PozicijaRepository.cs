using System.Data.Entity;
using WebApp.Models;

namespace WebApp.Persistence.Repository
{
    public class PozicijaRepository : Repository<Pozicija, int>, IPozicijaRepository
    {
        public PozicijaRepository(DbContext context) : base(context)
        {

        }
    }
}