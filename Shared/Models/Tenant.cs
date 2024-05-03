namespace Homes.Shared.Models
{
    public class Tenant
    {
        public int TenantId { get; set; }
        public required Person Person { get; set; }
        public string? Description { get; set; }
        public int FamillyMembers { get; set; }

        //public int StepId { get; set; }
        public List<Step> Steps { get; set; } = [];
    }
}
