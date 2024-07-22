namespace API.Models;

public class Step
{
    public int StepId { get; set; }
    public required string StepTitle { get; set; }
    public string? StepInfo { get; set; }
    public bool StepExecuted { get; set; }
    public DateTime? StepStartDate { get; set; }
    public DateTime? StepDeadlineDate { get; set; }
    public required Ticket StepTicket { get; set; }

}
