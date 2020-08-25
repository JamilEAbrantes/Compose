using System;

namespace Compose.Domain.Entity
{
    public class User
    {
        public User()
        {

        }

        public Guid Id { get; set; }
        public string Name { get; set; }
        public int Age { get; set; }
        public string Email { get; set; }
        public DateTime RegistrationDate { get; set; }
    }
}
