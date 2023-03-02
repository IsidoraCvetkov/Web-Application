using System;
using System.Collections.Generic;
using WebApp.Models;

namespace WebApp.DtoModels
{
    public class RadnikModel
    {
        public int IdRadnik { get; set; }
        public string Ime { get; set; }
        public string Prezime { get; set; }
        public string ImeNadredjenog { get; set; }
        public string PrezimeNadredjenog { get; set; }
        public string NazivPozicije { get; set; }
        public DateTime PreiodRaspodele { get; set; }
        public int IznosPlate { get; set; }
        public List<Bonus> BonusiAktivni { get; set; }
        public List<Odbitak> OdbitciAktivni { get; set; }
        public int BrojDanaGodisnjegOdmora { get; set; }
    }
}