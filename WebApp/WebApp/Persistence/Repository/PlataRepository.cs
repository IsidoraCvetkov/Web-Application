using System.Data.Entity;
using WebApp.Models;

namespace WebApp.Persistence.Repository
{
    public class PlataRepository : Repository<Plata, int>, IPlataRepository
    {
        public PlataRepository(DbContext context) : base(context)
        {

        }
    }
}