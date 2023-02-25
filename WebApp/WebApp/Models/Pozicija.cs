using System.ComponentModel.DataAnnotations;

namespace WebApp.Models
{
    public class Pozicija
    {
        [Key]
        public int IdPozicija { get; set; }
        public string NazivPozicije { get; set; }
    }
}