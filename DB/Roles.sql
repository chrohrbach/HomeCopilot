CREATE TABLE [dbo].[roles]
(

  [roleCode]                NVARCHAR(10)          NOT NULL,
  [roleInfo]                NVARCHAR(255),
  
  [roleTicketId]            INT                   NOT NULL,
  FOREIGN KEY ([roleTicketId]) REFERENCES [dbo].[tickets]([ticketId]) ON DELETE CASCADE,
  [rolePersonId]            INT                   NOT NULL,
  FOREIGN KEY ([rolePersonId]) REFERENCES [dbo].[persons]([personId]) ON DELETE CASCADE,
  
  PRIMARY KEY ([roleTicketId], [roleCode])

)