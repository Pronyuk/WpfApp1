using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Text.Json;
using System.Text.Json.Serialization;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WpfApp1.TestEntities;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            ShowDesktopWindows();


            ScreenConnectionMonitor.OnScreenConnectionChanged += () =>
            {
                //Process[] processlist = Process.GetProcesses();

                //foreach (Process process in processlist)
                //{
                //    //if (!String.IsNullOrEmpty(process.MainWindowTitle))
                //    //{
                //        Trace.WriteLine($"Process: {process.ProcessName} ID: {process.Id} Window title: {process.MainWindowTitle}");
                //    //}
                //}
            };

            ScreenConnectionMonitor.Start();



        }

        private void ShowDesktopWindows()
        {
            List<IntPtr> handles;
            List<string> titles;
            EnumWindows.GetDesktopWindowHandlesAndTitles(out handles, out titles);

            titles.ForEach(v =>
            {
                Trace.WriteLine(v);
            });
        }

        public void GetWMIDisplayInfo()
        {
            var query = "select * from WmiMonitorID";
            using (var wmi = new System.Management.ManagementObjectSearcher("\\root\\wmi", query))
            {
                var results = wmi.Get();
                foreach (var item in results)
                {
                    Trace.WriteLine(item.GetText(System.Management.TextFormat.Mof));
                    var temp = new WmiDisplayInformation();

                    temp.Active = (bool)item["Active"];
                    temp.InstanceName = (string)item["InstanceName"];
                    temp.ManufacturerName = ((ushort[])item["ManufacturerName"]).Where(v => v != 0).ToArray();
                    temp.ProductCodeID = ((ushort[])item["ProductCodeID"]).Where(v => v != 0).ToArray();
                    temp.SerialNumberID = ((ushort[])item["SerialNumberID"]).Where(v => v != 0).ToArray();
                    temp.UserFriendlyName = ((ushort[])item["UserFriendlyName"]).Where(v => v != 0).ToArray();
                    temp.UserFriendlyNameLength = (int)(ushort)item["UserFriendlyNameLength"];
                    temp.WeekOfManufacture = (int)(byte)item["WeekOfManufacture"];
                    temp.YearOfManufacture = (int)(ushort)item["YearOfManufacture"];

                    Trace.WriteLine(temp.ToString());
                }
            }
        }

    }

    public class WmiDisplayInformation
    {
        public bool Active { get; set; }

        public string InstanceName { get; set; }

        public ushort[] ManufacturerName { get; set; }

        public ushort[] ProductCodeID { get; set; }

        public ushort[] SerialNumberID { get; set; }

        public ushort[] UserFriendlyName { get; set; }

        public int UserFriendlyNameLength { get; set; }

        public int WeekOfManufacture { get; set; }

        public int YearOfManufacture { get; set; }

        public override string ToString()
        {
            //return JsonSerializer.Serialize(this);
            var manuf = ManufacturerName.Select(v => Convert.ToChar(v)).ToArray();
            var productC = ProductCodeID.Select(v => Convert.ToChar(v)).ToArray();
            var serialNumberID = SerialNumberID.Select(v => Convert.ToChar(v)).ToArray();
            var userFriendlyName = UserFriendlyName.Select(v => Convert.ToChar(v)).ToArray();
            var sb = new StringBuilder();
            sb.AppendLine($"Active: {Active}");
            sb.AppendLine($"InstanceName: { InstanceName}");
            sb.AppendLine($"ManufacturerName: { new string(manuf) }");
            sb.AppendLine($"SerialNumberID: { new string(productC)}");
            sb.AppendLine($"ProductCodeID: { new string(userFriendlyName)}");
            sb.AppendLine($"UserFriendlyName: { new string(userFriendlyName)}");
            sb.AppendLine($"UserFriendlyNameLength: { UserFriendlyNameLength}");
            sb.AppendLine($"WeekOfManufacture: { WeekOfManufacture}");
            sb.AppendLine($"YearOfManufacture: { YearOfManufacture}");

            return sb.ToString();
        }
    }

    public class ScreenConnectionMonitor
    {
        public delegate void ScreenConnectionHandler();
        public static ScreenConnectionHandler OnScreenConnectionChanged;

        public static void Start()
        {
            var hwnd = new WindowInteropHelper(Application.Current.MainWindow).EnsureHandle();
            HwndSource source = HwndSource.FromHwnd(hwnd);
            source.AddHook(new HwndSourceHook(WndProc));
        }

        private static IntPtr WndProc(IntPtr hwnd, int msg, IntPtr wParam, IntPtr lParam, ref bool handled)
        {
            const uint WM_DISPLAYCHANGE = 0x007e;

            switch ((uint)msg)
            {
                case WM_DISPLAYCHANGE:
                    // display is connected or disconnected
                    OnScreenConnectionChanged?.Invoke();
                    break;
                    //case WM_MOUSEMOVE:
                    //    IntPtr xy = lParam;
                    //    int x = unchecked((short)(long)xy);
                    //    int y = unchecked((short)((long)xy >> 16));
                    //    //Debug.WriteLine(x + " " + y);
                    //    break;
            }

            return IntPtr.Zero;
        }
    }


    public class NativeInfo
    {
        public static List<DisplayDetails> GetDisplaysInfo()
        {
            var list = new List<DisplayDetails>();
            DisplayDevice d = new DisplayDevice();
            d.cb = Marshal.SizeOf(d);
            try
            {
                for (uint id = 0; NativeMethods.EnumDisplayDevices(null, id, ref d, 0); id++)
                {
                    if (d.StateFlags.HasFlag(DisplayDeviceStateFlags.AttachedToDesktop))
                    {
                        var isPrimary = d.StateFlags.HasFlag(DisplayDeviceStateFlags.PrimaryDevice);

                        Trace.WriteLine(String.Format("{0}, {1}, {2}, {3}, {4}, {5}",
                                     id,
                                     d.DeviceName,
                                     d.DeviceString,
                                     d.StateFlags,
                                     d.DeviceID,
                                     d.DeviceKey
                                     ));
                        d.cb = Marshal.SizeOf(d);

                        NativeMethods.EnumDisplayDevices(d.DeviceName, 0, ref d, 0);

                        Trace.WriteLine(String.Format("{0}, {1}", d.DeviceName, d.DeviceString));

                        list.Add(new DisplayDetails
                        {
                            DeviceID = d.DeviceID,
                            DeviceKey = d.DeviceKey,
                            DeviceName = d.DeviceName,
                            DeviceString = d.DeviceString,
                            IsPrimary = isPrimary
                        });
                    }

                    d.cb = Marshal.SizeOf(d);
                }
            }
            catch (Exception ex)
            {
                Trace.WriteLine(String.Format("{0}", ex.ToString()));
                throw;

            }
            Trace.WriteLine(JsonSerializer.Serialize(list));
            return list;
        }
    }

    [Flags()]
    internal enum DisplayDeviceStateFlags : int
    {
        /// <summary>The device is part of the desktop.</summary>
        AttachedToDesktop = 0x1,
        MultiDriver = 0x2,
        /// <summary>The device is part of the desktop.</summary>
        PrimaryDevice = 0x4,
        /// <summary>Represents a pseudo device used to mirror application drawing for remoting or other purposes.</summary>
        MirroringDriver = 0x8,
        /// <summary>The device is VGA compatible.</summary>
        VGACompatible = 0x10,
        /// <summary>The device is removable; it cannot be the primary display.</summary>
        Removable = 0x20,
        /// <summary>The device has more display modes than its output devices support.</summary>
        ModesPruned = 0x8000000,
        Remote = 0x4000000,
        Disconnect = 0x2000000
    }

    internal class NativeMethods
    {
        [DllImport("user32.dll")]
        public static extern bool EnumDisplayDevices(string lpDevice, uint iDevNum, ref DisplayDevice lpDisplayDevice, uint dwFlags);
    }

    public class DisplayDetails
    {
        public string DeviceName;

        public string DeviceString;

        public string DeviceID;

        public string DeviceKey;

        public bool IsPrimary;
    }

    [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Ansi)]
    internal struct DisplayDevice
    {
        [MarshalAs(UnmanagedType.U4)]
        public int cb;

        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 32)]
        public string DeviceName;

        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 128)]
        public string DeviceString;

        [MarshalAs(UnmanagedType.U4)]
        public DisplayDeviceStateFlags StateFlags;

        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 128)]
        public string DeviceID;

        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 128)]
        public string DeviceKey;
    }
}
