using Compose.Domain.Entity;
using System.Collections.Generic;

namespace Compose.Domain.Repository
{
    public interface IUserRepository
    {
        IEnumerable<User> GetUsers();
    }
}