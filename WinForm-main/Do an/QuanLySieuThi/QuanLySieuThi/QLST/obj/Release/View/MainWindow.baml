   M S B A M L   `   `   `  ���� J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View      QLST.View.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     )localclr-namespace:QLST.View     _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  -     �Name$  Mainwd�� 
  MainVM � DataContext# [   � WindowStyle$
 None=� � 
ResizeMode$ NoResize=�
������  � AllowsTransparency . $	��600��$	��850�� � WindowStartupLocation$ CenterScreen=�.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction  	   Command	 �� *Loadwd+
   CommandParameter
 ��  �� ElementName$ Mainwd��.���� 
������� �� CornerRadius$ 40��   $ MouseLeftButtonDown��.   	 �� *
MoveWindow+
 �� $ Mainwd��._��  � ColumnDefinitions �� $	��175 ��� .+�� $��0�����#97af8f � RowDefinitions �� $	��120 ��� .+�� $��0��.+���  �� Orientation$ Vertical=�.+��� $
��CHTL��$��35(�$��0,30,0,0q�$��Center=�$��Center=�  NameApp#��[  J� RenderTransformOrigin$ 0.5,0.5&�
��������� -    ��Name$ Tutor��
������ 
������ $��0q�$��Tutor�� 
 Custom#��[ � $��1��.+��� .+�	� -    	�Name$ btnHome��  BtnHome#��[  d� 	IsChecked$
 TrueY�#��[ 
 J� Uid$ 0��   $ Click��.   	 �� *	SwitchTab+
 �� $ Mainwd��  $ 	MouseMove��.   	 �� *
GetIdTab+
 �� $ btnHome��	� -   $ btnProducts��  
BtnProduct#��[ #��[ $ 2��   $ Click��.   	 �� *	SwitchTab+
 �� $ Mainwd��  $ 	MouseMove��.   	 �� *
GetIdTab+
 �� $ btnProducts��	� -   $ btnKH�� 	 BtnKH#��[ #��[ $ 3��   $ Click��.   	 �� *	SwitchTab+
 �� $ Mainwd��  $ 	MouseMove��.   	 �� *
GetIdTab+
 �� $ btnKH��	� -   $ 	btnImport��  BtnWarehouse#��[ #��[ $ 4��   $ Click��.   	 �� *	SwitchTab+
 �� $ Mainwd��  $ 	MouseMove��.   	 �� *
GetIdTab+
 �� $ 	btnImport��	� -   $ 	btnReport��  BtnStatistic#��[ #��[ $ 5��y��� *	SetQuanLy+   $ Click��.   	 �� *	SwitchTab+
 �� $ Mainwd��  $ 	MouseMove��.   	 �� *
GetIdTab+
 �� $ 	btnReport��	� -   $ btnQLNNV��$ 6��  	BtnManage#��[ #��[ y��� *	SetQuanLy+   $ Click��.   	 �� *	SwitchTab+
 �� $ Mainwd��  $ 	MouseMove��.   	 �� *
GetIdTab+
 �� $ btnQLNNV��	� -	   $ 
btnSetting�� 	 
BtnSetting#��[	 #��[ $ 7��   $ Click��.   	 �� *	SwitchTab+
 �� $ Mainwd��  $ 	MouseMove��.   	 �� *
GetIdTab+
 �� $ 
btnSetting��� $��2��$��Bottom=�.+��� .+�	� -
   $ btnOrder�� 
 BtnCreateBill#��[
 $ 1��#��[    $ Click��.   	 �� *	SwitchTab+
 �� $ Mainwd��  $ 	MouseMove��.   	 �� *
GetIdTab+
 �� $ btnOrder����   	BtnLogOut#��[ #��[    $ Click��.   	 �� *LogOutCommand+
 �� $ Mainwd�� � -     �Name$
 Main��$��1��  � Source$ /view/HomeView.xaml?�  � NavigationUIVisibility$ Hidden=�# [  � $��1�� �� $	��150 ��� .+�� $��0��.+��� $ 
Horizontal=�$��Right=�$��	0,10,25,0q�.+�'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=����#97af8f$��24��$��24��$��0,0,8,0q�   $ MouseLeftButtonDown��.   	 �� *MinimizeLogin+
 �� $ Mainwd��  $ 
CloseThick=����#97af8f$��24��$��24��   $ MouseLeftButtonDown��.   	 �� *
CloseLogin+
 �� $ Mainwd��