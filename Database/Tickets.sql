CREATE TABLE [dbo].[Tickets]
(

  [ticketId] INT PRIMARY KEY,
  [ticketOpenDate] DATETIME NOT NULL,
  [ticketCloseDate] DATETIME,
  [ticketHomeId] INT UNIQUE NOT NULL,
  FOREIGN KEY ([ticketHomeId]) REFERENCES [dbo].[Homes]([homeId]) ON DELETE CASCADE

)
