
using System.ComponentModel.DataAnnotations.Schema;

namespace Homes.Shared.Models
{

    [ComplexType]
    public class Email
    {
        public required string Address { get; set; }
        public bool IsValid { get; set; } = false;

    }
}
