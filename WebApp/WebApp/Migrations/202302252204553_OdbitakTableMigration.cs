namespace WebApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class OdbitakTableMigration : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Odbitaks",
                c => new
                    {
                        IdOdbitak = c.Int(nullable: false, identity: true),
                        RadnikId = c.Int(nullable: false),
                        IznosOdbitka = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IdOdbitak)
                .ForeignKey("dbo.Radniks", t => t.RadnikId, cascadeDelete: true)
                .Index(t => t.RadnikId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Odbitaks", "RadnikId", "dbo.Radniks");
            DropIndex("dbo.Odbitaks", new[] { "RadnikId" });
            DropTable("dbo.Odbitaks");
        }
    }
}
