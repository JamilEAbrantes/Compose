using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
//---------------------------------
using Dapper;
using Compose.Domain.Entity;
using Compose.Domain.Repository;

namespace Compose.App.Controllers
{
    public class UserContext : Controller
    {
        private readonly IUserRepository _userRepository;

        public UserContext(IUserRepository userRepository)
        {
            _userRepository = userRepository;
        }

        [HttpGet]
        [Route("v1/users")]
        public IEnumerable<User> Users()
        {
            return _userRepository.GetUsers();
        }        
    }
}