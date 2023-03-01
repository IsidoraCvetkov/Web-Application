using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
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
        [AllowAnonymous]
        [Route("GetAllPlatas")]
        public IEnumerable<Plata> GetLines()
        {
            List<Plata> lines = db.Plata.GetAll().ToList();
            List<Plata> ret = new List<Plata>();

            foreach (Plata l in lines)
            {
                Plata lp = new Plata() { IdPlata = l.IdPlata,
                                         IznosPlate = l.IznosPlate,
                                         RadnikId = l.RadnikId,
                                         Pozicija = l.Pozicija,
                                         DatumPromene = l.DatumPromene };
                ret.Add(lp);
            }
            return ret;
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