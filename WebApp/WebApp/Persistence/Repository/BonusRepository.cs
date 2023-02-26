using System.Data.Entity;
using WebApp.Models;

namespace WebApp.Persistence.Repository
{
    public class BonusRepository : Repository<Bonus, int>, IBonusRepository
    {
        public BonusRepository(DbContext context) : base(context)
        {

        }
    }
}