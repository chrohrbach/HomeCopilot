CREATE TABLE [dbo].[steps]
(
  
  [stepId]                    INT                 IDENTITY(1,1) PRIMARY KEY NOT NULL,
  [stepTitle]                 NVARCHAR(100)       NOT NULL,
  [stepInfo]                  NVARCHAR(255),
  [stepExecuted]              BIT                 CONSTRAINT [stepExecuted] DEFAULT 0 NOT NULL,
  [stepStartDate]             DATETIME,
  [stepDeadlineDate]          DATETIME,
  [stepTicketId]              INT                 NOT NULL,
  FOREIGN KEY ([stepTicketId]) REFERENCES [dbo].[tickets]([ticketId]) ON DELETE CASCADE

)
