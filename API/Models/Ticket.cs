namespace API.Models;

public class Ticket
{
    public int TicketId { get; set; }
    public DateTime TicketOpenDate { get; set; }
    public DateTime? TicketCloseDate { get; set; }
    public required Home TicketHome { get; set; }
}
