   M S B A M L   `   `   `  ����J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View  5          QLST.View.ChangePassword   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      )localclr-namespace:QLST.View     5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      -   5          �Name$  ChangePasswd��5       � WindowStyle$
 None=�5
   	    � 
ResizeMode$ NoResize=�5   	   
������  � AllowsTransparency .    ChangePassVM � DataContext# [  5   	   $	��450��5   	   $	��350��5   	   .��5      �� $��4q�6    �� CornerRadius$ 15��5      
����������#97af8f.  (System.Windows.Interactivity.Interaction   Triggers 5   
   /  )System.Windows.Interactivity.EventTrigger  5         	EventName$ MouseLeftButtonDown��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction  	   Command	 6(   �� *MoveWd+
   CommandParameter
 5   (   ��  �� ElementName$ ChangePasswd��6`   5      ._�5   
   �  � RowDefinitions 5      �� 5       $��30 �6    �� 5!      $	��300 �6    �� 5"      .+�5$      ��  �� Orientation$ 
Horizontal=�5%   !   $��Right=�5&   !   $��Center=�5'   !   $��0,0,10,0q�5(   !   .+�5*      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=�6*   ���#97af8f$��24��6U   $��24��6a   $��0,0,8,0q�6l    5+        5,      $ MouseLeftButtonDown��6)   . 5-        	 64   �� *
MinimizeWd+
 5.   8   �� $ ChangePasswd��6p   5/      51        52      $ 
CloseThick=�6*   ���#97af8f$��24��6Q   $��24��6]    53        54      $ MouseLeftButtonDown��6)   . 55        	 64   �� *	Closewd+
 56   8   �� $ ChangePasswd��6p   57      59      5:      � 5;      $��1��6   .+�5<      �� $��0,5,0,0q�6   .+�5=      �� $��25(�6!   $��	50,0,0,10q�5>        
 Custom#��[ 5?       $��Đổi mật khẩu��6E   ���#97af8f5@      �� 5A      $ 10��6   $��78��6/   $	��300��6;   
������� J� Effect 5B      3  -System.Windows.Media.Effects.DropShadowEffect  5C         ShadowDepth$ 5Q�6/      Color$ #97af8f��5D         Opacity$	 0.5Q�5E         
BlurRadius$ 10Q�5F      ._�5H      G� -   5         G�Name$ oldpass��5H   &    # MaterialDesignFilledPasswordBox#��[ 5I   !   $��Center=�5J   !   .  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush �#97af8f)  #MaterialDesignThemes.Wpf.HintAssist   
Foreground �#97af8f$��48��5M   !   $	��250��5N   !   $��12(�5O   !   
�������$
��Bold"�5Q   !   #��[ 5R   !      Hint$ Nhập mật khẩu cũ��5S   !    5T        5U   "   $ PasswordChanged��61   . 5V   &     	 6<   �� *OldPassChangedCommand+
 5W   8   �� $ oldpass��6k   5X   #   5Z      5[      �� 5\      $ 10��6   $	��150��6/   $��0,10,0,0q�6<   $	��300��6N   
������� 5]        5^      $ 5Q�6/   $ #97af8f��5_      $	 0.5Q�5`      $ 10Q�5a      ._�5c      �� $��Center=�6%   .+�5d      G� -   5        $ newpass��5e   !   #��[ 5f   !    �#97af8f �#97af8f$��0,0,0,15q�5i   !   $��48��5j   !   $	��250��5k   !   $��12(�5l   !   
���   �
�������$
��Bold"�5o   !   #��[ 5p   !   $ Nhập mật khẩu mới��5q   !    5r   "     5s   &   $ PasswordChanged��65   . 5t   *     	 6@   �� *PasswordChangedCommand+
 5u   %   �� $ newpass��5v   '   5x      G� 5y      -   5        $ 	passagain��5y   *   #��[ 5z   !   $��48��5{   !   $	��250��5|   !   $��12(�5}   !    �#97af8f �#97af8f
���   �
�������$
��Bold"�5�   !   #��[ 5�   !   $% Nhập lại mật khẩu mới��5�   !    5�   "     5�   &   $ PasswordChanged��65   . 5�   *     	 6@   �� *NewPassChangedCommand+
 5�   %   �� $ 	passagain��5�   '   5�      5�      5�      5�      5�      � 5�      $��2��6   .+�5�      �� .+�5�      �� $��Center=�5�      $��Center=�68   +	  %MaterialDesignThemes.Wpf.ButtonAssist 	  CornerRadius$ 5��5�      $	��250��5�      $��35��6)   $��0q�5�      #��[ 5�      $��0,5,0,10q�6B   ���#97af8f 5�        5�      $ 3Q�6/   $ #97af8f��5�      $	 0.5Q�5�      $ 5Q�5�      .��5�   )   Lưu 5�        5�      $ Click��6-   . 5�   "     	 68   �� *Save+
 5�   8   �� $ ChangePasswd��6p   5�      5�      �� 5�      $	��Top=�5�      $��Center=�61   $ 5��5�      
�������$	��250��5�   ,   $��35��68   #��[ 5�      ���#97af8f
������ .��5�   3   Thoát 5�        5�      $ 3Q�5�   %   $ #97af8f��5�   %   $	 0.5Q�5�   %   $ 5Q�5�   %    5�        5�      $ Click��6-   . 5�   "     	 68   �� *	Closewd+
 5�   8   �� $ ChangePasswd��6p   5�      5�      5�      5�      5�      5�      5�      