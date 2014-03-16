
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO.Ports;
using System.Runtime.InteropServices;
using goniometer;

        

namespace app
{
    

    public partial class Form1 : Form
    {
        [UnmanagedFunctionPointer(CallingConvention.StdCall)]
        private delegate int ps10_Connect(int a, int b, int c, int d, int e, int f, int g, int h);
        [UnmanagedFunctionPointer(CallingConvention.StdCall)]
        private delegate int ps10_MotorInit(int i, int j);
        [UnmanagedFunctionPointer(CallingConvention.StdCall)]
        private delegate int ps10_ResetCounter(int i, int j);
        [UnmanagedFunctionPointer(CallingConvention.StdCall)]
        private delegate int ps10_Disconnect(int m);
        [UnmanagedFunctionPointer(CallingConvention.StdCall)]
        private delegate int ps10_SetTargetMode(int n, int o, int p);
        [UnmanagedFunctionPointer(CallingConvention.StdCall)]
        private delegate int ps10_MoveEx(int q, int r, double s, int t);
        
        //[DllImport("ps10.dll", EntryPoint = "PS10_Connect", CallingConvention = CallingConvention.StdCall)]
        //static extern long PS10_Connect(long a, long b, long c, long d, long e, long f, long g, long h); 
        //[DllImport("ps10.dll", EntryPoint = "PS10_MotorInit",CallingConvention=CallingConvention.StdCall)] static extern long  PS10_MotorInit(long i, long j);
        //[DllImport("ps10.dll", EntryPoint = "PS10_ResetCounter", CallingConvention = CallingConvention.StdCall)]
        //static extern long PS10_ResetCounter(long k, long l);
        //[DllImport("ps10.dll", EntryPoint = "PS10_Disconnect", CallingConvention = CallingConvention.StdCall)]
        //static extern long PS10_Disconnect(long m);
        //[DllImport("ps10.dll", EntryPoint = "PS10_SetTargetMode", CallingConvention = CallingConvention.StdCall)]
        //static extern long PS10_SetTargetMode(long n, long o, long p);
        //[DllImport("ps10.dll", EntryPoint = "PS10_MoveEx", CallingConvention = CallingConvention.StdCall)]
        //static extern long PS10_MoveEx(long q, long r, long s, long t);
        public Form1()
        {
            InitializeComponent();
            
            // get port names
            object[] availports = SerialPort.GetPortNames();
            // add string array to combobox
            this.toolStripComboBox1.Items.AddRange(availports);
            int length = availports.Length;
            if (length == 0)
            {
                this.richTextBox1.Text = "No Port found";
            }
            else
            {
                this.toolStripComboBox1.SelectedIndex = 0;
            }
            
        }

//===========================================================================================================//
//===================================================COM Port================================================//
//===========================================================================================================//
        

        //Select Baud Rate
        private void toolStripMenuItem2_CheckedChanged(object sender, System.EventArgs e)
        {
            if (toolStripMenuItem2.Checked)
            {
                toolStripMenuItem3.Checked = false;
                toolStripMenuItem4.Checked = false;
                string baudrate = (string)((toolStripMenuItem2).Text);
                this.serialport.BaudRate = Int32.Parse(baudrate);
                this.toolStripStatusLabel2.Text = "Baud Rate: " + Int32.Parse(baudrate) + ";";
                
            }
            else
                return;
        }
        private void toolStripMenuItem3_CheckedChanged(object sender, System.EventArgs e)
        {
            if (toolStripMenuItem3.Checked)
            {
                toolStripMenuItem2.Checked = false;
                toolStripMenuItem4.Checked = false;
                string baudrate = (string)((toolStripMenuItem3).Text);
                this.serialport.BaudRate = Int32.Parse(baudrate);
                this.toolStripStatusLabel2.Text = "Baud Rate: " + Int32.Parse(baudrate) + ";";
            }
            else
                return;
        }
        private void toolStripMenuItem4_CheckedChanged(object sender, System.EventArgs e)
        {
            if (toolStripMenuItem4.Checked)
            {
                toolStripMenuItem2.Checked = false;
                toolStripMenuItem3.Checked = false;
                string baudrate = (string)((toolStripMenuItem4).Text);
                this.serialport.BaudRate = Int32.Parse(baudrate);
                this.toolStripStatusLabel2.Text = "Baud Rate: " + Int32.Parse(baudrate) + ";";
            }
            else
                return;
        }

        //Select Data Bits

        private void toolStripMenuItem5_CheckedChanged(object sender, System.EventArgs e)
        {
            if (toolStripMenuItem5.Checked)
            {
                toolStripMenuItem6.Checked = false;
                toolStripMenuItem7.Checked = false;
                toolStripMenuItem8.Checked = false;
                string databits = (string)((toolStripMenuItem5).Text);
                this.serialport.BaudRate = Int32.Parse(databits);
                this.toolStripStatusLabel3.Text = "Data Bits: " + Int32.Parse(databits) + ";";
            }
            else
                return;
        }
        private void toolStripMenuItem6_CheckedChanged(object sender, System.EventArgs e)
        {
            if (toolStripMenuItem6.Checked)
            {
                toolStripMenuItem5.Checked = false;
                toolStripMenuItem7.Checked = false;
                toolStripMenuItem8.Checked = false;
                string databits = (string)((toolStripMenuItem6).Text);
                this.serialport.BaudRate = Int32.Parse(databits);
                this.toolStripStatusLabel3.Text = "Data Bits: " + Int32.Parse(databits) + ";";
            }
            else
                return;
        }
        private void toolStripMenuItem7_CheckedChanged(object sender, System.EventArgs e)
        {
            if (toolStripMenuItem7.Checked)
            {
                toolStripMenuItem5.Checked = false;
                toolStripMenuItem6.Checked = false;
                toolStripMenuItem8.Checked = false;
                string databits = (string)((toolStripMenuItem7).Text);
                this.serialport.BaudRate = Int32.Parse(databits);
                this.toolStripStatusLabel3.Text = "Data Bits: " + Int32.Parse(databits) + ";";
            }
            else
                return;
        }
        private void toolStripMenuItem8_CheckedChanged(object sender, System.EventArgs e)
        {
            if (toolStripMenuItem5.Checked)
            {
                toolStripMenuItem5.Checked = false;
                toolStripMenuItem6.Checked = false;
                toolStripMenuItem7.Checked = false;
                string databits = (string)((toolStripMenuItem8).Text);
                this.serialport.BaudRate = Int32.Parse(databits);
                this.toolStripStatusLabel3.Text = "Data Bits: " + Int32.Parse(databits) + ";";
            }
            else
                return;
        }

        //Select Stop Bits

        private void toolStripMenuItem9_CheckedChanged(object sender, System.EventArgs e)
        {
            if (toolStripMenuItem9.Checked)
            {
                toolStripMenuItem10.Checked = false;
                toolStripMenuItem11.Checked = false;
                serialport.StopBits = StopBits.One;
                this.toolStripStatusLabel5.Text = "Stop Bits: " + StopBits.One + ";";
            }
            else
                return;
        }
        private void toolStripMenuItem10_CheckedChanged(object sender, System.EventArgs e)
        {
            if (toolStripMenuItem10.Checked)
            {
                toolStripMenuItem9.Checked = false;
                toolStripMenuItem11.Checked = false;
                serialport.StopBits = StopBits.OnePointFive;
                this.toolStripStatusLabel5.Text = "Stop Bits: " + StopBits.OnePointFive + ";";
            }
            else
                return;
        }
        private void toolStripMenuItem11_CheckedChanged(object sender, System.EventArgs e)
        {
            if (toolStripMenuItem11.Checked)
            {
                toolStripMenuItem9.Checked = false;
                toolStripMenuItem10.Checked = false;
                serialport.StopBits = StopBits.Two;
                this.toolStripStatusLabel5.Text = "Stop Bits: " + StopBits.Two + ";";
            }
            else
                return;
        }

        //Select Parity

        private void noneToolStripMenuItem_CheckedChanged(object sender, System.EventArgs e)
        {
            if (noneToolStripMenuItem.Checked)
            {
                oddToolStripMenuItem.Checked = false;
                evenToolStripMenuItem.Checked = false;
                markToolStripMenuItem.Checked = false;
                spaceToolStripMenuItem.Checked = false;
                serialport.Parity = Parity.None;
                this.toolStripStatusLabel4.Text = "Parity: " + Parity.None + ";";
            }
            else
                return;
        }
        private void oddToolStripMenuItem_CheckedChanged(object sender, System.EventArgs e)
        {
            if (oddToolStripMenuItem.Checked)
            {
                noneToolStripMenuItem.Checked = false;
                evenToolStripMenuItem.Checked = false;
                markToolStripMenuItem.Checked = false;
                spaceToolStripMenuItem.Checked = false;
                serialport.Parity = Parity.Odd;
                this.toolStripStatusLabel4.Text = "Parity: " + Parity.Odd + ";";
            }
            else
                return;
        }
        private void evenToolStripMenuItem_CheckedChanged(object sender, System.EventArgs e)
        {
            if (evenToolStripMenuItem.Checked)
            {
                noneToolStripMenuItem.Checked = false;
                oddToolStripMenuItem.Checked = false;
                markToolStripMenuItem.Checked = false;
                spaceToolStripMenuItem.Checked = false;
                serialport.Parity = Parity.Even;
                this.toolStripStatusLabel4.Text = "Parity: " + Parity.Even + ";";
            }
            else
                return;
        }
        private void markToolStripMenuItem_CheckedChanged(object sender, System.EventArgs e)
        {
            if (markToolStripMenuItem.Checked)
            {
                noneToolStripMenuItem.Checked = false;
                evenToolStripMenuItem.Checked = false;
                oddToolStripMenuItem.Checked = false;
                spaceToolStripMenuItem.Checked = false;
                serialport.Parity = Parity.Mark;
                this.toolStripStatusLabel4.Text = "Parity: " + Parity.Mark + ";";
            }
            else
                return;
        }
        private void spaceToolStripMenuItem_CheckedChanged(object sender, System.EventArgs e)
        {
            if (spaceToolStripMenuItem.Checked)
            {
                noneToolStripMenuItem.Checked = false;
                evenToolStripMenuItem.Checked = false;
                markToolStripMenuItem.Checked = false;
                oddToolStripMenuItem.Checked = false;
                serialport.Parity = Parity.Space;
                this.toolStripStatusLabel4.Text = "Parity: " + Parity.Space + ";";
            }
            else
                return;
        }

        //Select Handshake
        private void noneToolStripMenuItem1_CheckedChanged(object sender, System.EventArgs e)
        {
            if (noneToolStripMenuItem1.Checked)
            {
                xONXOFFToolStripMenuItem.Checked = false;
                rTSCTSToolStripMenuItem.Checked = false;
                serialport.Handshake = Handshake.None;
                this.toolStripStatusLabel6.Text = "Handshake: " + Handshake.None  + ";";
            }
            else
                return;
        }
        private void xONXOFFToolStripMenuItem_CheckedChanged(object sender, System.EventArgs e)
        {
            if (xONXOFFToolStripMenuItem.Checked)
            {
                noneToolStripMenuItem1.Checked = false;
                rTSCTSToolStripMenuItem.Checked = false;
                serialport.Handshake = Handshake.XOnXOff;
                this.toolStripStatusLabel6.Text = "Handshake: " + Handshake.XOnXOff + ";";
            }
            else
                return;
        }
        private void rTSCTSToolStripMenuItem_CheckedChanged(object sender, System.EventArgs e)
        {
            if (rTSCTSToolStripMenuItem.Checked)
            {
                noneToolStripMenuItem1.Checked = false;
                xONXOFFToolStripMenuItem.Checked = false;
                serialport.Handshake = Handshake.RequestToSend;
                this.toolStripStatusLabel6.Text = "Handshake: " + Handshake.RequestToSend + ";";
            }
            else
                return;
        }

        //Open or Close COM Port
        private void button2_Click(object sender, EventArgs e)
        {
           
        try
            {
                if (!this.serialport.IsOpen)
                {

                    if ((this.toolStripComboBox1.Text == String.Empty))
                    {
                        this.richTextBox1.Text = "COM1 Not Available";
                    }
                    else
                    {
                        this.toolStripComboBox1.SelectedIndex = 0;
                        string portname = (string)(toolStripComboBox1.Text);
                        this.toolStripStatusLabel1.Text = "Port: " + portname + ";";
                        serialport.PortName = portname;
                        this.serialport.Open();
                        this.button2.Text = "Close Port";
                        this.pS10ControllerToolStripMenuItem.Enabled = false;
                    }
                }

                else
                {
                    this.serialport.Close();
                    this.button2.Text = "Open Port";
                    this.pS10ControllerToolStripMenuItem.Enabled = true;

                }
            
             }
            catch(UnauthorizedAccessException){
						this.richTextBox1.Text="UnauthorizedAccess";
					                                   }
        }




        //Move Goniometer
        private void button1_Click(object sender, EventArgs e)
        {

            if (radioButton1.Checked)
            {
                byte dir = 0;
                string value;
                byte[] frame = new byte[3];
                value = textBox1.Text;

                if (radioButton3.Checked)
                    dir = 0xAA;
                else
                    dir = 0xBB;

                frame = goniometer.Goniofuncs.rotate(dir, value);
                serialport.Write(frame, 0, 3);
            }

            else
            {
                long udecvalue, sdecvalue;
                string value = textBox1.Text;
                udecvalue =(long)Int32.Parse(value);

                if (radioButton3.Checked)
                    sdecvalue = udecvalue;
                else
                    sdecvalue = -1 * udecvalue;


                IntPtr pDll = NativeMethods.LoadLibrary("ps10.dll");
                IntPtr pAddressOfFunctionToCall = NativeMethods.GetProcAddress(pDll, "_PS10_SetTargetMode@12");
                ps10_SetTargetMode settargetmode = (ps10_SetTargetMode)Marshal.GetDelegateForFunctionPointer(pAddressOfFunctionToCall, typeof(ps10_SetTargetMode));
                int check = settargetmode(1, 1,0);
                //bool result = NativeMethods.FreeLibrary(pDll);

                //IntPtr pDlln = NativeMethods.LoadLibrary("ps10.dll");
                IntPtr pAddressOfFunctionToCalln = NativeMethods.GetProcAddress(pDll, "_PS10_MoveEx@20");
                ps10_MoveEx moveex = (ps10_MoveEx)Marshal.GetDelegateForFunctionPointer(pAddressOfFunctionToCalln, typeof(ps10_MoveEx));
                int checkn = moveex(1, 1,sdecvalue,0);
                bool resultn = NativeMethods.FreeLibrary(pDll);
                

            }

         

        }

        //PS 10 Controller Connect
        private void connectToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!this.serialport.IsOpen)
            {
                if (this.toolStripComboBox1.Text == string.Empty)
                {
                    this.richTextBox1.Text = "COM1 Not Available";
                }
                else
                {   
                    string portname = (string)((toolStripComboBox1).Text); //COM Port for PS10 Controller
                    string port = portname.Substring(3);
                    int nComPort = (int)Int32.Parse(port);
                 
                    IntPtr pDll = NativeMethods.LoadLibrary("ps10.dll");
                    IntPtr pAddressOfFunctionToCall = NativeMethods.GetProcAddress(pDll, "_PS10_Connect@32");
                    ps10_Connect connect = (ps10_Connect)Marshal.GetDelegateForFunctionPointer(pAddressOfFunctionToCall, typeof(ps10_Connect)); 
                    int check = connect(1, 0, nComPort, 9600, 0, 0, 8, 0);
                    //bool result = NativeMethods.FreeLibrary(pDll);
                                  
                    this.richTextBox1.Text = "PS10 Controller is Connected";
                    this.button2.Enabled = false;
                    this.initializeToolStripMenuItem.Enabled = true;
                    this.disconnectToolStripMenuItem.Enabled = true;
                    this.toolStripStatusLabel1.Text = "Port: " + portname + ";";
                    
                }
            }
            else
                this.richTextBox1.Text = "Port is already open";
        }

        //Initialize Axis
        private void initializeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            IntPtr pDll = NativeMethods.LoadLibrary("ps10.dll");
            IntPtr pAddressOfFunctionToCall = NativeMethods.GetProcAddress(pDll, "_PS10_MotorInit@8");
            ps10_MotorInit motorinit = (ps10_MotorInit)Marshal.GetDelegateForFunctionPointer(pAddressOfFunctionToCall, typeof(ps10_MotorInit));
            int check = motorinit(1, 1);

            IntPtr pAddressOfFunctionToCalln = NativeMethods.GetProcAddress(pDll, "_PS10_ResetCounter@8");
            ps10_ResetCounter resetcounter = (ps10_ResetCounter)Marshal.GetDelegateForFunctionPointer(pAddressOfFunctionToCalln, typeof(ps10_ResetCounter));
            int checkn = resetcounter(1, 1);
            //bool resultn = NativeMethods.FreeLibrary(pDll);
            richTextBox1.Text = "Axis Initialized";
            
            
        }

        //Disconnect PS10 Controller
        private void disconnectToolStripMenuItem_Click(object sender, EventArgs e)
        {
            IntPtr pDll = NativeMethods.LoadLibrary("ps10.dll");
            IntPtr pAddressOfFunctionToCall = NativeMethods.GetProcAddress(pDll, "_PS10_Disconnect@4");
            ps10_Disconnect disconnect = (ps10_Disconnect)Marshal.GetDelegateForFunctionPointer(pAddressOfFunctionToCall, typeof(ps10_Disconnect));
            int check = disconnect(1);
            //PS10_Disconnect(1);
            
            this.richTextBox1.Text = "PS 10 Controller Disconnected";
            this.button2.Enabled = true;
            connectToolStripMenuItem.Enabled = true;
            initializeToolStripMenuItem.Enabled = false;
            disconnectToolStripMenuItem.Enabled = false;

        }
		 
    }

    static class NativeMethods
    {
        [DllImport("kernel32.dll")]
        public static extern IntPtr LoadLibrary(string dllToLoad);

        [DllImport("kernel32.dll")]
        public static extern IntPtr GetProcAddress(IntPtr hModule, string procedureName);


        [DllImport("kernel32.dll", CharSet = CharSet.Auto)]
        public static extern bool FreeLibrary(IntPtr hModule);
    }
}
