using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using WebApp.DtoModels;
using WebApp.Models;
using WebApp.Persistence.UnitOfWork;

namespace WebApp.Controllers
{
    [Authorize]
    [RoutePrefix("api/plata")]
    public class PlataController : ApiController
    {
        private IUnitOfWork db;
        public PlataController()
        {

        }
        public PlataController(IUnitOfWork db)
        {
            this.db = db;
        }
        [AllowAnonymous]
        [Route("GetPlatas")]
        public IEnumerable<PlataModel> GetPlatas()
        {
            List<Plata> platas = db.Platas.GetAll().ToList();
            List<PlataModel> returnValue = new List<PlataModel>();

            foreach (Plata p in platas)
            {
                Radnik radnikFirst = db.Radnici.GetAll().Where(rd => rd.IdRadnik == p.RadnikId).ToList().FirstOrDefault();
                Pozicija pozicija = db.Pozicije.GetAll().Where(poz => poz.IdPozicija == p.PozicijaId).ToList().FirstOrDefault();
                PlataModel pl = new PlataModel()
                {
                        IdPlata = p.IdPlata,
                        IznosPlate = p.IznosPlate,
                        Ime = radnikFirst.Ime,
                        Prezime = radnikFirst.Prezime,
                        NazivPozicije = pozicija.NazivPozicije,                   
                        DatumPromene = p.DatumPromene
                };
                returnValue.Add(pl);
            }
            return returnValue;
        }

        [AllowAnonymous]
        [Route("GetAllPlatas")]
        public IEnumerable<Plata> GetAllPlatas()
        {
            List<Plata> platas = db.Platas.GetAll().ToList();
            List<Plata> returnValue = new List<Plata>();

            foreach (Plata p in platas)
            {
                Plata pl = new Plata()
                {
                    IdPlata = p.IdPlata,
                    IznosPlate = p.IznosPlate,
                    RadnikId = p.RadnikId,
                    Radnik = p.Radnik,
                    Pozicija = p.Pozicija,
                    PozicijaId = p.PozicijaId,
                    DatumPromene = p.DatumPromene
                };
                returnValue.Add(pl);
            }
            return returnValue;
        }
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}