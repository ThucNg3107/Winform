   M S B A M L   `   `   `  ����J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View  5   	       QLST.View.LoginWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   #localclr-namespace:QLST.View  5   	   -   5          �Name$  LoginWd��5   	    � WindowStyle$
 None=�5
   	    � 
ResizeMode$ NoResize=�5   	   
������  � AllowsTransparency .    LoginVM � DataContext# [  5   	   $	��500��5   	   $	��800��6    � WindowStartupLocation$ CenterScreen=�6"   .��5      ��  �� CornerRadius$ 30,40,40,30��5   	   
�������.  (System.Windows.Interactivity.Interaction   Triggers 5   
   /  )System.Windows.Interactivity.EventTrigger  5         	EventName$ MouseLeftButtonDown��6   .  (System.Windows.Interactivity.TriggerBase	   Actions.	 5      6  0System.Windows.Interactivity.InvokeCommandAction  
   Command
 6(   �� *	MoveLogin+   CommandParameter 5   8   ��  �� ElementName$ LoginWd��6k   5      ._�5   
   �  � ColumnDefinitions 5      �� 5      �� 5      $	��280 �6#   .+�5       � $��0��6   .+�5!      �� $"��/Resource/Image/rb_51586.png��6   $
��Left=�6B   $��Center=�6]   5"      �� 5#      $��1��6   ���#17181F$ 	0,30,30,0��5$      $��0q�5%      ._�5'      �  � RowDefinitions 5(      �� 5)      $	��150 �6(   67   �� 5*      6*   .+�5,      � $��0��6   .+�5-      �� $��Right=�6%   $��	0,10,20,0q�6A    �� Orientation$ 
Horizontal=�6T   .+�5.      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=�66   
�������$��24��6_   $��24��6k   $��0,0,8,0q�6v    5/   "     50   &   $ MouseLeftButtonDown��65   .	 51   *     
 6@   �� *MinimizeLogin+ 52   8   �� $ LoginWd��6k   53   '   55        56      $ 
CloseThick=�66   
�������$��24��6[   $��24��6g    57   "     58   &   $ MouseLeftButtonDown��65   .	 59   *     
 6@   �� *
CloseLogin+ 5:   8   �� $ LoginWd��6k   5;   '   5=      5>      �� 5?      $
��Left=�6%   $��Center=�6@   $��10,0,0,0q�6[   .+�5@      �� $��24(�6(    
 Custom#��[ 66   
�������PHẦN MỀM6|   �� 5A      $��24(�6(   #��[ 66   
�������QUẢN LÝ CỬA HÀNG6�   5B      5C      � 5D      $��1��6   .+�5E      �� $��0,20,0,0q�6%   .+�5F      �� -   5         ��Name$ dangnhap��5U   !     MaterialDesignFilledTextBox#��[ 5H   !   
�������$��48��5J   !   $	��250��5K   !   $��12(�5L   !   $
��Bold"�5M   !   )  #MaterialDesignThemes.Wpf.HintAssist   
Foreground �#97af8f.  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush �#97af8f$	��Top=�5P   !    �� AcceptsReturn .  �� TextWrapping$
 Wrap=�5R   !   $	��400��5S   !   $��0,0,0,10q�5T   !   #��[ 5V   !      Hint$ TÊN ĐĂNG NHẬP��5W   !   ��5G   !   �� *
Username+5W   !   G� 5Y      -   5         G�Name$ password��5Y   *    # MaterialDesignFilledPasswordBox#��[ 5Z   !   $	��Top=�5[   !   
�������$��0,0,0,40q�5]   !   $��48��5^   !   $	��250��5_   !   $��12(�5`   !   $
��Bold"�5a   !   #��[ 5b   !    �#97af8f �#97af8f$ MẬT KHẨU��5e   !    5f   "     5g   &   $ PasswordChanged��65   .	 5h   *     
 6@   �� *PasswordChangedCommand+ 5i   8   �� $ password��6l   5j   '   5l      �� 5m      $��ĐĂNG NHẬP��5n   !   $��47��5o   !   $	��252��5p   !   #��[ 5q   !   
�������
���   �
������  5v   "     5w   &   $ Click��65   .	 5x   *     
 6@   �� *Login+ 5y   8   �� $ LoginWd��6k   5z   '   5|      �� 5}      $ 
Horizontal=�6)   $��15,0,0,0q�6B   .+�5~   "   �� $��
ĐĂNG KÝ��5   !   $��0,10,0,0q�5�   !   #��[ 5�   !   
������  5�   "     5�   &   $ MouseLeftButtonDown��65   .	 5�   *     
 6@   �� *RegisterCommand+ 5�   8   �� $ LoginWd��6k   5�   '   ��5�   &   �� 5�   *    �� 
TargetType" ��60   .�5�   .   ��  �� Property � �� �� Value
 �����6K    �� Triggers 5�   .   P� 5�   2    P� Property �@J�IsMouseOver P� Value . . �5�   6   ��  � ��
 ��ح�6S   �� 5�   6    � ��$ 	Underline{�6X   5�   3   5�   +   5�   #   5�      5�      5�      5�      5�      5�      5�      5�      