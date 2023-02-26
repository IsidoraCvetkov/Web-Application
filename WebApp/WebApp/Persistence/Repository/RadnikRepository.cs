using System.Data.Entity;
using WebApp.Models;

namespace WebApp.Persistence.Repository
{
    public class RadnikRepository : Repository<Radnik, int>, IRadnikRepository
    {
        public RadnikRepository(DbContext context) : base(context)
        {

        }
    }
}