using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace jobportalservice
{
    [DataContract]
    public class User
    {
        //[DataMember]
        //public int UserId { get; set; }

        string userName { get; set; }

        string password { get; set; }

        string email { get; set; }
        string role { get; set; }
    string contact { get; set; }


        [DataMember]
        public string UserName
        {
            get
            {
                return userName;
            }
            set
            {
                userName = value;
            }
        }

     

        [DataMember]
        public string Password
        {
            get
            {
                return password;
            }
            set
            {
                password= value;
            }
        }
        [DataMember]
        public string Contact
        {
            get
            {
                return contact;
            }
            set
            {
                contact= value;
            }
        }
        [DataMember]
        public string Role
        {
            get
            {
                return role;
            }
            set
            {
                role = value;
            }
        }
        [DataMember]
        public string Email
        {
            get
            {
                return email;
            }
            set
            {
                email = value;
            }
        }
    }
}
