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
