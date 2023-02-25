namespace WebApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class GodisnjiOdmorTableMigration : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.GodisnjiOdmors",
                c => new
                    {
                        IdGodisnjiOdmor = c.Int(nullable: false, identity: true),
                        RadnikId = c.Int(nullable: false),
                        BrojDana = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IdGodisnjiOdmor)
                .ForeignKey("dbo.Radniks", t => t.RadnikId, cascadeDelete: true)
                .Index(t => t.RadnikId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.GodisnjiOdmors", "RadnikId", "dbo.Radniks");
            DropIndex("dbo.GodisnjiOdmors", new[] { "RadnikId" });
            DropTable("dbo.GodisnjiOdmors");
        }
    }
}
