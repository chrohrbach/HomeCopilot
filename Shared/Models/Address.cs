using System.ComponentModel.DataAnnotations.Schema;

namespace Homes.Shared.Models
{
        
    [ComplexType]
    public class Address
    {
        public required string Street { get; set; }
        public string? StreetExt { get; set; }
        public required string PostCode { get; set; }
        public required string City { get; set; }
        public required string Country { get; set; }
        public string? Region { get; set; }
        public double? Latitude { get; set; }
        public double? Longitude { get; set; }
        public bool IsValid { get; set; } = false;

    }
}
