   M S B A M L   `   `   `  ����J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View  5   	       QLST.View.AddNDView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:QLST.View     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	   -   5          �Name$  AddNDwd��5   	      AddNDVM � DataContext# [  5
   	    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5   	   
������  � AllowsTransparency . $	��460��5   $   $	��650��61    � WindowStartupLocation$ CenterScreen=�6=   .��5      ��  �� CornerRadius$ 15��6   
�������._�5   
   �  � RowDefinitions 5      �� 5      $��30 �6    �� 5      $��30 �6    �� 5      .+�5      � $��0��6   
������ .+�5      ��  �� Orientation$ 
Horizontal=�5   !   $��Right=�5   !   $��Center=�5   !   $��0,0,10,0q�5   !   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon  	   Kind$	 WindowMinimize=�6.   ���#97af8f$��24��6Y   $��24��6e   $��0,0,8,0q�6p   .  (System.Windows.Interactivity.Interaction
   Triggers
 5       /  )System.Windows.Interactivity.EventTrigger  5!         	EventName$ MouseLeftButtonDown��6-   .  (System.Windows.Interactivity.TriggerBase   Actions. 5"   "   6  0System.Windows.Interactivity.InvokeCommandAction     Command 68   �� *
Minimizewd+   CommandParameter 5#   8   ��  �� ElementName$ AddNDwd��6k   5$      5&        5'      $	 
CloseThick=�6.   ���#97af8f$��24��6U   $��24��6a   
 5(        5)      $ MouseLeftButtonDown��6-   . 5*   "      68   �� *	Closewd+ 5+   8   �� $ AddNDwd��6k   5,      5.      5/      50      � 51      $��1��6   .+�52      �� $"��THÊM THÔNG TIN NHÂN VIÊN��53      $��Center=�54      $��24(�55      ���#97af8f 
 Custom#��[ 57      59      � 5:      $��2��6   $��0,15,0,0q�5;      .+�5=      �  5>      �� 5?      $
��322* �6(   �� 5@      $
��123* �6(    � ColumnDefinitions 5B      �� 5C      $	��210 �6+   �� 5D      .+�5F      �� $��0,0,0,0.333q�6   $��2��62   ._�5G      A� $	��150��6"   $	��150��6/   $	��Top=�5H      $
��Left=�66   $��30q�5I      $��5��6*    J� Effect 5J      3  -System.Windows.Media.Effects.DropShadowEffect  5K   "      ShadowDepth$ 0Q�63      Color$ Black��5L         Opacity$ 10Q�5M         
BlurRadius$ 10Q�5N      ��5P      �� 5Q   "   -   5        HinhAnh1�� �� ImageSource 5Q   ?   �� *linkaddimage+5S      5T      �� 5U      $
��Left=�6   $��
30,-80,0,0q�68   $	��Top=�6L    ! MaterialDesignFlatMidBgButton#��[ 5V      $��Thêm ảnh đại diện��5W      #��[ 65   $��0q�5X      $	��160��5Y      $��40��6%   ���#97af8f
�������$��1��5Z      
 5[        5\      $ Click��6-   . 5]   "      68   �� *
AddImage+ 5^   4   �� $ HinhAnh1��6h   5_      5a      � 5b      $��1��6   .+�5c      �� .+�5d      �� $ 
Horizontal=�5e      .+�5g   "   �� -   5         ��Name$
 MaND��5p   4   $��0,10,0,0q�5h   %   
���   �)  #MaterialDesignThemes.Wpf.HintAssist   
Foreground
 �   �.  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush �#6C63FF$	��190��5k   %     MaterialDesignFilledTextBox#��[ 5l   %   $	��Top=�5m   %    �� AcceptsReturn .  �� TextWrapping$
 Wrap=�5o   %   $	��400��5p   %   {�.  #��[ 5r   %      Hint$ Mã ND��5s   %   �� 5t   "   -   5        $ TenND��5}   4   $��	10,10,0,0q�5u   %   
���   �
 �   � �#6C63FF$	��190��5x   %   #��[ 5y   %   $	��Top=�5z   %    . $
 Wrap=�5|   %   $	��400��5}   %   #��[ 5~   %   $ 	Họ tên��5   %   5�      �� 5�      $ 
Horizontal=�5�   !   $��0,10,0,0q�5�   !   .+�5�   "   �� -   5         ��Name$ GT��5�   %   #��[ 61      MaterialDesignFilledComboBox#��[ 5�   %   
 �   � �#6C63FF$ Giới tính��5�   %   $	��190��5�   %   .@�5�   &   �� $	��Nam��5�   %   �� 5�   &   $
��Nữ��5�   %   �� 5�   &   $��Khác��5�   %   5�   #   �� 5�   "   -   5        $	 QTV��5�   %   $��10,0,0,0q�5�   %   #��[ 5�   2   #��[ 5�   %   
 �   � �#6C63FF$ Chức vụ��5�   %   $	��190��5�   %   .@�5�   &   �� $��
Quản lý��5�   %   �� 5�   &   $��Nhân viên��5�   %   5�   #   5�      �� 5�      $ 
Horizontal=�5�   !   $��0,10,0,0q�5�   !   .+�5�   "   (	  "System.Windows.Controls.DatePicker	  -   5         	 Name$ NS��5�   @   
 �   � �#6C63FF
���   �#��[ 5�   -   |�.  $ 
Ngày sinh��5�   -    " MaterialDesignFilledDatePicker#��[ 6X   $
��Left=�6�   $	��190��6�   5�   #   �� 5�   "   -   5        $	 SDT��5�   D   $��10,0,0,0q�5�   )   $	��190��6<   #��[ 5�   )   
 �   � �#6C63FF$	��Top=�5�   )    . $
 Wrap=�5�   )   $
��Left=�5�   )   #��[ 5�   )   $ Số điện thoại��5�   )   5�      �� 5�      -	   5        $
 Mail��5�   4   
���   �$��
-50,10,0,0q�5�   %   #��[ 5�   %   $	��Top=�5�   %    . $
 Wrap=�5�   %   $	��400��5�   %   
 �   � �#6C63FF#��[ 5�   %   $ Email��5�   %   $	��390��6L   �� 5�      -
   5        $ DC��5�   4   
���   �$��
-50,10,0,0q�5�   %   #��[ 5�   %   $	��Top=�5�   %    . $
 Wrap=�5�   %   $	��400��5�   %   
 �   � �#6C63FF#��[ 5�   %   $ Địa chỉ��5�   %   $	��390��6N   5�      5�      � 5�      $��1��6   $��1��6(   .+�5�      �� $��0,20,0,0q�5�      $	��390��5�      $
��Left=�5�      $	��Top=�5�      $��Thêm��5�      $��0q�5�      #��[ 5�      
����������#97af8f$��40��5�      #��[ 5�      
 5�        5�      $ Click��6-   . 5�   "      68   �� *AddNDCommand+ 5�   8   �� $ AddNDwd��6k   5�      5�      5�      5�      5�      5�      5�      5�      