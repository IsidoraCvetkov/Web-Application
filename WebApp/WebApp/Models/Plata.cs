using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WebApp.Models
{
    public class Plata
    {
        [Key]
        public int IdRadnik { get; set; }
        [ForeignKey("Radnik")]
        public int RadnikId { get; set; }
        public Radnik Radnik { get; set; }
        [ForeignKey("Pozicija")]
        public int PozicijaId { get; set; }
        public Pozicija Pozicija { get; set; }
        public int IznosPlate { get; set; }
        public DateTime DatumPromene { get; set; }
    }
}