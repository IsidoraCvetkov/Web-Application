using System.Web.Http;
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