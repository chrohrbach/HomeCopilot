namespace API.Models;

public class Person
{

    public int PersonId { get; set; }
    public string? PersonTitle { get; set; }
    public required string PersonFirstName { get; set; }
    public required string PersonLastName { get; set; }
    public string? PersonAddressStreet { get; set; }
    public string? PersonAddressStreetExt { get; set; }
    public string? PersonAddressZipCode { get; set; }
    public string? PersonAddressCity { get; set; }
    public required string PersonAddressCountry { get; set; }
    public string? PersonAddressRegion { get; set; }
    public bool PersonAddressIsValid { get; set; }
    public string? PersonPhoneNumber { get; set; }
    public bool PersonPhoneNumberIsValid { get; set; }
    public required string PersonEmailAddress { get; set; }
    public bool PersonEmailAddressIsValid { get; set; }

    public List<Home>? PersonHomes { get; set; }
    public List<Role>? PersonRoles { get; set; }

}
