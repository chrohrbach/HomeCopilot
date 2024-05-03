using System.ComponentModel.DataAnnotations.Schema;

namespace Homes.Shared.Models
{
    public class Landlord
    {
        public int LandlordId { get; set; }
        public required Person Person { get; set; }
        public string? Name { get; set; }
        public List<Home> Homes { get; set; } = [];

    }
}
