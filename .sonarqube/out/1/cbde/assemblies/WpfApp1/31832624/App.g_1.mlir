func @_WpfApp1.App.InitializeComponent$$() -> () loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\App.g.cs" :46 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\App.g.cs" :51 :12) // this (ThisExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\App.g.cs" :51 :12) // this.StartupUri (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\App.g.cs" :51 :45) // "MainWindow.xaml" (StringLiteralExpression)
// Entity from another assembly: System
%3 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\App.g.cs" :51 :64) // System.UriKind (SimpleMemberAccessExpression)
%4 = constant unit loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\App.g.cs" :51 :64) // System.UriKind.Relative (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\App.g.cs" :51 :30) // new System.Uri("MainWindow.xaml", System.UriKind.Relative) (ObjectCreationExpression)
br ^1

^1: // ExitBlock
return

}
func @_WpfApp1.App.Main$$() -> () loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\App.g.cs" :60 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\App.g.cs" :64 :30) // new WpfApp1.App() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\App.g.cs" :65 :12) // Not a variable of known type: app
%3 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\App.g.cs" :65 :12) // app.InitializeComponent() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\App.g.cs" :66 :12) // Not a variable of known type: app
%5 = cbde.unknown : i32 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\App.g.cs" :66 :12) // app.Run() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
