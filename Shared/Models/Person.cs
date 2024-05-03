
using System.ComponentModel.DataAnnotations.Schema;

namespace Homes.Shared.Models
{

    [ComplexType]
    public class Person
    {

        public string? Title { get; set; }
        public required string FirstName { get; set; }
        public required string LastName { get; set; }
        public required Address Address { get; set; }
        public required Phone Phone { get; set; }
        public required Email Email { get; set; }
        public bool IsValid { get; set; } = false;

    }

}
