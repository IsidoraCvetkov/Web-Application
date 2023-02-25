using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WebApp.Models
{
    public class Odbitak
    {
        [Key]
        public int IdOdbitak { get; set; }
        [ForeignKey("Radnik")]
        public int RadnikId { get; set; }
        public Radnik Radnik { get; set; }
        public int IznosOdbitka { get; set; }
    }
}