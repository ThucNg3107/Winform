   M S B A M L   `   `   `  ����J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View  5   	       QLST.View.RegisterView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:QLST.View     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	   -   5          �Name$  
Registerwd��5   	      
RegisterVM � DataContext# [  5
   	    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5   	   
������  � AllowsTransparency . $	��450��5   $   $	��650��61    � WindowStartupLocation$ CenterScreen=�6=   .��5      ��  �� CornerRadius$ 15��6   
�������.  (System.Windows.Interactivity.Interaction   Triggers 5   
   /  )System.Windows.Interactivity.EventTrigger  5         	EventName$ MouseLeftButtonDown��6   .  (System.Windows.Interactivity.TriggerBase	   Actions.	 5      6  0System.Windows.Interactivity.InvokeCommandAction  
   Command
 6(   �� *Movewd+   CommandParameter 5   8   ��  �� ElementName$ 
Registerwd��6n   5      ._�5   
   �  � RowDefinitions 5      �� 5      $��30 �6    �� 5      $��30 �6    �� 5      .+�5      � $��0��6   
������ .+�5      ��  �� Orientation$ 
Horizontal=�5    !   $��Right=�5!   !   $��Center=�5"   !   $��0,0,10,0q�5#   !   .+�5%      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=�6.   
���   �$��24��6W   $��24��6c   $��0,0,8,0q�6n    5&        5'      $ MouseLeftButtonDown��6-   .	 5(   "     
 68   �� *
Minimizewd+ 5)   8   �� $ 
Registerwd��6n   5*      5,        5-      $ 
CloseThick=�6.   
���   �$��24��6S   $��24��6_    5.        5/      $ MouseLeftButtonDown��6-   .	 50   "     
 68   �� *Close1+ 51   8   �� $ 
Registerwd��6n   52      54      55      56      � 57      $��1��6   .+�58      �� $��
ĐĂNG KÝ��59      $��Center=�5:      $��24(�5;      ���#97af8f 
 Custom#��[ 5=      5?      � 5@      $��2��6   $��0,15,0,0q�5A      .+�5C      �  5D      �� 5E      $	��300 �6(   �� 5F       � ColumnDefinitions 5H      �� 5I      $	��210 �6+   �� 5J      .+�5L      �� $��0,0,0,0.333q�6   $��2��62   ._�5M      A� $	��150��6"   $	��150��6/   $	��Top=�5N      $
��Left=�66   $��30q�5O      $��5��6*    J� Effect 5P      3  -System.Windows.Media.Effects.DropShadowEffect  5Q   "      ShadowDepth$ 0Q�63      Color$ Black��5R         Opacity$ 10Q�5S         
BlurRadius$ 10Q�5T      ��5V      �� 5W   "   -   5        HinhAnh1�� �� ImageSource 5W   ?   �� *linkaddimage+5Y      5Z      �� 5[      $
��Left=�6   $��
30,-85,0,0q�68   $	��Top=�6L    ! MaterialDesignFlatMidBgButton#��[ 5\      $��Thêm ảnh đại diện��5]      #��[ 65   $��0q�5^      $	��160��5_      $��40��6%   ���#97af8f
�������$��1��5`       5a        5b      $ Click��6-   .	 5c   "     
 68   �� *
AddImage+ 5d   4   �� $ HinhAnh1��6h   5e      5g      � 5h      $��1��6   .+�5i      �� .+�5j      �� $ 
Horizontal=�5k      .+�5m   "   �� -   5         ��Name$
 User��5w   %   $��0,10,0,0q�5n   %   
���   �)  #MaterialDesignThemes.Wpf.HintAssist   
Foreground
 �   �.  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush �#97af8f$	��190��5q   %     MaterialDesignFilledTextBox#��[ 5r   %   $	��Top=�5s   %    �� AcceptsReturn .  �� TextWrapping$
 Wrap=�5u   %   $	��400��5v   %   #��[ 5x   %      Hint$ Tên đăng nhập��5y   %   G� 5z   "   -   5         G�Name$ password��5z   .   $��	10,10,0,0q�5{   .   $��45��5|   .   $	��190��5}   .    # MaterialDesignFilledPasswordBox#��[ 5~   .   $��11(�5   .   $
��Bold"�5�   .   #��[ 5�   .   
 �   � �#6C63FF$ Mật khẩu��5�   .    5�   &     5�   *   $ PasswordChanged��69   .	 5�   .     
 6D   �� *PasswordChangedCommand+ 5�   8   �� $ password��6l   5�   +   5�   #   5�      �� 5�      $ 
Horizontal=�5�   !   $��0,10,0,0q�5�   !   .+�5�   "   �� -   5        $ TenND��5�   4   $��0,10,0,0q�5�   %   
���   �
 �   � �#97af8f$	��190��5�   %   #��[ 5�   %   $	��Top=�5�   %    . $
 Wrap=�5�   %   $	��400��5�   %   #��[ 5�   %   $ 	Họ tên��5�   %   �� 5�   "   -   5         ��Name$ GT��5�   %   $��	10,10,0,0q�5�   %   #��[ 5�   1      MaterialDesignFilledComboBox#��[ 5�   %   
 �   � �#97af8f$ Giới tính��5�   %   $��45��5�   %   $	��190��5�   %   .@�5�   &   �� $	��Nam��5�   %   �� 5�   &   $
��Nữ��5�   %   5�   #   5�      �� 5�      $ 
Horizontal=�5�   !   $��0,10,0,0q�5�   !   .+�5�   "   (	  "System.Windows.Controls.DatePicker	  -   5         	 Name$ NS��5�   @   
 �   � �#97af8f
���   �#��[ 5�   -   |�.  $ 
Ngày sinh��5�   -    " MaterialDesignFilledDatePicker#��[ 6X   $
��Left=�6�   $	��190��6�   5�   #   �� 5�   "   -   5        $	 SDT��5�   D   $��10,0,0,0q�5�   )   $	��190��6<   #��[ 5�   )   
 �   � �#97af8f$	��Top=�5�   )    . $
 Wrap=�5�   )   $
��Left=�5�   )   #��[ 5�   )   $ Số điện thoại��5�   )   5�      �� 5�      -	   5        $
 Mail��5�   4   
���   �$��
-50,10,0,0q�5�   %   #��[ 5�   %   $	��Top=�5�   %    . $
 Wrap=�5�   %   $	��400��5�   %   
 �   � �#97af8f#��[ 5�   %   $ Email��5�   %   $	��390��6L   �� 5�      -
   5        $ DC��5�   4   
���   �$��
-50,10,0,0q�5�   %   #��[ 5�   %   $	��Top=�5�   %    . $
 Wrap=�5�   %   $	��400��5�   %   
 �   � �#97af8f#��[ 5�   %   $ Địa chỉ��5�   %   $	��390��6N   5�      5�      � 5�      $��1��6   $��1��6(   .+�5�      �� $	��390��5�      $
��Left=�5�      $	��Top=�5�      $��
Đăng ký��5�      $��0q�5�      #��[ 5�      
����������#97af8f$��40��5�      #��[ 5�       5�        5�   "   $ Click��61   .	 5�   &     
 6<   �� *
Register+ 5�   8   �� $ 
Registerwd��6n   5�   #   5�      5�      5�      5�      5�      5�      5�      