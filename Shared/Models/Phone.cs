
using System.ComponentModel.DataAnnotations.Schema;

namespace Homes.Shared.Models
{

    [ComplexType]
    public class Phone
    {
        public required string Number { get; set; }
        public bool IsValid { get; set; } = false;
    }

}
