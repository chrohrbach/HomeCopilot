/*
  public string? Title { get; set; }
  public required string FirstName { get; set; }
  public required string LastName { get; set; }
  public required Address Address { get; set; }
  public required Phone Phone { get; set; }
  public required Email Email { get; set; }
  public bool IsValid { get; set; } = false;
*/

CREATE TABLE [dbo].[Person]
(
  [PersonId] INT NOT NULL PRIMARY KEY,
  [Title] NVARCHAR(50),
  [FirstName] NVARCHAR(50) NOT NULL,
  [LastName] NVARCHAR(50) NOT NULL,
  [AddressId] INT NOT NULL,
  FOREIGN KEY ([AddressId]) REFERENCES [dbo].[Address]([AddressId]),
  [PhoneId] INT NOT NULL,
  FOREIGN KEY ([PhoneId]) REFERENCES [dbo].[Phone]([PhoneId]),
  [EmailId] INT NOT NULL,
  FOREIGN KEY ([EmailId]) REFERENCES [dbo].[Email]([EmailId]),
  [IsValid] BIT NOT NULL
)
