using AdminUI.Models.Northwind;

namespace AdminUI.Northwind
{
    public interface INorthwindService
    {
        Task<List<EmployeesType>> GetEmployees();
    }
}
