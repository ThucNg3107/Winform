   M S B A M L   `   `   `  ����J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View  5   	       QLST.View.AddCustomerView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:QLST.View     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          �Name$  AddCswd��5   	    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5	   	   
������  � AllowsTransparency .    AddCsVM � DataContext# [  5   	   $	��550��5   	   $	��350��5   	    � WindowStartupLocation$ CenterScreen=�6   .��5      ��  �� CornerRadius$ 15��5   	   
����������#97af8f$��2q�5   	   .  (System.Windows.Interactivity.Interaction   Triggers 5   
   /  )System.Windows.Interactivity.EventTrigger  5         	EventName$ MouseLeftButtonDown��6   .  (System.Windows.Interactivity.TriggerBase	   Actions.	 5      6  0System.Windows.Interactivity.InvokeCommandAction  
   Command
 6(   �� *
MoveWindow+   CommandParameter 5   (   ��  �� ElementName$ AddCswd��6[   5      ._�5   
   �  � ColumnDefinitions 5      �� 5       .+�5"      � $��0��6    � RowDefinitions 5#      �� 5$      $��30 �6$   �� 5%      .+�5'      � $��0��6   
������ .+�5(      ��  �� Orientation$ 
Horizontal=�5)   !   $��Right=�5*   !   $��Center=�5+   !   $��0,0,10,0q�5,   !   .+�5.      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=�62   ���#97af8f$��24��6]   $��24��6i   $��0,0,8,0q�6t    5/        50   "   $ MouseLeftButtonDown��61   .	 51   &     
 6<   �� *
Minimizewd+ 52   8   �� $ AddCswd��6k   53   #   55        56      $ 
CloseThick=�62   ���#97af8f$��24��6Y   $��24��6e    57        58   "   $ MouseLeftButtonDown��61   .	 59   &     
 6<   �� *	Closewd+ 5:   8   �� $ AddCswd��6k   5;   #   5=      5>      5?      � 5@      $��1��6   .+�5A      �� $ Vertical=�6!   $��	15,20,0,0q�5B   !   .+�5D      �� $��
-15,0,0,20q�5E      $��Center=�5F      $��THÔNG TIN KHÁCH HÀNG��5G      $��24(�5H      ���#97af8f 
 Custom#��[ 5J      �� 5L      $ 
Horizontal=�6%   .+�5M      �� $ Vertical=�6)   .+�5N   "   �� $��8,0,0,0q�5O   %   $��MÃ KHÁCH HÀNG��5P   %   ���#97af8f#��[ 5R   %   �� 5T   "   $ 10��5U   %   $��2q�5V   %   
�������._�5Y   "   �� -   5         ��Name$
 MaKH��5[   %   {�.  $
��Left=�5\   %   $	��150��5]   %   #��[ 5^   %   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ THÊM MÃ KH��5_   %   $��0q�5`   %   .  (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�5a   %      TextFieldCornerRadius$ 10��5b   %      TextBoxViewMargin$ 10,0,0,0q�5c   %      UnderlineBrush
 �   �5d   %   5f   #   5g      �� 5h      $ Vertical=�6)   $��10,0,0,0q�5i   )   .+�5k   "   �� $��8,0,0,0q�5l   %   $��	HỌ TÊN��5m   %   ���#97af8f#��[ 5o   %   �� 5q   "   -   5        $ TenKH��5r   %   #��[ 5s   %   $
��Left=�5t   %   $	��150��5u   %   $��2q�5v   %   $ Hidden=�5w   %   $ 10��5x   %   $ THÊM HỌ TÊN��5y   %   $ 10,0,0,0q�5z   %   
 �   �5{   %   5}      5~      �� 5      $ 
Horizontal=�6%   $��0,10,0,0q�5�   %   .+�5�      �� $ Vertical=�6)   .+�5�   "   �� $��8,0,0,0q�5�   %   ���#97af8f$��SỐ ĐIỆN THOẠI��5�   %   #��[ 5�   %   �� 5�   "   -   5        $	 SDT��5�   %   $
��Left=�5�   %   $	��150��5�   %   #��[ 5�   %   $��2q�5�   %   $ Hidden=�5�   %   $ 10��5�   %   $ 	THÊM SDT��5�   %   $ 10,0,0,0q�5�   %   
 �   �5�   %   5�      �� 5�      $ Vertical=�6)   $��10,0,0,0q�5�   )   .+�5�   "   �� $��8,0,0,0q�5�   %   $��GIỚI TÍNH��5�   %   ���#97af8f#��[ 5�   %   �� 5�   "   -   5         ��Name$ GT��5�   %   $��30��5�   %   #��[ 5�   %   $
��Left=�5�   %   $	��150��5�   %   $��2q�5�   %   $ Hidden=�5�   %   $ 10��5�   %   $ THÊM GIỚI TÍNH��5�   %   $ 10,0,0,0q�5�   %   
 �   �.@�5�   &   �� $	��Nam��63   �� 5�   &   $
��Nữ��63   �� 5�   &   $��Khác��63   5�   #   5�      5�      �� 5�      $��8,10,0,0q�5�   %   ���#97af8f$��ĐỊA CHỈ��5�   %   #��[ 5�   %   �� 5�      -   5        $ DC��5�   %   #��[ 5�   %   $
��Left=�5�   %   $	��310��5�   %   $	��150��5�   %   $��2q�5�   %   $ Hidden=�5�   %   $ 10��5�   %   $ THÊM ĐỊA CHỈ��5�   %   $ 10,0,0,0q�5�   %   
 �   �$ �� HorizontalScrollBarVisibility$
 Auto=�5�   %    �� AcceptsReturn .  �� TextWrapping$
 Wrap=�5�   %   �� 5�      -   5         ��Name$ 	btnupdate��5�   !   $��THÊM KHÁCH HÀNG��5�   !   $��0,30,0,0q�5�   !   $	��230��5�   !   $��0q�5�   !   ���#97af8f 5�        5�   "   $ Click��61   .	 5�   &     
 6<   �� *AddCsCommand+ 5�   8   �� $ AddCswd��6k   5�   #   5�      5�      5�      5�      5�      5�      5�      