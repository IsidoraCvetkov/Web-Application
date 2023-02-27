using System.Data.Entity;
using Unity;
using WebApp.Persistence.Repository;

namespace WebApp.Persistence.UnitOfWork
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly DbContext _context;
        [Dependency]
        public IPozicijaRepository Pozicije { get; set; }
        public UnitOfWork(DbContext context)
        {
            _context = context;
        }
        public int Complete()
        {
            return _context.SaveChanges();
        }
        public void Dispose()
        {
            _context.Dispose();
        }
    }
}