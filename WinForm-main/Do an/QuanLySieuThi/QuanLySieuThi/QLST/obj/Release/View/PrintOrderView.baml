   M S B A M L   `   `   `  ���� J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View      QLST.View.PrintOrderView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     )localclr-namespace:QLST.View       � Title$  PrintOrderView��$	��300��$	��800��.��� -    �Name$ 	PrintView�� � RowDefinitions �� $��50 ��� $	��100 ��� $
��auto ��� $
��auto �.+�� $��0��.+��� $��HÓA ĐƠN BÁN HÀNG��$��24(�$��Center=�$��Center=�$��0,0,20,0q�$
��Bold"�� $��1�� � ColumnDefinitions �� �� .+�� $��0��.+��� $��30,0,0,0q�.+���  �� Orientation$ 
Horizontal=�.+��� $��Tên khách hàng: ��$��14(��� -    ��Name$ TenKH��$��14(��� $ 
Horizontal=�.+��� $��Địa chỉ: ��$��14(��� -   $ dc��$��14(��� $ 
Horizontal=�.+��� $��SĐT: ��$��14(��� -   $	 sdt��$��14(�� $��1��.+��� $��	150,0,0,0q�.+��� $ 
Horizontal=�.+��� $��Ngày lập HD: ��$��14(��� -   $
 ngay��$��14(��� $ 
Horizontal=�.+��� $��	Số HD: ��$��14(��� -   $
 sohd��$��14(�� $��2��.+��� -    ��Name$ ListSP��
������ $
��auto�� �� View �� .P���  �� Width$
 Auto��$��Mã SP��	 �� CellTemplate	 �� .R��� $��20,0,0,0q����� *MaSp+�� $	 180��$��Tên Sản Phẩm��	 �� .R��� $��18,0,0,0q����� *TenSP+�� $
 auto��$��Số lượng��	 �� .R��� $��40,0,0,0q����� *SL+�� $
 auto��$��
Đơn giá��	 �� .R��� $��20,0,0,0q����� *Dongia+�� $	 200��$��Thành tiền��	 �� .R��� $��20,0,0,0q����� *Tong+� $��3�� �� �� �� $	��200 ��� .+�� $��2��.+��� $��0,10,0,0q�.+��� $��Giảm giá:��$
��Bold"�$��16(��� $$��Giá đã trừ khuyến mãi:��$
��Bold"�$��16(��� $��Thành tiền:��$
��Bold"�$��16(�� $��3��$��3��.+��� $��0,10,0,0q�.+��� -   $ gg��$��16(�$��Right=�$��0,0,20,0q��� -	   $	 tt1��$��16(�$��Right=�$��0,0,20,0q��� -
   $ tt��$��16(�$��Right=�$��0,0,20,0q�