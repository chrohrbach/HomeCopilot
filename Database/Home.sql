/*
  public int HomeId { get; set; }
  public required string Name { get; set; } 
  public required string Description { get; set; } 
  public required int M2 { get; set; } 
  public required Address Address { get; set; }
  public required Landlord Landlord { get; set; }

  public double? Rooms { get; set; } 
  public bool? IsHouse { get; set; }
  public string? ImageURL { get; set; }

  public List<Ticket> Tickets { get; set; } = [];
*/
        
CREATE TABLE [dbo].[Home]
(
  [HomeId] INT NOT NULL PRIMARY KEY,
  [Name] NVARCHAR(100) NOT NULL,
  [Description] NVARCHAR(255) NOT NULL,
  [M2] INT NOT NULL,
  [AddressId] INT NOT NULL,
  FOREIGN KEY ([AddressId]) REFERENCES [dbo].[Address]([AddressId]),
  [LandlordId] INT NOT NULL,
  FOREIGN KEY ([LandlordId]) REFERENCES [dbo].[Landlord]([LandlordId]),
  [Rooms] FLOAT,
  [IsHouse] BIT,
  [ImageURL] NVARCHAR(255),
  [TicketId] INT NOT NULL,
  FOREIGN KEY ([TicketId]) REFERENCES [dbo].[Ticket]([TicketId])
)
