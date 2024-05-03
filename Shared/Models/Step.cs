namespace Homes.Shared.Models
{
    public class Step
    {
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


    }
}
