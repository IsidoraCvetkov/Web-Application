using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WebApp.Models
{
    public class GodisnjiOdmor
    {
        [Key]
        public int IdGodisnjiOdmor { get; set; }
        [ForeignKey("Radnik")]
        public int RadnikId { get; set; }
        public Radnik Radnik { get; set; }
        public int BrojDana { get; set; }
    }
}