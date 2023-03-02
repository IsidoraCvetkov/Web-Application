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
        [Dependency]
        public IBonusRepository Bonusi { get; set; }
        [Dependency]
        public IRadnikRepository Radnici { get; set; }
        [Dependency]
        public IPlataRepository Platas { get; set; }
        [Dependency]
        public INadredjenRepository Nadredjeni { get; set; }
        [Dependency]
        public IGodisnjiOdmorRepository GodisnjiOdmori { get; set; }
        [Dependency]
        public IOdbitakRepository Odbitci { get; set; }
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