CREATE TABLE [dbo].[persons]
(

  [personId] INT IDENTITY(1,1) PRIMARY KEY,
  [personTitle] NVARCHAR(30),
  [personFirstName] NVARCHAR(50) NOT NULL,
  [personLastName] NVARCHAR(50) NOT NULL,

  [personAddressStreet] NVARCHAR(199),
  [personAddressStreetExt] NVARCHAR(100),
  [personAddressPostCode] NVARCHAR(8),
  [PersonAddressCity] NVARCHAR(100),
  [personAddressCountry] NVARCHAR(50),
  [personAddressRegion] NVARCHAR(50),
  [personAddressIsValid] BIT,

  [personPhoneNumber] NVARCHAR(50),
  [personPhoneNumberIsValid] BIT,

  [personEmailAddress] NVARCHAR(100) NOT NULL,
  [personEmailAddressIsValid] BIT

)

GO

CREATE TABLE [dbo].[homes]
(

  [homeId] INT IDENTITY(1,1) PRIMARY KEY,
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
  FOREIGN KEY ([homeLandlordId]) REFERENCES [dbo].[persons]([personId])
  
)

GO

CREATE TABLE [dbo].[tickets]
(

  [ticketId] INT IDENTITY(1,1) PRIMARY KEY,
  [ticketOpenDate] DATETIME NOT NULL,
  [ticketCloseDate] DATETIME,
  [ticketHomeId] INT UNIQUE NOT NULL,
  FOREIGN KEY ([ticketHomeId]) REFERENCES [dbo].[homes]([homeId]) ON DELETE CASCADE

)

GO

CREATE TABLE [dbo].[steps]
(
  
  [stepId] INT IDENTITY(1,1) PRIMARY KEY,
  [stepTitle] NVARCHAR(100) NOT NULL,
  [stepInfo] NVARCHAR(255),
  [stepExecuted] BIT,
  [stepStartDate] DATETIME,
  [stepDeadlineDate] DATETIME,
  [stepTicketId] INT UNIQUE NOT NULL,
  FOREIGN KEY ([stepTicketId]) REFERENCES [dbo].[tickets]([ticketId]) ON DELETE CASCADE

)

GO

CREATE TABLE [dbo].[roles]
(

  [roleCode] NVARCHAR(10) NOT NULL,
  [roleInfo] NVARCHAR(255),
  [roleTicketId] INT NOT NULL,
  FOREIGN KEY ([roleTicketId]) REFERENCES [dbo].[tickets]([ticketId]) ON DELETE CASCADE,
  [rolePersonId] INT NOT NULL,
  FOREIGN KEY ([rolePersonId]) REFERENCES [dbo].[persons]([personId]) ON DELETE CASCADE,
  PRIMARY KEY ([roleTicketId], [roleCode])

)

GO