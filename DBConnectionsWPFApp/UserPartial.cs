using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography;

namespace DBConnectionsWPFApp
{
   
        public partial class User
        {
            public int age
            {
                get
                {
                    if (Birthdate != null)
                    {
                        int Age = DateTime.Now.Year - Birthdate.Value.Year;
                        return Age;
                    }
                    else
                    {
                        return 0;
                    }
                }

            }
            public string pass
            {
                get
                {
                    char first_char = Password[0];
                    char lasat_char = Password[Password.Length - 1];
                    return first_char + "****" + lasat_char;
                }
            }
            public string color
            {
                get
                {
                    if (IdRole == 1)
                    {
                        return "lightgreen";
                    }
                    else
                    {
                        return "lightgray";
                    }
                }
            }
        }
    }

