   M S B A M L   `   `   `  ���� J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View      QLST.View.DetailImport   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     )localclr-namespace:QLST.View     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -     �Name$  DetailImportwd�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=�
������  � AllowsTransparency .    DetailImportVM � DataContext# [   � Title$ DetailImport��$	��600��$	��700�� � WindowStartupLocation$ CenterScreen=�.���� -    ��Name$ xx�� �� CornerRadius$ 15��
�������.  (System.Windows.Interactivity.Interaction	   Triggers	 /  )System.Windows.Interactivity.EventTrigger  
   	EventName$
 MouseLeftButtonDown��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *
MoveWindow+   CommandParameter ��  �� ElementName$ DetailImportwd��._��  � RowDefinitions �� $��30 ��� $��50 ��� $	��180 ��� �� $��50 �.+�� $��0��.+���  �� Orientation$ 
Horizontal=�$��Right=�$��Center=�$��0,0,10,0q�.+�'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=����#97af8f$��24��$��24��$��0,0,8,0q�	   $
 MouseLeftButtonDown��.    �� *
Minimizewd+ �� $ DetailImportwd��  $ 
CloseThick=����#97af8f$��24��$��24��	   $
 MouseLeftButtonDown��.    �� *	Closewd+ �� $ DetailImportwd��� $��1��.+��� $��PHIẾU NHẬP HÀNG�����#97af8f 
 Custom#��[ $��30(�$��Center=�$��Center=�� $��2��.+��� $��-6,0,0,0q�$	��600��$��Center=�
�������$ 15��._��� $��10q�.+��� $��0,0,0,5q�$��THÔNG TIN PHIẾU NHẬP��#��[ $��Center=����#97af8f�� $ Vertical=�.+��� $ 
Horizontal=�.+��� $��8,0,0,0q�$��MÃ ND�����#97af8f#��[ �� $��4,0,0,0q�$��|�����#97af8f#��[ �� $��4,0,0,0q����#97af8f$��TÊN ND��#��[ �� $��2q�
�������$ 10��._��� $ 
Horizontal=�.+��� -    ��Name$
 MaND��$
��Left=�#��[ $��0q�.  (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�   TextFieldCornerRadius$ 10��{�.     TextBoxViewMargin$ 10,0,0,0q��� $��|��$
��Left=�#��[ $��0q�$ Hidden=�$ 10��{�.  $ 10,0,0,0q��� -   $ TenND��$
��Left=�#��[ $��0q�$ Hidden=�$ 10��{�.  $ 10,0,0,0q��� .+��� $��8,0,0,0q�$��THỜI GIAN�����#97af8f#��[ �� $��2q�
�������$ 10��._��� -   $
 Ngay��$
��Left=�#��[ $��0q�$ Hidden=�$ 10��{�.  $ 10,0,0,0q��� .+��� $��8,0,0,0q����#97af8f$��MÃ PHIẾU NHẬP��#��[ �� $��2q�
�������$ 10��._��� -   $
 MaPN��$
��Left=�#��[ $��0q�{�.  $ Hidden=�$ 10��$ 10,0,0,0q�� $��3��.+��� .+��� $��
-12,10,0,0q�$	��600��$��40��$ 10�����#97af8f._��  � ColumnDefinitions �� $	��100 ��� $	��150 ��� $��80 ��� $��80 ��� .+�� $��0��.+��� $��MÃ SP��$��Center=�$��Center=�#��[ $��12(�
�������� $��1��.+��� $��2,0,0,0q�$
��Left=�$��TÊN SẢN PHẨM��$��Center=�#��[ $��12(�
�������� $��2��.+��� $
��SIZE��$
��Left=�$��Center=�#��[ $��12(�
�������� $��3��.+��� $��SỐ LƯỢNG��$
��Left=�$��Center=�
�������#��[ $��12(�� $��4��.+��� $��TIỀN NHẬP��$��50,0,0,0q�$
��Left=�$��Center=�
�������#��[ $��12(��� -    ��Name$ 
ListViewSP�� �� SelectionMode$ Single=�$��Hidden=�$	��220������ .R��� $��35,0,0,0q�$	��600��$��40��$ 10��
�������._��  �� $	��100 ��� $	��150 ��� $	��100 ��� $	��100 ��� .+�� $��0��.+��� $��Center=�$��Center=�#��[ $��12(����� *MaSp+� $��1��.+��� $��2,0,0,0q�$
��Left=�$��Center=�#��[ $��12(����� *TenSP+� $��2��.+��� $��2,0,0,0q�$
��Left=�$��Center=�#��[ $��12(����� *Size+� $��3��.+��� $
��Left=�$��Center=�$	��150��#��[ $��12(����� *SL+� $��4��.+��� $
��Left=�$��Center=�$	��150��#��[ $��12(����� *
Tiennhap+ �� StringFormat$ {0:#.###} VNĐ������ .R��  � Orientation$ Vertical=�� $��4�� �� �� .+�� $��0��.+��� -    ��Name$ 	deletebtn��$��0q�$��XÓA PHIẾU NHẬP��$��12(�#��[ ���#97af8f$	��150��$	��Top=�
�������+  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10��$��
-100,0,0,0q�	   $
 Click��.    �� *Delete+ �� $ DetailImportwd��� $��1��.+��� $ 
Horizontal=�$��0,5,0,0q�.+��� $��TỔNG TIỀN NHẬP: ��#��[ $��16(����#97af8f�� -	    ��Name$	 ttn��#��[ $��16(����#97af8f