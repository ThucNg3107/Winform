   M S B A M L   `   `   `  ���� J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View      QLST.View.AddOrderView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     )localclr-namespace:QLST.View     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -     �Name$  
AddOrderwd�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=�
������  � AllowsTransparency .    
AddOrderVM � DataContext# [  $	��650��$
��1500�� � WindowStartupLocation$ CenterScreen=�.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction  	   Command	 �� *Loadwd+
   CommandParameter
 ��  �� ElementName$ 
AddOrderwd��.���� -    ��Name$ xx�� �� CornerRadius$ 15��
����������#97af8f$��2q�   $ MouseLeftButtonDown��.   	 �� *
MoveWindow+
 �� $ 
AddOrderwd��._��  � RowDefinitions �� $��30 ��� $��50 ��� $	��250 ��� �� $	��100 �.+�� $��0��.+���  �� Orientation$ 
Horizontal=�$��Right=�$��Center=�$��0,0,10,0q�.+�'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=����#97af8f$��24��$��24��$��0,0,8,0q�   $ MouseLeftButtonDown��.   	 �� *
Minimizewd+
 �� $ 
AddOrderwd��  $ 
CloseThick=����#97af8f$��24��$��24��   $ MouseLeftButtonDown��.   	 �� *	Closewd+
 �� $ 
AddOrderwd��� $��1�� � ColumnDefinitions �� �� .+��� $��0��$ 
Horizontal=�.+��� $��8,0,0,0q�$��40��$	��120��$ 10�����#97af8f._��� -    ��Name$ cbxchon��   MaterialDesignFilledComboBox#��[ .  (MaterialDesignThemes.Wpf.TextFieldAssist   TextBoxViewMargin$ 8,-9,0,0q�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Bộ lọc��   DecorationVisibility$ Hidden=�$��0q� 
 Custom   
FontFamily# [    
Foreground
 ��������#97af8f#��[ $��38��$��14(� �� SelectedIndex$ 0��$	��110��.@��� $��
Tất cả���� $��Đồ uống���� $��Đồ uống có ga���� $��Bánh���� $��SP Tiêu Dùng���� $��SP Đông Lạnh���� $��Trái cây đóng hộp���� $��Vật dụng gia đình���� $��Thực Phẩm���� $��Lương thực���� $��Gia Vị���� $��SP Tiêu Dùng���� $��Đồ Ăn Đóng Hộp���� $��Đồ gia dụng���� $��Đồ Ăn Lạnh��   $ SelectionChanged��.   	 �� *Filter+
 �� $ 
AddOrderwd���� -    ��Name$ 	txbSearch��$	��300��$��40��$��10,0,0,0q�
���   �
���   �$��16(�$��SemiBold"�$ Tìm Kiếm��# [  �#97af8f   TextFieldCornerRadius$ 10��$ Hidden=�$ 10,3,0,0q�$��2q�$��Center=� �� 
CaretBrush
 �����.��   $ TextChanged��.   	 �� *SearchCommand+
 �� $ 
AddOrderwd��.���� $��1��$��
HÓA ĐƠN�����#97af8f#��[ $��30(�$��Center=�$��Center=�� $��2�� �� $	��800 ��� �� .+�� $��1��.+��� $��	20,0,20,0q�
�������$ 15��._��� $��10q�.+��� $��0,10,0,5q�$��THÔNG TIN HÓA ĐƠN��#��[ $��Center=����#97af8f�� $ Vertical=�.+��� $ 
Horizontal=�.+��� $��8,0,0,0q�$��MÃ ND�����#97af8f#��[ �� $��4,0,0,0q����#97af8f$��|��#��[ �� $��4,0,0,0q����#97af8f$��TÊN ND��#��[ �� $��2q�
�������$ 10��._��� $ 
Horizontal=�.+��� -   $
 MaND��$
��Left=�#��[ $��0q�$ Hidden=�$ 10��{�.  $ 10,0,0,0q��� $��|��$
��Left=�#��[ $��0q�$ Hidden=�$ 10��{�.  $ 10,0,0,0q��� -   $ TenND��$
��Left=�#��[ $��0q�$ Hidden=�$ 10��{�.  $ 10,0,0,0q��� .+��� $ 
Horizontal=�.+��� $��8,0,0,0q����#97af8f$��HỌ TÊN KHÁCH HÀNG��#��[ �� $��2q�
�������$ 10��._��� -   $ KH��#��[ $��0q�$ Hidden=� �� 
IsEditable .  �� DisplayMemberPath$ HOTEN��$	��260������ *LKH+   $ SelectionChanged��.   	 �� *
chooseKH+
 �� $ 
AddOrderwd���� .+��� $��8,0,0,0q�$��THỜI GIAN�����#97af8f#��[ �� $��2q�
�������$ 10��._��� -   $
 Ngay��$
��Left=�#��[ $��0q�$ Hidden=�$ 10��{�.  $ 10,0,0,0q��� .+��� $��8,0,0,0q����#97af8f$��SỐ HÓA ĐƠN��#��[ �� $��2q�
�������$ 10��._��� -	   $
 SoHD��$
��Left=�#��[ $��0q�{�.  $ Hidden=�$ 10��$ 10,0,0,0q�� $��2��.+��� $��	20,0,20,0q�
�������$ 15��._��� $��10q�.+��� $��0,10,0,5q�$��CHI TIẾT HÓA ĐƠN�����#97af8f#��[ $��Center=��� $ Vertical=�.+��� $��8,0,0,0q����#97af8f$��TÊN SẢN PHẨM��#��[ �� .+��� $��2q�
�������$ 10��._��� -
   $ SP��#��[ $��0q�$ Hidden=�$	��268�� .  $ TENSP��$��Center=����� *LSP+   $ SelectionChanged��.   	 �� *Choose+
 �� $ 
AddOrderwd���� $��0,2,0,0q�.+��� $��8,0,0,0q����#97af8f$��
ĐƠN GIÁ��#��[ �� $��2q�
�������$ 10��._��� -   $ DG��$
��Left=�#��[ $��0q�$ Hidden=�$ 10��{�.  $ 10,0,0,0q��� $ 
Horizontal=�$��0,2,0,0q�.+��� $	��140��.+��� $��8,0,0,0q�$��SỐ LƯỢNG�����#97af8f#��[ �� $��2q�
�������$ 10��._��� -   $ SL��$
��Left=�#��[ $��0q�$ Hidden=�$ 10��$ 10,0,0,0q�$	��138���� $	��140��$��10,0,0,0q�.+��� $��8,0,0,0q�$��KHUYẾN MÃI�����#97af8f#��[ �� $��2q�
�������$ 10��$	��136��._��� -   $ 	khuyenmai��$
��Left=�#��[ $��0q�{�.  $ Hidden=�$ 10��$ 10,0,0,0q��� $��20q�$ 
Horizontal=�.+��� -    ��Name$ addbtn��$��0q�$��THÊM��$��12(�#��[ ���#97af8f   $ Click��.   	 �� *AddSP+
 �� $ 
AddOrderwd���� -   $ 	deletebtn��$��0q�$��6,0,0,0q�$
��XÓA��$��12(�#��[ ���#97af8f   $ Click��.   	 �� *
DeleteSP+
 �� $ 
AddOrderwd���� -   $ ttbtn��$��0q�$��6,0,0,0q�$��THANH TOÁN��$��12(�#��[ ���#97af8f   $ Click��.   	 �� *SaveHD+
 �� $ 
AddOrderwd��� $��3�� �� �� .+��� $��1��.+��� $��	-7,10,0,0q�$	��730��$��40��$ 10�����#97af8f._��  �� $	��150 ��� $	��200 ��� $	��180 ��� �� .+�� $��0��.+��� $��MÃ SP��$��Center=�$��Center=�
�������#��[ $��12(�� $��1��.+��� $��2,0,0,0q�$
��Left=�$��TÊN SP��$��Center=�
�������#��[ $��12(�� $��2��.+��� $
��SIZE��$
��Left=�$��Center=�#��[ 
�������$��12(�� $��3��.+��� $��SL��$
��Left=�$��Center=�
�������$	��150��#��[ $��12(�� $��4��.+��� $��THÀNH TIỀN��$
��Left=�$��Center=�$	��150��#��[ 
�������$��12(��� -    ��Name$ 
ListViewSP��  �� SelectionMode$  Single=�$��Hidden=�$	��164������ .R��� $��0,0,0,0q�$	��730��$��40��$ 10��
�������._��  �� $	��150 ��� $	��200 ��� $	��180 ��� �� .+�� $��0��.+��� $��Center=�$��Center=�#��[ $��12(����� *MaSp+� $��1��.+��� $��2,0,0,0q�$
��Left=�$��Center=�#��[ $��12(����� *TenSP+� $��2��.+��� $
��Left=�$��Center=�#��[ $��12(����� *Size+� $��3��.+��� $
��Left=�$��Center=�$	��150��#��[ $��12(����� *SL+� $��4��.+��� $
��Left=�$��Center=�$	��150��#��[ $��12(����� *Tong+! �� StringFormat$! {0:#.###} VNĐ������ .R�� " � Orientation$" Vertical=�� $��2��$��3�� �� �� .+��� $��0��.+��� -   $ ListViewProduct��$  Single=�$��Disabled=�$��Hidden=�$	��468������ *listSP+���� .R��� $��0q�$	��210��$	��170��$��1q�
�������
�������$ 15��._��� .+��� $��0,10,0,0q�$	��140��$	��130������ *HINHSP+$!  ���� #��[ $��14(�$��Center=����� *TENSP+�� #��[ $��14(�$��Center=����� *GIA+$! {0:#.###} VNĐ���� #��[ $��14(�$��Center=����� *LOAISP+���� .R��    $ SelectionChanged��.   	 �� *Choose+
 �� $ 
AddOrderwd��� $��4��$��0,4,0,0q� �� �� �� $	��250 ��� $	��200 �.+�� $��2��$��Right=�.+��� .+��� ���#97af8f$��GIẢM GIÁ: ��#��[ $��16(��� ���#97af8f$%��GIÁ ĐÃ TRỪ KHUYẾN MÃI: ��#��[ $��16(��� ���#97af8f$��THÀNH TIỀN: ��#��[ $��16(�$��0,10,0,0q�� $��3��.+��� .+��� -   # ��Name$# GG�����#97af8f$��0,0,30,0q�#��[ $��16(�$��Right=��� -   $# TT�����#97af8f$��0,0,30,0q�#��[ $��16(�$��Right=��� -   $	# TT1�����#97af8f$��	0,10,30,0q�#��[ $��16(�$��Right=�