using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBConnectionsWPFApp
{
    class UsersModel
    {
        public int? id { get; set; }
        public string name { get; set; }
        public string username { get; set; }
        public string email { get; set; }
        public AddressModel address { get; set; }
        public string phone { get; set; }
        public string website { get; set; }
        public CompanyModel company { get; set; }
    }
}
