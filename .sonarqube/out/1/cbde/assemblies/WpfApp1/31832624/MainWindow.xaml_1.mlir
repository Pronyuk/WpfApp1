// Skipping function ShowDesktopWindows(), it contains poisonous unsupported syntaxes

// Skipping function GetWMIDisplayInfo(), it contains poisonous unsupported syntaxes

// Skipping function button_Click(none, none), it contains poisonous unsupported syntaxes

// Skipping function ToString(), it contains poisonous unsupported syntaxes

func @_WpfApp1.ScreenConnectionMonitor.Start$$() -> () loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\MainWindow.xaml.cs" :148 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: Application
%0 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\MainWindow.xaml.cs" :150 :47) // Application.Current (SimpleMemberAccessExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\MainWindow.xaml.cs" :150 :47) // Application.Current.MainWindow (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\MainWindow.xaml.cs" :150 :23) // new WindowInteropHelper(Application.Current.MainWindow) (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\MainWindow.xaml.cs" :150 :23) // new WindowInteropHelper(Application.Current.MainWindow).EnsureHandle() (InvocationExpression)
// Entity from another assembly: HwndSource
%5 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\MainWindow.xaml.cs" :151 :52) // Not a variable of known type: hwnd
%6 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\MainWindow.xaml.cs" :151 :32) // HwndSource.FromHwnd(hwnd) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\MainWindow.xaml.cs" :152 :12) // Not a variable of known type: source
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: WndProc
%9 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\MainWindow.xaml.cs" :152 :27) // new HwndSourceHook(WndProc) (ObjectCreationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\MainWindow.xaml.cs" :152 :12) // source.AddHook(new HwndSourceHook(WndProc)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function WndProc(none, i32, none, none, i1), it contains poisonous unsupported syntaxes

// Skipping function GetDisplaysInfo(), it contains poisonous unsupported syntaxes

