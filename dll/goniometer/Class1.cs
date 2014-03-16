using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace goniometer
{
    public partial class Goniofuncs
    {
        public static byte[] rotate(byte direction, string sendvalue)
        {
            byte[] sendpacket = new byte[3];
            int decimalvalue;
            short hexvalue = 0;
            string inp_string;
            string lsb = "";
            string msb = "";
            string temp = "";
            string hexstring = "";

            inp_string = sendvalue;
            decimalvalue = System.Int32.Parse(inp_string); // Convert string representation of a number to its 32 bit signed integer equivalent
            temp = System.Convert.ToString(decimalvalue, 16).ToUpper(); // Convert value of 32 bit signed integer to it's equivalent string representation in a specified base
            hexvalue = (short)(System.Convert.ToInt16(temp, 16)); // Convert string representation of a number in a specified base to to an equivalent 16 bit signed integer
            hexstring = System.Convert.ToString(hexvalue); //Converts the value of the specified 16-bit signed integer to its equivalent string representation

            int length = hexstring.Length;
            switch (length)
            {
                case 1:
                    lsb = hexstring.Substring(0, 1);
                    msb = "0";
                break;

                case 2:
                    lsb = hexstring.Substring(0, 2);
                    msb = "0";
                break;

                case 3:
                    lsb = hexstring.Substring(1, 2);
                    msb = hexstring.Substring(0, 1);
                break;

                case 4:
                    lsb = hexstring.Substring(2, 2);
                    msb = hexstring.Substring(0, 2);
                break;

            }   
            
            sendpacket[0] = System.Convert.ToByte(lsb);
            sendpacket[1] = System.Convert.ToByte(msb);
            sendpacket[2] = direction;

            return sendpacket;
        }
    }
}
