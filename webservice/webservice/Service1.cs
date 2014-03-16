using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading.Tasks;
using System.IO.Ports;
using System.Runtime.InteropServices;

namespace webservice
{

    public partial class Service1 : ServiceBase
    {   
        public Service1()
        {
            InitializeComponent();
        }

        protected override void OnStart(string[] args)
        {
        }

        protected override void OnStop()
        {
        }

        System.IO.Ports.SerialPort serialport = new System.IO.Ports.SerialPort();
        static bool status = false ;
        public string openclose(string name)
        {
            string data;
            if (status)
            {
                data = "Open";
                status = false;
            }
            else
            {
                data = "Close";
                status = true;
            }
            return data;
             
            
        }

        public void move(string name, string value ,byte dir)
        {
            
            string portname = name;
            serialport.PortName = portname;
            if (!this.serialport.IsOpen)
            {
                
                    this.serialport.Close();
                    serialport.PortName = portname;
                    this.serialport.Open();
   
            }

            if (this.serialport.IsOpen)
            {
                             
                    byte[] frame = new byte[3];
                    if (!(value == null))
                    {
                        frame = goniometer.Goniofuncs.rotate(dir, value);
                        serialport.Write(frame, 0, 3);
                        this.serialport.Close();
                    }

                }           

               
                    

               

            }
            
        }    

    }

