CREATE TABLE [dbo].[Homes]
(

  [homeId] INT PRIMARY KEY,
  [homeTitle] NVARCHAR(100) NOT NULL,
  [homeDescription] NVARCHAR(255) NOT NULL,
  [homeSurfaceM2] INT DEFAULT 50,
  [homeRooms] FLOAT DEFAULT 2,
  [homeIsHouse] BIT,
  [homeImageURL] NVARCHAR(255),

  [homeAddressStreet] NVARCHAR(199),
  [homeAddressStreetExt] NVARCHAR(100),
  [homeAddressPostCode] NVARCHAR(8),
  [homeAddressCity] NVARCHAR(100),
  [homeAddressCountry] NVARCHAR(50),
  [homeAddressRegion] NVARCHAR(50),

  [homeLandlordId] INT,
  FOREIGN KEY ([homeLandlordId]) REFERENCES [dbo].[Persons]([personId])
  
)

