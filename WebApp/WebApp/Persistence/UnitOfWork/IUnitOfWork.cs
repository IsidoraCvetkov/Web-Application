using System;
using WebApp.Persistence.Repository;

namespace WebApp.Persistence.UnitOfWork
{
    public interface IUnitOfWork : IDisposable
    {
        IPozicijaRepository Pozicije { get; set; }
        IBonusRepository Bonusi { get; set; }
        IRadnikRepository Radnici { get; set; }
        IPlataRepository Plata { get; set; }
        INadredjenRepository Nadredjeni { get; set; }
        IGodisnjiOdmorRepository GodisnjiOdmori { get; set; }
        IOdbitakRepository Odbitci { get; set; }
        int Complete();
    }
}