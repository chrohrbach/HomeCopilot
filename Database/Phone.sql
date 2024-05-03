/*
  public required string Number { get; set; }
  public bool IsValid { get; set; } = false;
*/

CREATE TABLE [dbo].[Phone]
(
  [PhoneId] INT NOT NULL PRIMARY KEY,
  [Number] NVARCHAR(50) NOT NULL,
  [IsValid] BIT NOT NULL
)
