/*
  public int StepId { get; set; }
  public required string Name { get; set; }
  public required DateTime StartDate { get; set; }   
  public required bool Open { get; set; }
  public DateTime? DeadlineDate { get; set; }
  public string? Description { get; set; }

  /// <summary>
  /// public int TenantId { get; set; }
  /// </summary>
  public required Tenant Tenant { get; set; }
  //public int TicketId { get; set; }
  public required Ticket Ticket { get; set; }
*/
CREATE TABLE [dbo].[Step]
(
  [StepId] INT NOT NULL PRIMARY KEY,
  [Name] NVARCHAR(100) NOT NULL,
  [StartDate] DATETIME NOT NULL,
  [Open] BIT NOT NULL,
  [DeadlineDate] DATETIME,
  [Description] NVARCHAR(255),
  [TenantId] INT NOT NULL,
  FOREIGN KEY ([TenantId]) REFERENCES [dbo].[Tenant]([TenantId]),
  [TicketId] INT NOT NULL,
  FOREIGN KEY ([TicketId]) REFERENCES [dbo].[Ticket]([TicketId])
)
