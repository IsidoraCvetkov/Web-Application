using System.Data.Entity;
using WebApp.Models;

namespace WebApp.Persistence.Repository
{
    public class OdbitakRepository : Repository<Odbitak, int>, IOdbitakRepository
    {
        public OdbitakRepository(DbContext context) : base(context)
        {

        }
    }
}