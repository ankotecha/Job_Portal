using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace jobportalservice
{
    public class CompanyDetails
    {
        string name = string.Empty;
        string postname = string.Empty;
        int vacancy = 0;// string.Empty;
        string qualification = string.Empty;
        string jobid = string.Empty;
        string descripiton = string.Empty;
        string salary = string.Empty;

        [DataMember]
        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        [DataMember]
        public string Postname
        {
            get { return postname; }
            set { postname = value; }
        }
        [DataMember]
        public string Qualification
        {
            get { return qualification; }
            set { qualification = value; }
        }
        [DataMember]
        public string Description
        {
            get { return descripiton; }
            set { descripiton = value; }
        }
        [DataMember]
        public string Salary
        {
            get { return salary; }
            set { salary = value; }
        }
        [DataMember]
        public string Jobid
        {
            get { return jobid; }
            set { jobid = value; }
        }
        [DataMember]
        public int Vacancy
        {
            get { return vacancy; }
            set { vacancy = value; }
        }

    }
}
