   M S B A M L   `   `   `  ���� J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View      QLST.View.LoginWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  #localclr-namespace:QLST.View  -     �Name$  LoginWd�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=�
������  � AllowsTransparency .    LoginVM � DataContext# [  $	��500��$	��800�� � WindowStartupLocation$ CenterScreen=�.����  �� CornerRadius$ 30,40,40,30��
�������.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ MouseLeftButtonDown��.  (System.Windows.Interactivity.TriggerBase	   Actions.	 6  0System.Windows.Interactivity.InvokeCommandAction  
   Command
 �� *	MoveLogin+   CommandParameter ��  �� ElementName$ LoginWd��._��  � ColumnDefinitions �� �� $	��280 �.+�� $��0��.+��� $"��/Resource/Image/rb_51586.png��$
��Left=�$��Center=��� $��1�����#17181F$ 	0,30,30,0��$��0q�._��  � RowDefinitions �� $	��150 ��� .+�� $��0��.+��� $��Right=�$��	0,10,20,0q� �� Orientation$ 
Horizontal=�.+�'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=�
�������$��24��$��24��$��0,0,8,0q�   $ MouseLeftButtonDown��.	   
 �� *MinimizeLogin+ �� $ LoginWd��  $ 
CloseThick=�
�������$��24��$��24��   $ MouseLeftButtonDown��.	   
 �� *
CloseLogin+ �� $ LoginWd���� $
��Left=�$��Center=�$��10,0,0,0q�.+��� $��24(� 
 Custom#��[ 
�������PHẦN MỀM�� $��24(�#��[ 
�������QUẢN LÝ CỬA HÀNG� $��1��.+��� $��0,20,0,0q�.+��� -    ��Name$ dangnhap��  MaterialDesignFilledTextBox#��[ 
�������$��48��$	��250��$��12(�$
��Bold"�)  #MaterialDesignThemes.Wpf.HintAssist   
Foreground �#97af8f.  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush �#97af8f$	��Top=� �� AcceptsReturn .  �� TextWrapping$
 Wrap=�$	��400��$��0,0,0,10q�#��[    Hint$ TÊN ĐĂNG NHẬP������ *
Username+G� -    G�Name$ password�� # MaterialDesignFilledPasswordBox#��[ $	��Top=�
�������$��0,0,0,40q�$��48��$	��250��$��12(�$
��Bold"�#��[  �#97af8f �#97af8f$ MẬT KHẨU��   $ PasswordChanged��.	   
 �� *PasswordChangedCommand+ �� $ password���� $��ĐĂNG NHẬP��$��47��$	��252��#��[ 
�������
���   �
������    $ Click��.	   
 �� *Login+ �� $ LoginWd���� $ 
Horizontal=�$��15,0,0,0q�.+��� $��
ĐĂNG KÝ��$��0,10,0,0q�#��[ 
������    $ MouseLeftButtonDown��.	   
 �� *RegisterCommand+ �� $ LoginWd������  �� 
TargetType" ��.���  �� Property � �� �� Value
 ����� �� Triggers P�  P� Property �@J�IsMouseOver P� Value . . ���  � ��
 ��ح���  � ��$ 	Underline{�