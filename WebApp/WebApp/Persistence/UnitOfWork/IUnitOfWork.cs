using System;
using WebApp.Persistence.Repository;

namespace WebApp.Persistence.UnitOfWork
{
    public interface IUnitOfWork : IDisposable
    {
        IPozicijaRepository Pozicije { get; set; }
        int Complete();
    }
}