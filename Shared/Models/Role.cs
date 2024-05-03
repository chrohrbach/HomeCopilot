namespace Homes.Shared.Models
{
    public class Role
    {
        public int RoleId { get; set; }
        public required Actor Actor { get; set; }
        public required string RoleName { get; set; }
        public string? RoleDescription { get; set; }
        public int TicketId { get; set; }
        public required Ticket Ticket { get; set; }

    }
}
