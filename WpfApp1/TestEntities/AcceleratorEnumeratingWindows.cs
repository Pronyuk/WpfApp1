using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.InteropServices;
using System.Text;

namespace WpfApp1.TestEntities
{
    //http://www.vbaccelerator.com/home/NET/Code/Libraries/Windows/Enumerating_Windows/article.html
    class AcceleratorEnumeratingWindows
    {
        #region Delegates
        internal delegate int EnumWindowsProc(IntPtr hwnd, int lParam);
        public static EnumWindowsProc OnWindowTriggered;
        #endregion

        #region UnManagedMethods
        private class UnManagedMethods
        {
            [DllImport("user32")]
            public extern static int EnumWindows(
                EnumWindowsProc lpEnumFunc,
                int lParam);
            [DllImport("user32")]
            public extern static int EnumChildWindows(
                IntPtr hWndParent,
                EnumWindowsProc lpEnumFunc,
                int lParam);
        }
        #endregion

        #region Member Variables
        private EnumWindowsCollection items = null;
        #endregion

        /// 

        /// Returns the collection of windows returned by
        /// GetWindows
        /// 
        public EnumWindowsCollection Items
        {
            get
            {
                return this.items;
            }
        }

        /// 

        /// Gets all top level windows on the system.
        /// 
        public void GetWindows()
        {
            this.items = new EnumWindowsCollection();
            var test = new EnumWindowsProc(this.WindowEnum);
            UnManagedMethods.EnumWindows(test
                ,
                0);
        }

        /// 

        /// Gets all child windows of the specified window
        /// 
        /// Window Handle to get children for
        public void GetWindows(
            IntPtr hWndParent)
        {
            this.items = new EnumWindowsCollection();
            UnManagedMethods.EnumChildWindows(
                hWndParent,
                new EnumWindowsProc(this.WindowEnum),
                0);
        }

        #region EnumWindows callback
        /// 

        /// The enum Windows callback.
        /// 
        /// Window Handle
        /// Application defined value
        /// 1 to continue enumeration, 0 to stop
        private int WindowEnum(
            IntPtr hWnd,
            int lParam)
        {
            if (this.OnWindowEnum(hWnd))
            {
                return 1;
            }
            else
            {
                return 0;
            }
        }
        #endregion

        /// 

        /// Called whenever a new window is about to be added
        /// by the Window enumeration called from GetWindows.
        /// If overriding this function, return true to continue
        /// enumeration or false to stop.  If you do not call
        /// the base implementation the Items collection will
        /// be empty.
        /// 
        /// Window handle to add
        /// True to continue enumeration, False to stop
        protected virtual bool OnWindowEnum(IntPtr hWnd)
        {
            items.Add(hWnd);
            return true;
        }

        #region Constructor, Dispose
        public AcceleratorEnumeratingWindows()
        {
            // nothing to do
        }
        #endregion
    }

    public class EnumWindowsCollection : ReadOnlyCollectionBase
    {
        /// <summary>
        /// Add a new Window to the collection.  Intended for
        /// internal use by EnumWindows only.
        /// </summary>
        /// <param name="hWnd">Window handle to add</param>
        public void Add(IntPtr wnd)
        {
            this.InnerList.Add(wnd);
        }

        /// <summary>
        /// Gets the Window at the specified index
        /// </summary>
        public IntPtr this[int index]
        {
            get
            {
                return (IntPtr)this.InnerList[index];
            }
        }

        /// <summary>
        /// Constructs a new EnumWindowsCollection object.
        /// </summary>
        public EnumWindowsCollection()
        {
            // nothing to do
        }
    }
}
