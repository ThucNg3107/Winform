   M S B A M L   `   `   `  ���� J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View      QLST.View.AddNDView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     )localclr-namespace:QLST.View     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -     �Name$  AddNDwd��   AddNDVM � DataContext# [   � WindowStyle$
 None=� � 
ResizeMode$ NoResize=�
������  � AllowsTransparency . $	��460��$	��650�� � WindowStartupLocation$ CenterScreen=�.����  �� CornerRadius$ 15��
�������._��  � RowDefinitions �� $��30 ��� $��30 ��� .+�� $��0��
������ .+���  �� Orientation$ 
Horizontal=�$��Right=�$��Center=�$��0,0,10,0q�.+�'  !MaterialDesignThemes.Wpf.PackIcon  	   Kind$	 WindowMinimize=����#97af8f$��24��$��24��$��0,0,8,0q�.  (System.Windows.Interactivity.Interaction
   Triggers
 /  )System.Windows.Interactivity.EventTrigger     	EventName$ MouseLeftButtonDown��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *
Minimizewd+   CommandParameter ��  �� ElementName$ AddNDwd��  $	 
CloseThick=����#97af8f$��24��$��24��
   $ MouseLeftButtonDown��.    �� *	Closewd+ �� $ AddNDwd��� $��1��.+��� $"��THÊM THÔNG TIN NHÂN VIÊN��$��Center=�$��24(����#97af8f 
 Custom#��[ � $��2��$��0,15,0,0q�.+��  �� $
��322* ��� $
��123* � � ColumnDefinitions �� $	��210 ��� .+��� $��0,0,0,0.333q�$��2��._�A� $	��150��$	��150��$	��Top=�$
��Left=�$��30q�$��5�� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     ShadowDepth$ 0Q�   Color$ Black��   Opacity$ 10Q�   
BlurRadius$ 10Q����� -   HinhAnh1�� �� ImageSource �� *linkaddimage+�� $
��Left=�$��
30,-80,0,0q�$	��Top=� ! MaterialDesignFlatMidBgButton#��[ $��Thêm ảnh đại diện��#��[ $��0q�$	��160��$��40�����#97af8f
�������$��1��
   $ Click��.    �� *
AddImage+ �� $ HinhAnh1��� $��1��.+��� .+��� $ 
Horizontal=�.+��� -    ��Name$
 MaND��$��0,10,0,0q�
���   �)  #MaterialDesignThemes.Wpf.HintAssist   
Foreground
 �   �.  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush �#6C63FF$	��190��  MaterialDesignFilledTextBox#��[ $	��Top=� �� AcceptsReturn .  �� TextWrapping$
 Wrap=�$	��400��{�.  #��[    Hint$ Mã ND���� -   $ TenND��$��	10,10,0,0q�
���   �
 �   � �#6C63FF$	��190��#��[ $	��Top=� . $
 Wrap=�$	��400��#��[ $ 	Họ tên���� $ 
Horizontal=�$��0,10,0,0q�.+��� -    ��Name$ GT��#��[    MaterialDesignFilledComboBox#��[ 
 �   � �#6C63FF$ Giới tính��$	��190��.@��� $	��Nam���� $
��Nữ���� $��Khác���� -   $	 QTV��$��10,0,0,0q�#��[ #��[ 
 �   � �#6C63FF$ Chức vụ��$	��190��.@��� $��
Quản lý���� $��Nhân viên���� $ 
Horizontal=�$��0,10,0,0q�.+�(	  "System.Windows.Controls.DatePicker	  -    	 Name$ NS��
 �   � �#6C63FF
���   �#��[ |�.  $ 
Ngày sinh�� " MaterialDesignFilledDatePicker#��[ $
��Left=�$	��190���� -   $	 SDT��$��10,0,0,0q�$	��190��#��[ 
 �   � �#6C63FF$	��Top=� . $
 Wrap=�$
��Left=�#��[ $ Số điện thoại���� -	   $
 Mail��
���   �$��
-50,10,0,0q�#��[ $	��Top=� . $
 Wrap=�$	��400��
 �   � �#6C63FF#��[ $ Email��$	��390���� -
   $ DC��
���   �$��
-50,10,0,0q�#��[ $	��Top=� . $
 Wrap=�$	��400��
 �   � �#6C63FF#��[ $ Địa chỉ��$	��390��� $��1��$��1��.+��� $��0,20,0,0q�$	��390��$
��Left=�$	��Top=�$��Thêm��$��0q�#��[ 
����������#97af8f$��40��#��[ 
   $ Click��.    �� *AddNDCommand+ �� $ AddNDwd��