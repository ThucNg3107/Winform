   M S B A M L   `   `   `  ����J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View  5   	       QLST.View.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:QLST.View     5   	   _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   -   5          �Name$  Mainwd��5   	    
  MainVM � DataContext# [  5
   	    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5   	   
������  � AllowsTransparency . $	��600��5   	   $	��850��6    � WindowStartupLocation$ CenterScreen=�6"   .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction  	   Command	 6$   �� *Loadwd+
   CommandParameter
 5   8   ��  �� ElementName$ Mainwd��6j   5      .��5      �� 
������� �� CornerRadius$ 40��5   	    5   
     5      $ MouseLeftButtonDown��6   . 5        	 6(   �� *
MoveWindow+
 5   (   �� $ Mainwd��6Z   5      ._�5!   
   �  � ColumnDefinitions 5"      �� 5#      $	��175 �6#   61   �� 5$      6%   .+�5&      � $��0��6   ���#97af8f � RowDefinitions 5'      �� 5(      $	��120 �6$   63   �� 5)      6&   .+�5+      � $��0��6   .+�5,      ��  �� Orientation$ Vertical=�6!   .+�5-      �� $
��CHTL��5.      $��35(�5/      $��0,30,0,0q�50      $��Center=�51      $��Center=�52        NameApp#��[ 53       J� RenderTransformOrigin$ 0.5,0.5&�6:   
�������56      �� 57      -   5         ��Name$ Tutor��57   !   
������ 
������ $��0q�5:   !   $��Tutor��5<   !    
 Custom#��[ 5=   !   5>      5?      5A      � 5B      $��1��6   .+�5C      �� .+�5D      	� -   5         	�Name$ btnHome��5E        BtnHome#��[ 5F       d� 	IsChecked$
 TrueY�5G      #��[ 5H      
 J� Uid$ 0��5I       5J        5K   "   $ Click��61   . 5L   &     	 6<   �� *	SwitchTab+
 5M   8   �� $ Mainwd��6j   5N   #     5O   "   $ 	MouseMove��61   . 5P   &     	 6<   �� *
GetIdTab+
 5Q   8   �� $ btnHome��6k   5R   #   5T      	� 5U      -   5        $ btnProducts��5Y        
BtnProduct#��[ 5V      #��[ 5W      $ 2��5X       5[        5\   "   $ Click��61   . 5]   &     	 6<   �� *	SwitchTab+
 5^   <   �� $ Mainwd��6n   5_   #     5`   "   $ 	MouseMove��61   . 5a   &     	 6<   �� *
GetIdTab+
 5b   <   �� $ btnProducts��6s   5c   #   5e      	� 5f      -   5        $ btnKH��5j       	 BtnKH#��[ 5g      #��[ 5h      $ 3��5i       5l        5m   "   $ Click��61   . 5n   &     	 6<   �� *	SwitchTab+
 5o   <   �� $ Mainwd��6n   5p   #     5q   "   $ 	MouseMove��61   . 5r   &     	 6<   �� *
GetIdTab+
 5s   <   �� $ btnKH��6m   5t   #   5v      	� 5w      -   5        $ 	btnImport��5{        BtnWarehouse#��[ 5x      #��[ 5y      $ 4��5z       5}        5~   "   $ Click��61   . 5   &     	 6<   �� *	SwitchTab+
 5�   <   �� $ Mainwd��6n   5�   #     5�   "   $ 	MouseMove��61   . 5�   &     	 6<   �� *
GetIdTab+
 5�   <   �� $ 	btnImport��6q   5�   #   5�      	� 5�      -   5        $ 	btnReport��5�        BtnStatistic#��[ 5�      #��[ 5�      $ 5��5�      y�5�      �� *	SetQuanLy+ 5�        5�   "   $ Click��61   . 5�   &     	 6<   �� *	SwitchTab+
 5�   <   �� $ Mainwd��6n   5�   #     5�   "   $ 	MouseMove��61   . 5�   &     	 6<   �� *
GetIdTab+
 5�   <   �� $ 	btnReport��6q   5�   #   5�      	� 5�      -   5        $ btnQLNNV��5�      $ 6��5�        	BtnManage#��[ 5�      #��[ 5�      y�5�      �� *	SetQuanLy+ 5�        5�   "   $ Click��61   . 5�   &     	 6<   �� *	SwitchTab+
 5�   <   �� $ Mainwd��6n   5�   #     5�   "   $ 	MouseMove��61   . 5�   &     	 6<   �� *
GetIdTab+
 5�   <   �� $ btnQLNNV��6p   5�   #   5�      	� 5�      -	   5        $ 
btnSetting��5�       	 
BtnSetting#��[	 5�      #��[ 5�      $ 7��5�       5�        5�   "   $ Click��61   . 5�   &     	 6<   �� *	SwitchTab+
 5�   <   �� $ Mainwd��6n   5�   #     5�   "   $ 	MouseMove��61   . 5�   &     	 6<   �� *
GetIdTab+
 5�   <   �� $ 
btnSetting��6r   5�   #   5�      5�      � 5�      $��2��6   $��Bottom=�6(   .+�5�      �� .+�5�      	� -
   5        $ btnOrder��5�   %    
 BtnCreateBill#��[
 5�   %   $ 1��5�   %   #��[ 5�   %    5�   "     5�   &   $ Click��65   . 5�   *     	 6@   �� *	SwitchTab+
 5�   B   �� $ Mainwd��6t   5�   '     5�   &   $ 	MouseMove��65   . 5�   *     	 6@   �� *
GetIdTab+
 5�   E   �� $ btnOrder��6y   5�   '   5�      �� 5�        	BtnLogOut#��[ 5�   %   #��[ 5�   %    5�   "     5�   &   $ Click��65   . 5�   *     	 6@   �� *LogOutCommand+
 5�   @   �� $ Mainwd��6r   5�   '   5�      5�      5�      5�      5�       � 5�      -   5          �Name$
 Main��5�      $��1��6"     � Source$ /view/HomeView.xaml?�62     � NavigationUIVisibility$ Hidden=�6O   # [  6o   5�      � 5�      $��1��6    5�      �� 5�      $	��150 �6$   63   �� 5�      6&   .+�5�      � $��0��6   .+�5�      �� $ 
Horizontal=�6!   $��Right=�6:   $��	0,10,25,0q�6V   .+�5�      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=�62   ���#97af8f$��24��6]   $��24��6i   $��0,0,8,0q�6t    5�        5�   "   $ MouseLeftButtonDown��61   . 5�   &     	 6<   �� *MinimizeLogin+
 5�   8   �� $ Mainwd��6j   5�   #   5�        5�      $ 
CloseThick=�62   ���#97af8f$��24��6Y   $��24��6e    5�        5�   "   $ MouseLeftButtonDown��61   . 5�   &     	 6<   �� *
CloseLogin+
 5�   8   �� $ Mainwd��6j   5�   #   5�      5�      5�      5�      5�      5�      5      