CREATE TABLE [dbo].[Roles]
(

  [roleCode] NVARCHAR(10) NOT NULL,
  [roleInfo] NVARCHAR(255),
  [roleTicketId] INT NOT NULL,
  FOREIGN KEY ([roleTicketId]) REFERENCES [dbo].[Tickets]([ticketId]) ON DELETE CASCADE,
  [rolePersonId] INT NOT NULL,
  FOREIGN KEY ([rolePersonId]) REFERENCES [dbo].[Persons]([personId]) ON DELETE CASCADE,
  PRIMARY KEY ([roleTicketId], [roleCode])

)
