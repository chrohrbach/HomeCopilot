namespace API.Models;

public class Role
{
    public int RoleId { get; set; }
    public required string RoleCode { get; set; }
    public string? RoleInfo { get; set; }
    public required Ticket RoleTicket { get; set; }
    public required Person RolePerson { get; set; }

}
