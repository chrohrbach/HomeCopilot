/*
  public int RoleId { get; set; }
  public required Actor Actor { get; set; }
  public required string RoleName { get; set; }
  public string? RoleDescription { get; set; }
  public int TicketId { get; set; }
  public required Ticket Ticket { get; set; }
*/

CREATE TABLE [dbo].[Role]
(
  [RoleId] INT NOT NULL PRIMARY KEY,
  [ActorId] INT NOT NULL,
  FOREIGN KEY ([ActorId]) REFERENCES [dbo].[Actor]([ActorId]),
  [RoleName] NVARCHAR(100) NOT NULL,
  [RoleDescription] NVARCHAR(255),
  [TicketId] INT NOT NULL,
  FOREIGN KEY ([TicketId]) REFERENCES [dbo].[Ticket]([TicketId])
)
