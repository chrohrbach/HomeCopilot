namespace API.Models;

public class Home
{
    public int HomeId { get; set; }
    public required string HomeTitle { get; set; }
    public required string HomeDescription { get; set; }
    public int HomeSurfaceM2 { get; set; }
    public float HomeRooms { get; set; }
    public bool HomeIsHouse { get; set; }
    public string? HomeImageURL { get; set; }
    public required string HomeAddressStreet { get; set; }
    public string? HomeAddressStreetExt { get; set; }
    public required string HomeAddressZipCode { get; set; }
    public required string HomeAddressCity { get; set; }
    public required string HomeAddressCountry { get; set; }
    public string? HomeAddressRegion { get; set; }
    public Person? HomeLandlord { get; set; }
}
