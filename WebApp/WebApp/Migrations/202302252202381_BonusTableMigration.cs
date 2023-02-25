namespace WebApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class BonusTableMigration : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Bonus",
                c => new
                    {
                        IdBonus = c.Int(nullable: false, identity: true),
                        RadnikId = c.Int(nullable: false),
                        IznosBonusa = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IdBonus)
                .ForeignKey("dbo.Radniks", t => t.RadnikId, cascadeDelete: true)
                .Index(t => t.RadnikId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Bonus", "RadnikId", "dbo.Radniks");
            DropIndex("dbo.Bonus", new[] { "RadnikId" });
            DropTable("dbo.Bonus");
        }
    }
}
