using System.ComponentModel.DataAnnotations;

namespace WebApp.Models
{
    public class Nadredjen
    {
        [Key]
        public int IdNadredjen { get; set; }
        public string Ime { get; set; }
        public string Prezime { get; set; }
    }
}