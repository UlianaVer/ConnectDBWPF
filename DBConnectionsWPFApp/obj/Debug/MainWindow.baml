   M S B A M L   `   `   `  ????N  JDBConnectionsWPFApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:DBConnectionsWPFAppDBConnectionsWPFApp  5   	   $    DBConnectionsWPFApp.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:DBConnectionsWPFApp     5   	     ? Title$  
MainWindow??5   	   $	??450??6   $	??800??6)   .??5	      ?  ? RowDefinitions 5
   
   ?? 5      $
??100* ?6   ?? 5      $
??117* ?6    ? ColumnDefinitions 5   
   ?? 5      $
??431* ?6   ?? 5      $
??369* ?6   .+?5   
   &   System.Windows.Controls.DataGrid  -   5        $??dataGrid??5         AutoGenerateColumns .     RowStyle 5      ?? 5       ?? 
TargetType)  #System.Windows.Controls.DataGridRow"  6   .?5      ??  ?? Property ? ?? ?? Value 63   ?? *color+-   5        5         Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 Id??6%   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 60 6H   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   ?? *Id+6H     5      $	 Email??6%    64   ?? *Email+  5      $	 Password??6%    67   ?? *pass+  5      $		 Age??6%    62   ?? *age+  5       $
	 Role??6%    63   ?? *	Role.Name+5"      ?? 5$   
   $??1??5%      $??5q?5&       ?? Orientation$ Vertical=?5'      .+?5(      ?? $??5q?5)      $ 
Horizontal=?5*      .+?5+      ?? $??5q?5,      $	??ID:??5-      ?? 5.      -   5        $
??tbID??50      $??5q?5/      $	??200??51      53      ?? 55      $??5q?56      $ 
Horizontal=?57      .+?58      ?? $??5q?59      $??Email: ??5:      ?? 5;      -   5        $??tbEmail??5<      $	??200??5=      $??5q?5>      5?      ?? 5@      $??5q?5A      $ 
Horizontal=?5B      .+?5C      ?? $??5q?5D      $??
Password: ??5E      ?? 5F      -   5        $??
tbPassword??5G      $	??200??5H      $??5q?5I      5J      ?? 5K      -   5        $
??Save??5M      $??5q?5N      ?? 5O      -   5        $??Delete??5Q      $??5q?5R      5S      ?? 5U   
   $??0??5V      $??2q?5W      $??1??5X      .+?5Y      ?? $??5q?5Z      $ 
Horizontal=?5[      .+?5\      ?? $??5q?5]      $??
Username: ??5^      ?? 5_      -   5        $??
tbUsername??5`      $	??200??5a      $??5q?5b      5c      ?? 5d      $??2q?5e      $ 
Horizontal=?5f      .+?5g      ?? $??5q?5h      $??Email: ??5i      ?? 5j      -	   5        $??
tbNewEmail??5k      $	??200??5l      $??5q?5m      5n      ?? 5o      $??2q?5p      $ 
Horizontal=?5q      .+?5r      ?? $??5q?5s      $??
Password: ??5t      ?? 5u      -
   5        $??tbNewPassword??5v      $	??200??5w      $??5q?5x      5y      ?? 5z      $??2q?5{      $ 
Horizontal=?5|      .+?5}      ?? $??5q?5~      $??Birthdate: ??5      (  "System.Windows.Controls.DatePicker  5?      -   5        $??datePickerBD??5?      5?      ?? 5?      $??2q?5?      $ 
Horizontal=?5?      .+?5?      ?? $??5q?5?      $??Role: ??5?      ?? 5?      -   5        $??	tbNewRole??5?      $	??200??5?      $??5q?5?      5?      ?? 5?      -   5        $	??Add??5?      $??5q?5?      5?      5?      5?      