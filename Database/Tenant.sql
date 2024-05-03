/*
  public int TenantId { get; set; }
  public required Person Person { get; set; }
  public string? Description { get; set; }
  public int FamillyMembers { get; set; }

  //public int StepId { get; set; }
  public List<Step> Steps { get; set; } = [];
*/
CREATE TABLE [dbo].[Tenant]
(
  [TenantId] INT NOT NULL PRIMARY KEY,
  [PersonId] INT NOT NULL,
  FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person]([PersonId]),
  [Description] NVARCHAR(255),
  [FamillyMembers] INT NOT NULL,
  [StepId] INT NOT NULL,
  FOREIGN KEY ([StepId]) REFERENCES [dbo].[Step]([StepId])
)
