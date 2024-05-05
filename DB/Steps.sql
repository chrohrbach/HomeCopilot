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
