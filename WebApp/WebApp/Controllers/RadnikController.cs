using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using WebApp.DtoModels;
using WebApp.Models;
using WebApp.Persistence.UnitOfWork;

namespace WebApp.Controllers
{
    [Authorize]
    [RoutePrefix("api/radnik")]
    public class RadnikController : ApiController
    {
        private IUnitOfWork db;
        public RadnikController()
        {

        }
        public RadnikController(IUnitOfWork db)
        {
            this.db = db;
        }
        [AllowAnonymous]
        [Route("GetAllRadniks")]
        public IEnumerable<RadnikModel> GetAllRadniks()
        {
            List<Radnik> radnici = db.Radnici.GetAll().ToList();

            List<RadnikModel> returnValue = new List<RadnikModel>();

            foreach (Radnik r in radnici)
            {
                Nadredjen nadredjeni = db.Nadredjeni.GetAll().Where(nd => nd.IdNadredjen == r.NadredjenId).ToList().FirstOrDefault();

                RadnikModel rad = new RadnikModel()
                {
                    Ime = r.Ime,
                    Prezime = r.Prezime,
                    IdRadnik = r.IdRadnik,
                    NazivPozicije = db.Pozicije.GetAll().Where(po => po.IdPozicija == r.PozicijaId).ToList().FirstOrDefault().NazivPozicije,
                    PreiodRaspodele = r.PreiodRaspodele,
                    ImeNadredjenog = nadredjeni.Ime,
                    PrezimeNadredjenog = nadredjeni.Prezime
                };
                returnValue.Add(rad);
            }
            return returnValue;
        }
        [AllowAnonymous]
        [Route("GetRadnik")]
        public IHttpActionResult GetRadnik()
        {
            Radnik radnikFirst = db.Radnici.GetAll().ToList().FirstOrDefault();
            Nadredjen nadredjeni = db.Nadredjeni.GetAll().Where(nd => nd.IdNadredjen == radnikFirst.NadredjenId).ToList().FirstOrDefault();

            RadnikModel returnValue = new RadnikModel();

            returnValue.IdRadnik = radnikFirst.IdRadnik;
            returnValue.Ime = radnikFirst.Ime;
            returnValue.Prezime = radnikFirst.Prezime;
            returnValue.ImeNadredjenog = nadredjeni.Ime;
            returnValue.PrezimeNadredjenog = nadredjeni.Prezime;
            returnValue.IznosPlate = db.Platas.GetAll().Where(pl => pl.RadnikId == radnikFirst.IdRadnik).ToList().LastOrDefault().IznosPlate; 
            returnValue.PreiodRaspodele = radnikFirst.PreiodRaspodele;
            returnValue.BonusiAktivni = db.Bonusi.GetAll().Where(b => b.RadnikId == radnikFirst.IdRadnik).ToList();
            returnValue.OdbitciAktivni = db.Odbitci.GetAll().Where(o => o.RadnikId == radnikFirst.IdRadnik).ToList();
            returnValue.BrojDanaGodisnjegOdmora = db.GodisnjiOdmori.GetAll().Where(go => go.RadnikId == radnikFirst.IdRadnik).ToList().FirstOrDefault().BrojDana;
            returnValue.NazivPozicije = db.Pozicije.GetAll().Where(po => po.IdPozicija == radnikFirst.PozicijaId).ToList().FirstOrDefault().NazivPozicije;

            return Ok(returnValue);
        }
        [AllowAnonymous]
        [Route("GetRadnikId")]
        public IHttpActionResult GetRadnikId(int radnikId)
        {
            Radnik radnikFirst = db.Radnici.GetAll().Where(rad => rad.IdRadnik == radnikId).ToList().FirstOrDefault();
            Nadredjen nadredjeni = db.Nadredjeni.GetAll().Where(nd => nd.IdNadredjen == radnikFirst.NadredjenId).ToList().FirstOrDefault();

            RadnikModel returnValue = new RadnikModel();

            returnValue.IdRadnik = radnikFirst.IdRadnik;
            returnValue.Ime = radnikFirst.Ime;
            returnValue.Prezime = radnikFirst.Prezime;
            returnValue.ImeNadredjenog = nadredjeni.Ime;
            returnValue.PrezimeNadredjenog = nadredjeni.Prezime;
            returnValue.IznosPlate = db.Platas.GetAll().Where(pl => pl.RadnikId == radnikFirst.IdRadnik).ToList().LastOrDefault().IznosPlate;
            returnValue.PreiodRaspodele = radnikFirst.PreiodRaspodele;
            returnValue.BonusiAktivni = db.Bonusi.GetAll().Where(b => b.RadnikId == radnikFirst.IdRadnik).ToList();
            returnValue.OdbitciAktivni = db.Odbitci.GetAll().Where(o => o.RadnikId == radnikFirst.IdRadnik).ToList();
            returnValue.BrojDanaGodisnjegOdmora = db.GodisnjiOdmori.GetAll().Where(go => go.RadnikId == radnikFirst.IdRadnik).ToList().FirstOrDefault().BrojDana;
            returnValue.NazivPozicije = db.Pozicije.GetAll().Where(po => po.IdPozicija == radnikFirst.PozicijaId).ToList().FirstOrDefault().NazivPozicije;

            return Ok(returnValue);
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