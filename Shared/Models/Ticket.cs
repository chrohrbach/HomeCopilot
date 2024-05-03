namespace Homes.Shared.Models
{
    public class Ticket
    {
        public int TicketId { get; set; }
        public required DateTime TicketOpenDate { get; set; }
        public required DateTime TicketCloseDate { get; set; }
        public required Home Home { get; set; }
        public List<Step> Steps { get; } = [];
        public List<Role> Roles { get; } = [];

    }
}
