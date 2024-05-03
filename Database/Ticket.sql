/*
  public int TicketId { get; set; }
  public required DateTime TicketOpenDate { get; set; }
  public required DateTime TicketCloseDate { get; set; }
  public required Home Home { get; set; }
  public List<Step> Steps { get; } = [];
  public List<Role> Roles { get; } = [];
*/
CREATE TABLE [dbo].[Ticket]
(
  [TicketId] INT NOT NULL PRIMARY KEY,
  [TicketOpenDate] DATETIME NOT NULL,
  [TicketCloseDate] DATETIME NOT NULL,
  [HomeId] INT NOT NULL,
  FOREIGN KEY ([HomeId]) REFERENCES [dbo].[Home]([HomeId]),
  [StepId] INT NOT NULL,
  FOREIGN KEY ([StepId]) REFERENCES [dbo].[Step]([StepId]),
  [RoleId] INT NOT NULL,
  FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Role]([RoleId]) 
)
