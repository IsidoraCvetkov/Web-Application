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
    [RoutePrefix("api/pozicija")]
    public class PozicijaController : ApiController
    {
        private IUnitOfWork db;
        public PozicijaController()
        {

        }
        public PozicijaController(IUnitOfWork db)
        {
            this.db = db;
        }
        [AllowAnonymous]
        [Route("GetAllPozicijas")]
        public IEnumerable<Pozicija> GetAllPozicijas()
        {
            List<Pozicija> pozicije = db.Pozicije.GetAll().ToList();
            List<Pozicija> returnValue = new List<Pozicija>();

            foreach (Pozicija p in pozicije)
            {
                Pozicija poz = new Pozicija()
                {
                    NazivPozicije = p.NazivPozicije,
                    IdPozicija = p.IdPozicija
                };
                returnValue.Add(poz);
            }
            return returnValue;
        }
        [AllowAnonymous]
        [Route("AddPozicija")]
        public IHttpActionResult AddPozicija(PozicijaModel pozicijaAdd)
        {
            Pozicija pozicija = db.Pozicije.GetAll().FirstOrDefault(u => u.NazivPozicije == pozicijaAdd.NazivPozicije);
            Pozicija newPozicija;

            if (pozicija != null)
            {
                return Ok("Pozicija sa ovim nazivom vec postoji.");
            }
            else
            {
                newPozicija = new Pozicija() { NazivPozicije = pozicijaAdd.NazivPozicije };

                db.Pozicije.Add(newPozicija);
                try
                {
                    db.Complete();
                }
                catch (Exception ex)
                {
                    return Ok(ex.Message);
                }
            }
            List<Pozicija> pozicije = db.Pozicije.GetAll().ToList();

            return Ok(pozicije);
        }

        [AllowAnonymous]
        [Route("EditPozicija")]
        public IHttpActionResult EditPozicija(PozicijaModel pozicijaEdit)
        {
            int result = 1;
            Pozicija pozicija = db.Pozicije.GetAll().FirstOrDefault(po => po.IdPozicija == pozicijaEdit.IdPozicija);

            if (pozicija == null)
            {
                return Ok("Pozicija ne moze biti promenjena.");
            }
            else
            {
                if (pozicija.IdPozicija != pozicijaEdit.IdPozicija)
                {
                    return Ok("Podaci su promenjeni u medjuvremenu, pokusajte opet!");
                }

                pozicija.NazivPozicije = pozicijaEdit.NazivPozicije;

                db.Pozicije.Update(pozicija);
                result = db.Complete();

                if (result == 0)
                {
                    return Ok("Conflict");
                }
                else if (result == -1)
                {
                    return Ok("Podaci su promenjeni u medjuvremenu, pokusajte opet!");
                }
            }
            List<Pozicija> pozicije = db.Pozicije.GetAll().ToList();
            return Ok(pozicije);
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