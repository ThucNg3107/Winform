   M S B A M L   `   `   `  ����J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View  5   	       QLST.View.DetailProduct   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:QLST.View     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          �Name$  DetailProductwd��5   	    � WindowStyle$
 None=�5
   	    � 
ResizeMode$ NoResize=�5   	   
������  � AllowsTransparency .    DetailProductVM � DataContext# [  5   	   $	��450��5   	   $	��690��5   	    � WindowStartupLocation$ CenterScreen=�6   .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction  	   Command	 6$   �� *Loadwd+
   CommandParameter
 5   $   ��  �� ElementName$ DetailProductwd��6_   5      .��5      �� 
������� �� CornerRadius$ 15��5   	   $��3q�5   	   ���#97af8f 5   
     5      $ MouseLeftButtonDown��6   . 5         	 6(   �� *
MoveWindow+
 5!   (   �� $ DetailProductwd��6c   5"        5#      $ Loaded��6   . 5$        	 6(   �� *	GetName+
 5%   (   �� $ DetailProductwd��6c   5&      ._�5(   
   �  � ColumnDefinitions 5)      �� 5*      �� 5+      .+�5-      � $��1��6    � RowDefinitions 5.      �� 5/      $��30 �6$   �� 50      .+�52      � $��0��6   
������ .+�53      ��  �� Orientation$ 
Horizontal=�54      $��Right=�55      $��Center=�56      $��0,0,10,0q�57      .+�59      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=�62   ���#97af8f$��24��6]   $��24��6i   $��0,0,8,0q�6t    5:        5;   "   $ MouseLeftButtonDown��61   . 5<   &     	 6<   �� *
Minimizewd+
 5=   (   �� $ DetailProductwd��6c   5>   #   5@        5A      $ 
CloseThick=�62   ���#97af8f$��24��6Y   $��24��6e    5B        5C   "   $ MouseLeftButtonDown��61   . 5D   &     	 6<   �� *	Closewd+
 5E   (   �� $ DetailProductwd��6c   5F   #   5H      5I      5J      � 5K      $��1��6   .+�5L      �� -   5         ��Name$ HinhAnh��5M      $��Center=�5N      5O      5P      � 5Q      $��0��6   $��30q�6#   .+�5R      �  5S      �� 5T      $��3* �6(   �� 5U      .+�5W      �� $ Vertical=�6!   $��10,0,0,0q�5X   !   $��0��5Y   !   .+�5Z      �� -   5         ��Name$ TenSP��5`   $   $
��Left=�5[   %   $��40(�5\   $   .  (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�5]   $   $��0q�5^   $    
 Custom#��[ 5_   $   5`   $   �� 5b      -   5         ��Name$ GiaSP��5e   $   $��20(�5c   $   #��[ 5d   $   5e   $   �� 5g      $ 
Horizontal=�6%   .+�5h      �� #��[ 5i   !   $��14(�5j   !   $��Center=�5k   !   $��Loại sản phẩm: ��5l   !   �� 5n      -   5        $ LoaiSP��5s   $   $��Center=�5o   !   $��14(�5p   $   $ Hidden=�5q   $   #��[ 5r   $   5s   $   5u      �� 5v      -   5        $
 SLSP��5z   $   $��14(�5w   $   #��[ 5x   $   $��0,0,0,10q�5y   $   5z   $   �� 5|      .+�5}      �� -   5        $
 Size��5�   )   $��	0,-10,0,0q�5~   )   $��14(�5   )   #��[ 5�   )   $��
Kích cỡ��5�   )   �� 5�      -   5         ��Name$ kichco��5�   +   ��5�   "   �� 5�   &   .R�5�   *   �� $��0q�5�   )   $��20��5�   )   $��50��5�   )   ���#97af8f$ 10��5�   )   ._�5�   .   �� #��[ 5�   8   $��Center=�5�   8   $��Center=�5�   8   
���������5�   8   �� *SIZE+5�   8   5�   +   5�   '   ��5�   "   �� 5�   &   .R�5�   *   � 5�   '   5�      5�      9� 5�      -	   5         9�Name$
 Info��5�      
������ $��Chi tiết sản phẩm��5�      #��[ 5�      .��5�      �� -
   5        $
 Mota��5�   &   $��80��5�   &    �� TextWrapping$
 Wrap=�5�   &   $ Hidden=�5�   &   $��0q�5�   &    �� AcceptsReturn . " �� VerticalScrollBarVisibility$ Visible=�5�   &   5�      5�      �� 5�      $��1��6!   $ Vertical=�5�   !   $��0,0,0,0q�5�   !   .+�5�      �� -   5         ��Name$ 
btncapnhat��5�   !   $��CẬP NHẬT��5�   !   $��0,10,0,0q�5�   !   $	��230��5�   !   $��0q�5�   !   $y�	Collapsed=�5�   !   ���#97af8f 5�        5�   "   $ Click��61   . 5�   &     	 6<   �� *UpdateProduct+
 5�       �� $ DetailProductwd��6[   5�   #   5�      �� 5�      -   5        $ btnxoa��5�   !   $
��XÓA��5�   !   $��0,10,0,0q�5�   !   $	��230��5�   !   $��0q�5�   !   $y�	Collapsed=�5�   !   ���#97af8f 5�        5�   "   $ Click��61   . 5�   &     	 6<   �� *DeleteProduct+
 5�       �� $ DetailProductwd��6[   5�   #   5�      5�      5�      5�      5�      5�      5�      