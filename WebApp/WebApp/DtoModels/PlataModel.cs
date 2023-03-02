using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApp.Models;

namespace WebApp.DtoModels
{
    public class PlataModel
    {
        public int IdPlata { get; set; }
        public string Ime { get; set; }
        public string Prezime { get; set; }
        public string NazivPozicije { get; set; }
        public int IznosPlate { get; set; }
        public DateTime DatumPromene { get; set; }
    }
}