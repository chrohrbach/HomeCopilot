/*
  public int ActorId { get; set; }
  public required Person Person { get; set; }
  public List<Role> Roles { get; set; } = [];
*/

CREATE TABLE [dbo].[Actor]
(
  [ActorId] INT NOT NULL PRIMARY KEY,
  [PersonId] INT NOT NULL,
  FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person]([PersonId]),

)
