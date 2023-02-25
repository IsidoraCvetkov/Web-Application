namespace WebApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class RadnikTableMigration : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Radniks",
                c => new
                    {
                        IdRadnik = c.Int(nullable: false, identity: true),
                        NadredjenId = c.Int(nullable: false),
                        PozicijaId = c.Int(nullable: false),
                        Ime = c.String(),
                        Prezime = c.String(),
                        PreiodRaspodele = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.IdRadnik)
                .ForeignKey("dbo.Nadredjens", t => t.NadredjenId, cascadeDelete: true)
                .ForeignKey("dbo.Pozicijas", t => t.PozicijaId, cascadeDelete: true)
                .Index(t => t.NadredjenId)
                .Index(t => t.PozicijaId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Radniks", "PozicijaId", "dbo.Pozicijas");
            DropForeignKey("dbo.Radniks", "NadredjenId", "dbo.Nadredjens");
            DropIndex("dbo.Radniks", new[] { "PozicijaId" });
            DropIndex("dbo.Radniks", new[] { "NadredjenId" });
            DropTable("dbo.Radniks");
        }
    }
}
