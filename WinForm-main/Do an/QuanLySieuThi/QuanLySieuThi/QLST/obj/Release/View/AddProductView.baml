   M S B A M L   `   `   `  ���� J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View      QLST.View.AddProductView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     )localclr-namespace:QLST.View     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -     �Name$  AddProductwd�� � 
ResizeMode$ CanMinimize=�   AddProductVM � DataContext# [  $	��550��$	��700�� � WindowStartupLocation$ CenterScreen=�.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *Loadwd+   CommandParameter �� 	 �� ElementName$	 AddProductwd��.��� 
�������.+�� 
 � ColumnDefinitions
 �� �� .+�� $��0��.+��� -    ��Name$ HinhAnh��$	��450��$��Center=����� *	linkimage+   $ MouseLeftButtonDown��.    �� *
AddImage+ �� $	 HinhAnh��� $��1��.+���  �� Orientation$ Vertical=�$��	15,30,0,0q�.+��� $��
-15,0,0,20q�$��Center=�$��SẢN PHẨM MỚI��$��24(����#97af8f 
 Custom#��[ �� $ 
Horizontal=�.+��� $ Vertical=�.+��� $��8,0,0,0q�$��MÃ SẢN PHẨM�����#97af8f#��[ ��  �� CornerRadius$ 10��$��2q�
�������$��30��._��� -    ��Name$
 MaSp��$
��Left=�$	��150��{�.  $��0q�#��[ .  (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�   TextFieldCornerRadius$ 10��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ THÊM MÃ SẢN PHẨM��   TextBoxViewMargin$ 10,0,0,0q�   UnderlineBrush
 ������� $ Vertical=�$��10,0,0,0q�.+��� $��8,0,0,0q����#97af8f$��TÊN SẢN PHẨM��#��[ �� -   $ TenSp��$��30��#��[ $
��Left=�$	��150��$��2q�$ Hidden=�$ 10��$ THÊM TÊN SẢN PHẨM��$ 10,0,0,0q�
 ������� $ 
Horizontal=�$��0,10,0,0q�.+��� $ Vertical=�.+��� $��8,0,0,0q�$��GIÁ SẢN PHẨM�����#97af8f#��[ �� -   $ GiaSp��$��30��$
��Left=�$	��150��#��[ $��2q�$ Hidden=�$ 10��$ THÊM GIÁ SẢN PHẨM��$ 10,0,0,0q�
 ������� $ Vertical=�$��10,0,0,0q�.+��� $��8,0,0,0q����#97af8f$��LOẠI SẢN PHẨM��#��[ �� 
�������$��2q�$��5,0,0,0q�$��30��$	��150��$ 10��
�������._��� -    ��Name$ LoaiSp��   MaterialDesignFilledComboBox#��[ $ 	4,-15,0,0q�$ Hidden=�$��0q�   
FontFamily# [    
Foreground
 �����
�������#��[ $��30��$��12(�$	��130��.@��� $��Đồ uống���� $��Đồ uống có ga���� $��Bánh���� $��SP Tiêu Dùng���� $��SP Đông Lạnh���� $��Trái cây đóng hộp���� $��Vật dụng gia đình���� $��Thực Phẩm���� $��Lương thực���� $��Gia Vị���� $��SP Tiêu Dùng���� $��Đồ Ăn Đóng Hộp���� $��Đồ gia dụng���� $��Đồ Ăn Lạnh���� $ 
Horizontal=�$��0,10,0,0q�.+��� $ Vertical=�.+��� $��8,0,0,0q�$��SỐ LƯỢNG�����#97af8f#��[ �� -   $
 SlSp��$��30��$
��Left=�$	��150��#��[ $��2q�$ Hidden=�$ 10��$ THÊM SỐ LƯỢNG��$ 10,0,0,0q�
 ������� $ Vertical=�$��10,0,0,0q�.+��� $��8,0,0,0q�$��
KÍCH CỠ�����#97af8f#��[ �� 
�������$��2q�$��5,0,0,0q�$��30��$	��150��$ 10��
�������._��� -   $ SizeSp��#��[ $ 	4,-15,0,0q�$ Hidden=�$��0q�# [ 
 �����
�������#��[ $��30��$��12(�$	��130��.@��� $��S���� $��M���� $��L���� $��XL���� $��Freesize���� $��8,10,0,0q����#97af8f$��THÔNG TIN SẢN PHẨM��#��[ �� -	   $ MotaSp��#��[ $
��Left=�$	��310��$	��150��$��2q�$ Hidden=�$ 10��$# THÊM THÔNG TIN SẢN PHẨM��$ 10,0,0,0q�
 �����$ �� HorizontalScrollBarVisibility$
 Auto=� �� AcceptsReturn .  �� TextWrapping$
 Wrap=��� -
    ��Name$ btnadd��$��THÊM SẢN PHẨM��$��0,30,0,0q�$	��230�����#97af8f$��0q�   $ Click��.    �� *
AddProduct+ �� $	 AddProductwd��