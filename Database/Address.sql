/*
  public int AddressId { get; set; }
  public required string Street { get; set; }
  public string? StreetExt { get; set; }
  public required string PostCode { get; set; }
  public required string City { get; set; }
  public required string Country { get; set; }
  public string? Region { get; set; }
  public double? Latitude { get; set; }
  public double? Longitude { get; set; }
  public bool IsValid { get; set; } = false;
*/

CREATE TABLE [dbo].[Address]
(
  [AddressId] INT NOT NULL PRIMARY KEY,
  [Street] NVARCHAR(199) NOT NULL,
  [StreetExt] NVARCHAR(100),
  [PostCode] NVARCHAR(8) NOT NULL,
  [City] NVARCHAR(100) NOT NULL,
  [Country] NVARCHAR(50) NOT NULL,
  [Region] NVARCHAR(50),
  [Latitude] FLOAT,
  [Longitude] FLOAT,
  [IsValid] BIT NOT NULL
)
