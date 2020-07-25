using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace jobportalservice
{
    [DataContract]
    public class JobApplication
    {
        
        
            string userName;
            int jobid;
            int Id;
            string companyname;
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
        public int Jobid
        {
            get
            {
                return jobid;
            }
            set
            {
                jobid = value;
            }
        }

        [DataMember]
            public string Companyname
            {
                get
                {
                    return companyname;
                }
                set
                {
                    companyname = value;
                }
            }
        }
}
