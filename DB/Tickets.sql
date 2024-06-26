CREATE TABLE [dbo].[tickets]
(

  [ticketId]            INT           IDENTITY(1,1) PRIMARY KEY NOT NULL,
  [ticketOpenDate]      DATETIME      NOT NULL,
  [ticketCloseDate]     DATETIME,
  [ticketHomeId]        INT           NOT NULL,
  FOREIGN KEY ([ticketHomeId]) REFERENCES [dbo].[homes]([homeId]) ON DELETE CASCADE

)