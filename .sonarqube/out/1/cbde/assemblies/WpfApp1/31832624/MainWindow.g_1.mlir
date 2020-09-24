func @_WpfApp1.MainWindow.InitializeComponent$$() -> () loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\MainWindow.g.cs" :64 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : i1 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\MainWindow.g.cs" :67 :16) // Not a variable of known type: _contentLoaded
cond_br %0, ^1, ^2 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\MainWindow.g.cs" :67 :16)

^1: // JumpBlock
return loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\MainWindow.g.cs" :68 :16)

^2: // SimpleBlock
%1 = constant 1 : i1 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\MainWindow.g.cs" :70 :29) // true
%2 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\MainWindow.g.cs" :71 :56) // "/WpfApp1;component/mainwindow.xaml" (StringLiteralExpression)
// Entity from another assembly: System
%3 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\MainWindow.g.cs" :71 :94) // System.UriKind (SimpleMemberAccessExpression)
%4 = constant unit loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\MainWindow.g.cs" :71 :94) // System.UriKind.Relative (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\MainWindow.g.cs" :71 :41) // new System.Uri("/WpfApp1;component/mainwindow.xaml", System.UriKind.Relative) (ObjectCreationExpression)
// Entity from another assembly: System
%7 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\MainWindow.g.cs" :74 :12) // System.Windows.Application (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\MainWindow.g.cs" :74 :53) // this (ThisExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\MainWindow.g.cs" :74 :59) // Not a variable of known type: resourceLocater
%10 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\obj\\Debug\\netcoreapp3.1\\MainWindow.g.cs" :74 :12) // System.Windows.Application.LoadComponent(this, resourceLocater) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
// Skipping function Connect(i32, none), it contains poisonous unsupported syntaxes

