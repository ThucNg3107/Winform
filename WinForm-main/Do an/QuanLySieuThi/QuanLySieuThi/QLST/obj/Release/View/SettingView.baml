   M S B A M L   `   `   `  ���� J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View      QLST.View.SettingView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     )localclr-namespace:QLST.View     _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  -     N�Name$  	Settingwd��   	SettingVM � DataContext# [  .���� $	��550��$	��665��
������� �� CornerRadius$ 30�� �� Padding$ 13.75,0,6.875,0q�._��  � RowDefinitions �� $��65 ��� $
��Auto ��� $	��325 ��� $
��Auto ��� $��* �.+�� $��0��.+��� $��Center=�$��30(�$��20,0,0,0q� 
 Custom#��[ ���#97af8fCÀI ĐẶT� $��1��.+�(  "MaterialDesignThemes.Wpf.ColorZone     CornerRadius$ 10�����#97af8f$��40��   Mode$ 
PrimaryMid=�.���� $��Center=�$��25(�$��20,0,0,0q�#��[ 
�������Thông tin cá nhân� $��2��.+��� $ 10��
�������._��  �� $
��322* ��� $
��123* � � ColumnDefinitions �� $	��210 ��� $	��210 ��� .+��� $��0,0,0,0.333q�$��2��._�A� $	��150��$	��150��$	��Top=�$
��Left=�$��30q�$��5�� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect  	   ShadowDepth$	 0Q�
   Color$
 Black��   Opacity$ 10Q�   
BlurRadius$ 10Q����� -   img�� �� ImageSource �� *Ava+�� $
��Left=�$��
30,-15,0,0q�$	��Top=� ! MaterialDesignFlatMidBgButton#��[ $��Thay đổi ảnh��#��[ ���#97af8f$	��150��$��40��
������ 
���   �$��1��{��� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType$ WindowL�.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Click��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *
AddImage+   CommandParameter ��  �� ElementName$	 img��� $��1��$��0,0,0,0.333q�$��2��.+��� $��10q�.+��� -    ��Name$ NameBox��$��0,10,0,0q�
���   �  MaterialDesignFilledTextBox#��[ $	��Top=� �� AcceptsReturn .  �� TextWrapping$
 Wrap=�$	��400��#��[ )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 	Họ tên������ *Name+(  "System.Windows.Controls.DatePicker  -     Name$ DateBox��$��0,20,0,0q�
���   �#��[ |�.  $ 
Ngày sinh�� " MaterialDesignFilledDatePicker#��[ $
��Left=�$	��190��   Text �� *DoB+�� -   $ 
AddressBox��$��0,20,-200,0q�
���   �#��[ $	��Top=� . $
 Wrap=�$	��400��#��[ $ Địa chỉ��$	��390������ *DiaChi+�� -   $
 Mail��$��0,20,-200,0q�
���   �#��[  . $
 Wrap=�$	��400��#��[ $ Email��$	��390������ *Mail+� $��2��.+��� .+��� -    ��Name$ GTBox��$��	0,20,35,0q�#��[    MaterialDesignFilledComboBox#��[ $ Giới tính��$	��190��{���  �� Path$ 	IsChecked�$# FilledComboBoxEnabledCheckBox�� �� SelectedIndex �� *
GioiTinh+.@��� $	��Nam���� $
��Nữ���� -   $ SDTBox��$��0,20,0,0q�$	��190��#��[ $	��Top=� . $
 Wrap=�$
��Left=�#��[ $ Số điện thoại������ *SDT+��   MaterialDesignRaisedButton#��[ ���#97af8f$	��390��$��220,270,34.667,23q�$��CẬP NHẬT THÔNG TIN��#��[ {��� *DataContext.ControlsEnabled+ �� *FindAncestor+$ WindowL�   $ Click��.    �� *
UpdateInfo+ �� $ 	Settingwd��� $��3��.+�  $ 10�����#97af8f$��40��$ 
PrimaryMid=�.���� $��Center=�$��25(�$��20,0,0,0q�#��[ 
�������Thông tin tài khoản� $��4��.+��� $ 10��
��������� .+���  �� Orientation$ 
Horizontal=�.+��� $��	30,20,0,0q�$	��190��#��[ $	��Top=� . $
 Wrap=�$
��Left=�$��42��#��[ {�.  $ Tên đăng nhập������ *TenTK+�� $��	30,20,0,0q�$	��190��#��[ $	��Top=� . $
 Wrap=�$
��Left=�$��42��$��Light"�$��Italic$�{�.  $ Mật khẩu��    
FontFamily#  [ $��(không hiển thị)���� $	��Top=�#��[ $��30,20q�$��42��$��Đổi mật khẩu�����#97af8f   $ Click��.    �� *
ChangePass+ �� $ 	Settingwd��   $ Loaded��.    �� *Loadwd+ �� $ 	Settingwd��