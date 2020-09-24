func @_WpfApp1.TestEntities.EnumWindows.GetDesktopWindowHandlesAndTitles$outSystem.Collections.Generic.List$System.IntPtr$.outSystem.Collections.Generic.List$string$$(none, none) -> () loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\EnumWindows.cs" :42 :8) {
^entry (%_handles : none, %_titles : none):
%0 = cbde.alloca none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\EnumWindows.cs" :43 :12)
cbde.store %_handles, %0 : memref<none> loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\EnumWindows.cs" :43 :12)
%1 = cbde.alloca none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\EnumWindows.cs" :43 :38)
cbde.store %_titles, %1 : memref<none> loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\EnumWindows.cs" :43 :38)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\EnumWindows.cs" :45 :28) // new List<IntPtr>() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\EnumWindows.cs" :46 :27) // new List<string>() (ObjectCreationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: EnumDesktopWindows
// Entity from another assembly: IntPtr
%4 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\EnumWindows.cs" :48 :36) // IntPtr.Zero (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: FilterCallback
// Entity from another assembly: IntPtr
%5 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\EnumWindows.cs" :48 :65) // IntPtr.Zero (SimpleMemberAccessExpression)
%6 = cbde.unknown : i1 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\EnumWindows.cs" :48 :17) // EnumDesktopWindows(IntPtr.Zero, FilterCallback, IntPtr.Zero) (InvocationExpression)
%7 = cbde.unknown : i1 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\EnumWindows.cs" :48 :16) // !EnumDesktopWindows(IntPtr.Zero, FilterCallback, IntPtr.Zero) (LogicalNotExpression)
cond_br %7, ^1, ^2 loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\EnumWindows.cs" :48 :16)

^1: // SimpleBlock
%8 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\EnumWindows.cs" :50 :26) // null (NullLiteralExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\EnumWindows.cs" :51 :25) // null (NullLiteralExpression)
br ^3

^2: // SimpleBlock
%10 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\EnumWindows.cs" :55 :26) // Not a variable of known type: WindowHandles
%11 = cbde.unknown : none loc("C:\\Users\\Nuke\\Source\\Repos\\WpfApp1\\WpfApp1\\TestEntities\\EnumWindows.cs" :56 :25) // Not a variable of known type: WindowTitles
br ^3

^3: // ExitBlock
return

}
// Skipping function FilterCallback(none, i32), it contains poisonous unsupported syntaxes

