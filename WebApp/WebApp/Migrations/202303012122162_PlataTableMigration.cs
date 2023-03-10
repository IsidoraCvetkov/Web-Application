namespace WebApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class PlataTableMigration : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Platas",
                c => new
                    {
                        IdPlata = c.Int(nullable: false, identity: true),
                        RadnikId = c.Int(nullable: false),
                        PozicijaId = c.Int(nullable: false),
                        IznosPlate = c.Int(nullable: false),
                        DatumPromene = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.IdPlata)
                .ForeignKey("dbo.Pozicijas", t => t.PozicijaId, cascadeDelete: true)
                .ForeignKey("dbo.Radniks", t => t.RadnikId, cascadeDelete: false)
                .Index(t => t.RadnikId)
                .Index(t => t.PozicijaId);          
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Platas", "RadnikId", "dbo.Radniks");
            DropForeignKey("dbo.Platas", "PozicijaId", "dbo.Pozicijas");
            DropTable("dbo.Platas");
        }
    }
}
