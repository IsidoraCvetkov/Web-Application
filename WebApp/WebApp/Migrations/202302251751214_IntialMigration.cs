namespace WebApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class IntialMigration : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Pozicijas",
                c => new
                    {
                        IdPozicija = c.Int(nullable: false, identity: true),
                        NazivPozicije = c.String(),
                    })
                .PrimaryKey(t => t.IdPozicija);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Pozicijas");
        }
    }
}
