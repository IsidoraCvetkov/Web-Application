using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WebApp.Models
{
    public class Radnik
    {
        [Key]
        public int IdRadnik { get; set; }
        [ForeignKey("Nadredjen")]
        public int NadredjenId { get; set; }
        public Nadredjen Nadredjen { get; set; }
        [ForeignKey("Pozicija")]
        public int PozicijaId { get; set; }
        public Pozicija Pozicija { get; set; }
        public string Ime { get; set; }
        public string Prezime { get; set; }
        public DateTime PreiodRaspodele { get; set; }
    }
}