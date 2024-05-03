/*
      public required string Address { get; set; }
      public bool IsValid { get; set; } = false;
*/
CREATE TABLE [dbo].[Email]
(
  [EmailId] INT NOT NULL PRIMARY KEY,
  [Address] NVARCHAR(150) NOT NULL,
  [IsValid] BIT NOT NULL
)
