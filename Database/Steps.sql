CREATE TABLE [dbo].[Steps]
(
  
  [stepId] INT PRIMARY KEY,
  [stepTitle] NVARCHAR(100) NOT NULL,
  [stepInfo] NVARCHAR(255),
  [stepExecuted] BIT,
  [stepStartDate] DATETIME,
  [stepDeadlineDate] DATETIME,
  [stepTicketId] INT UNIQUE,
  FOREIGN KEY ([stepTicketId]) REFERENCES [dbo].[Tickets]([ticketId]) ON DELETE CASCADE

)
