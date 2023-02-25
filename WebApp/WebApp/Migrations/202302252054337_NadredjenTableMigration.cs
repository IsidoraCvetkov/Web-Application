namespace WebApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class NadredjenTableMigration : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Nadredjens",
                c => new
                    {
                        IdNadredjen = c.Int(nullable: false, identity: true),
                        Ime = c.String(),
                        Prezime = c.String(),
                    })
                .PrimaryKey(t => t.IdNadredjen);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Nadredjens");
        }
    }
}
