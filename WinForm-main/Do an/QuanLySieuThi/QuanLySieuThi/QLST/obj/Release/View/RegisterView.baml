   M S B A M L   `   `   `  ���� J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View      QLST.View.RegisterView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     )localclr-namespace:QLST.View     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -     �Name$  
Registerwd��   
RegisterVM � DataContext# [   � WindowStyle$
 None=� � 
ResizeMode$ NoResize=�
������  � AllowsTransparency . $	��450��$	��650�� � WindowStartupLocation$ CenterScreen=�.����  �� CornerRadius$ 15��
�������.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ MouseLeftButtonDown��.  (System.Windows.Interactivity.TriggerBase	   Actions.	 6  0System.Windows.Interactivity.InvokeCommandAction  
   Command
 �� *Movewd+   CommandParameter ��  �� ElementName$ 
Registerwd��._��  � RowDefinitions �� $��30 ��� $��30 ��� .+�� $��0��
������ .+���  �� Orientation$ 
Horizontal=�$��Right=�$��Center=�$��0,0,10,0q�.+�'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=�
���   �$��24��$��24��$��0,0,8,0q�   $ MouseLeftButtonDown��.	   
 �� *
Minimizewd+ �� $ 
Registerwd��  $ 
CloseThick=�
���   �$��24��$��24��   $ MouseLeftButtonDown��.	   
 �� *Close1+ �� $ 
Registerwd��� $��1��.+��� $��
ĐĂNG KÝ��$��Center=�$��24(����#97af8f 
 Custom#��[ � $��2��$��0,15,0,0q�.+��  �� $	��300 ���  � ColumnDefinitions �� $	��210 ��� .+��� $��0,0,0,0.333q�$��2��._�A� $	��150��$	��150��$	��Top=�$
��Left=�$��30q�$��5�� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     ShadowDepth$ 0Q�   Color$ Black��   Opacity$ 10Q�   
BlurRadius$ 10Q����� -   HinhAnh1�� �� ImageSource �� *linkaddimage+�� $
��Left=�$��
30,-85,0,0q�$	��Top=� ! MaterialDesignFlatMidBgButton#��[ $��Thêm ảnh đại diện��#��[ $��0q�$	��160��$��40�����#97af8f
�������$��1��   $ Click��.	   
 �� *
AddImage+ �� $ HinhAnh1��� $��1��.+��� .+��� $ 
Horizontal=�.+��� -    ��Name$
 User��$��0,10,0,0q�
���   �)  #MaterialDesignThemes.Wpf.HintAssist   
Foreground
 �   �.  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush �#97af8f$	��190��  MaterialDesignFilledTextBox#��[ $	��Top=� �� AcceptsReturn .  �� TextWrapping$
 Wrap=�$	��400��#��[    Hint$ Tên đăng nhập��G� -    G�Name$ password��$��	10,10,0,0q�$��45��$	��190�� # MaterialDesignFilledPasswordBox#��[ $��11(�$
��Bold"�#��[ 
 �   � �#6C63FF$ Mật khẩu��   $ PasswordChanged��.	   
 �� *PasswordChangedCommand+ �� $ password���� $ 
Horizontal=�$��0,10,0,0q�.+��� -   $ TenND��$��0,10,0,0q�
���   �
 �   � �#97af8f$	��190��#��[ $	��Top=� . $
 Wrap=�$	��400��#��[ $ 	Họ tên���� -    ��Name$ GT��$��	10,10,0,0q�#��[    MaterialDesignFilledComboBox#��[ 
 �   � �#97af8f$ Giới tính��$��45��$	��190��.@��� $	��Nam���� $
��Nữ���� $ 
Horizontal=�$��0,10,0,0q�.+�(	  "System.Windows.Controls.DatePicker	  -    	 Name$ NS��
 �   � �#97af8f
���   �#��[ |�.  $ 
Ngày sinh�� " MaterialDesignFilledDatePicker#��[ $
��Left=�$	��190���� -   $	 SDT��$��10,0,0,0q�$	��190��#��[ 
 �   � �#97af8f$	��Top=� . $
 Wrap=�$
��Left=�#��[ $ Số điện thoại���� -	   $
 Mail��
���   �$��
-50,10,0,0q�#��[ $	��Top=� . $
 Wrap=�$	��400��
 �   � �#97af8f#��[ $ Email��$	��390���� -
   $ DC��
���   �$��
-50,10,0,0q�#��[ $	��Top=� . $
 Wrap=�$	��400��
 �   � �#97af8f#��[ $ Địa chỉ��$	��390��� $��1��$��1��.+��� $	��390��$
��Left=�$	��Top=�$��
Đăng ký��$��0q�#��[ 
����������#97af8f$��40��#��[    $ Click��.	   
 �� *
Register+ �� $ 
Registerwd��