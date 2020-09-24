func @_WpfApp1.TestEntities.AcceleratorEnumeratingWindows.GetWindows$$() -> () loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :53 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :55 :12) // this (ThisExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :55 :12) // this.items (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :55 :25) // new EnumWindowsCollection() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :56 :43) // this (ThisExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :56 :23) // new EnumWindowsProc(this.WindowEnum) (ObjectCreationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: UnManagedMethods
%6 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :57 :41) // Not a variable of known type: test
%7 = constant 0 : i32 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :59 :16)
%8 = cbde.unknown : i32 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :57 :12) // UnManagedMethods.EnumWindows(test                  ,                  0) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_WpfApp1.TestEntities.AcceleratorEnumeratingWindows.GetWindows$System.IntPtr$(none) -> () loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :67 :8) {
^entry (%_hWndParent : none):
%0 = cbde.alloca none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :68 :12)
cbde.store %_hWndParent, %0 : memref<none> loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :68 :12)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :70 :12) // this (ThisExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :70 :12) // this.items (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :70 :25) // new EnumWindowsCollection() (ObjectCreationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: UnManagedMethods
%4 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :72 :16) // Not a variable of known type: hWndParent
%5 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :73 :36) // this (ThisExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :73 :16) // new EnumWindowsProc(this.WindowEnum) (ObjectCreationExpression)
%7 = constant 0 : i32 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :74 :16)
%8 = cbde.unknown : i32 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :71 :12) // UnManagedMethods.EnumChildWindows(                  hWndParent,                  new EnumWindowsProc(this.WindowEnum),                  0) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_WpfApp1.TestEntities.AcceleratorEnumeratingWindows.WindowEnum$System.IntPtr.int$(none, i32) -> i32 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :85 :8) {
^entry (%_hWnd : none, %_lParam : i32):
%0 = cbde.alloca none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :86 :12)
cbde.store %_hWnd, %0 : memref<none> loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :86 :12)
%1 = cbde.alloca i32 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :87 :12)
cbde.store %_lParam, %1 : memref<i32> loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :87 :12)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :89 :16) // this (ThisExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :89 :34) // Not a variable of known type: hWnd
%4 = cbde.unknown : i1 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :89 :16) // this.OnWindowEnum(hWnd) (InvocationExpression)
cond_br %4, ^1, ^2 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :89 :16)

^1: // JumpBlock
%5 = constant 1 : i32 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :91 :23)
return %5 : i32 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :91 :16)

^2: // JumpBlock
%6 = constant 0 : i32 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :95 :23)
return %6 : i32 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :95 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_WpfApp1.TestEntities.AcceleratorEnumeratingWindows.OnWindowEnum$System.IntPtr$(none) -> i1 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :111 :8) {
^entry (%_hWnd : none):
%0 = cbde.alloca none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :111 :44)
cbde.store %_hWnd, %0 : memref<none> loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :111 :44)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :113 :12) // Not a variable of known type: items
%2 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :113 :22) // Not a variable of known type: hWnd
%3 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :113 :12) // items.Add(hWnd) (InvocationExpression)
%4 = constant 1 : i1 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :114 :19) // true
return %4 : i1 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :114 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_WpfApp1.TestEntities.EnumWindowsCollection.Add$System.IntPtr$(none) -> () loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :132 :8) {
^entry (%_wnd : none):
%0 = cbde.alloca none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :132 :24)
cbde.store %_wnd, %0 : memref<none> loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :132 :24)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :134 :12) // this (ThisExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :134 :12) // this.InnerList (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :134 :31) // Not a variable of known type: wnd
%4 = cbde.unknown : i32 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\AcceleratorEnumeratingWindows.cs" :134 :12) // this.InnerList.Add(wnd) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
