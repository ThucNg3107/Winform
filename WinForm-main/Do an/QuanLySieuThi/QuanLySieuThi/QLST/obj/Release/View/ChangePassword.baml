   M S B A M L   `   `   `  ���� J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View      QLST.View.ChangePassword   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     )localclr-namespace:QLST.View     _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  -     �Name$  ChangePasswd�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=�
������  � AllowsTransparency .    ChangePassVM � DataContext# [  $	��450��$	��350��.���� $��4q� �� CornerRadius$ 15��
����������#97af8f.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ MouseLeftButtonDown��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction  	   Command	 �� *MoveWd+
   CommandParameter
 ��  �� ElementName$ ChangePasswd��._��  � RowDefinitions �� $��30 ��� $	��300 ��� .+���  �� Orientation$ 
Horizontal=�$��Right=�$��Center=�$��0,0,10,0q�.+�'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=����#97af8f$��24��$��24��$��0,0,8,0q�   $ MouseLeftButtonDown��.   	 �� *
MinimizeWd+
 �� $ ChangePasswd��  $ 
CloseThick=����#97af8f$��24��$��24��   $ MouseLeftButtonDown��.   	 �� *	Closewd+
 �� $ ChangePasswd��� $��1��.+��� $��0,5,0,0q�.+��� $��25(�$��	50,0,0,10q� 
 Custom#��[ $��Đổi mật khẩu�����#97af8f�� $ 10��$��78��$	��300��
������� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     ShadowDepth$ 5Q�   Color$ #97af8f��   Opacity$	 0.5Q�   
BlurRadius$ 10Q�._�G� -    G�Name$ oldpass�� # MaterialDesignFilledPasswordBox#��[ $��Center=�.  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush �#97af8f)  #MaterialDesignThemes.Wpf.HintAssist   
Foreground �#97af8f$��48��$	��250��$��12(�
�������$
��Bold"�#��[    Hint$ Nhập mật khẩu cũ��   $ PasswordChanged��.   	 �� *OldPassChangedCommand+
 �� $ oldpass���� $ 10��$	��150��$��0,10,0,0q�$	��300��
�������   $ 5Q�$ #97af8f��$	 0.5Q�$ 10Q�._��� $��Center=�.+�G� -   $ newpass��#��[  �#97af8f �#97af8f$��0,0,0,15q�$��48��$	��250��$��12(�
���   �
�������$
��Bold"�#��[ $ Nhập mật khẩu mới��   $ PasswordChanged��.   	 �� *PasswordChangedCommand+
 �� $ newpass��G� -   $ 	passagain��#��[ $��48��$	��250��$��12(� �#97af8f �#97af8f
���   �
�������$
��Bold"�#��[ $% Nhập lại mật khẩu mới��   $ PasswordChanged��.   	 �� *NewPassChangedCommand+
 �� $ 	passagain��� $��2��.+��� .+��� $��Center=�$��Center=�+	  %MaterialDesignThemes.Wpf.ButtonAssist 	  CornerRadius$ 5��$	��250��$��35��$��0q�#��[ $��0,5,0,10q����#97af8f   $ 3Q�$ #97af8f��$	 0.5Q�$ 5Q�.��Lưu   $ Click��.   	 �� *Save+
 �� $ ChangePasswd���� $	��Top=�$��Center=�$ 5��
�������$	��250��$��35��#��[ ���#97af8f
������ .��Thoát   $ 3Q�$ #97af8f��$	 0.5Q�$ 5Q�   $ Click��.   	 �� *	Closewd+
 �� $ ChangePasswd��