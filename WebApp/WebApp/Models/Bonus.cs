using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WebApp.Models
{
    public class Bonus
    {
        [Key]
        public int IdBonus { get; set; }
        [ForeignKey("Radnik")]
        public int RadnikId { get; set; }
        public Radnik Radnik { get; set; }
        public int IznosBonusa { get; set; }
    }
}