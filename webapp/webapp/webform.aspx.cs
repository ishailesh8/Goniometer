using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO.Ports;
using System.Runtime.InteropServices;
using System.Web.Services;

namespace webapp
{
    

    public partial class webform : System.Web.UI.Page
    {
  

        System.IO.Ports.SerialPort serialport = new System.IO.Ports.SerialPort();
        webservice.Service1 webserviceobj = new webservice.Service1(); 

        public void Page_Load(object sender, EventArgs e)
        {
            object[] availports = SerialPort.GetPortNames();
            int length = availports.Length;
            if (length == 0)
            {
                this.Label2.Text = "No Port found";
            }
            else
            {
                for (int x = 1; x <= length; x++)
                {
                    ListBox2.Items.Add((string)availports[x - 1]);
                }
                
            }

        }

       

        public void Button1_Click(object sender, EventArgs e)
        {
            string status;
           
            try
            {
                
                string portname = ListBox2.SelectedItem.ToString();
                status = webserviceobj.openclose(portname);
                this.Label2.Text = "Display : " + portname  + " is " + status;
                if (status == "Open")
                    this.Button1.Text = "Close Port";
                else
                    this.Button1.Text = "Open Port";
                
            }
            catch (Exception)
            {
                this.Label2.Text = "Display : No COM Port Selected";
            }
              
  }



        public void Button2_Click(object sender, EventArgs e)
        {
                    string portname = ListBox2.SelectedItem.ToString();
                    byte dir;
                    string value;
                    byte[] frame = new byte[3];
                    value = TextBox2.Text;

                    if (!(value == null))
                    {

                        if (RadioButton3.Checked)
                            dir = 0xAA;
                        else
                            dir = 0xBB;

                        webserviceobj.move(portname,value,dir);

                    }
               }
    }
}