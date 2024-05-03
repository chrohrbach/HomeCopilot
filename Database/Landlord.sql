/*
  public int LandlordId { get; set; }
  public required Person Person { get; set; }
  public string? Name { get; set; }
  public List<Home> Homes { get; set; } = [];
*/
        
CREATE TABLE [dbo].[Landlord]
(
  [LandlordId] INT NOT NULL PRIMARY KEY,
  [PersonId] INT NOT NULL,
  FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person]([PersonId]),
  [Name] NVARCHAR(100),
  [HomeId] INT NOT NULL,
  FOREIGN KEY ([HomeId]) REFERENCES [dbo].[Home]([HomeId])
)
