using System.Data.Entity;
using WebApp.Models;

namespace WebApp.Persistence.Repository
{
    public class GodisnjiOdmorRepository : Repository<GodisnjiOdmor, int>, IGodisnjiOdmorRepository
    {
        public GodisnjiOdmorRepository(DbContext context) : base(context)
        {

        }
    }
}