
namespace Homes.Shared.Models
{
    public class Actor
    {
        public int ActorId { get; set; }
        public required Person Person { get; set; }
        public List<Role> Roles { get; set; } = [];
    }
}
