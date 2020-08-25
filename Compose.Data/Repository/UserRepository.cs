using Compose.Data.Context;
using Compose.Domain.Entity;
using Compose.Domain.Repository;
using Dapper;
using System.Collections.Generic;

namespace Compose.Data.Repository
{
    public class UserRepository : IUserRepository
    {
        private readonly ComposeContext _composeContext;

        public UserRepository(ComposeContext composeContext)
        {
            _composeContext = composeContext;
        }

        public IEnumerable<User> GetUsers()
        {
            var querie = "SELECT Id, Name, Age, Email, RegistrationDate FROM Users ORDER BY RegistrationDate DESC";

            var users = _composeContext.Connection.Query<User>(querie, new { });

            return users;
        }
    }
}
