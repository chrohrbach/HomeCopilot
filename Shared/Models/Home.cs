
namespace Homes.Shared.Models
{
    public class Home
    {
        public int HomeId { get; set; }
        public required string Name { get; set; } 
        public required string Description { get; set; } 
        public required int M2 { get; set; } 
        public required Address Address { get; set; }
        public required Landlord Landlord { get; set; }

        public double? Rooms { get; set; } 
        public bool? IsHouse { get; set; }
        public string? ImageURL { get; set; }

        public List<Ticket> Tickets { get; set; } = [];

    }

}
    