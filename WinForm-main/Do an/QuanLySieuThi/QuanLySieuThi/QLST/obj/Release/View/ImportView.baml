   M S B A M L   `   `   `  ���� J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View      QLST.View.ImportView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     )localclr-namespace:QLST.View     _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  -     N�Name$  Importwd��   ImportVM � DataContext# [   N� Title$ 
ImportView��.���� $	��550��$	��665��
������� �� CornerRadius$ 40�� �� Padding$ 13.75,0,6.875,0q�._��  � RowDefinitions �� $��65 ��� $��80 ��� .+�� $��0�� � ColumnDefinitions �� $��* ��� .+�� $��0��.+��� $��Center=�$��30(�$��20,0,0,0q� 
 Custom#��[ ���#97af8fNHẬP HÀNG� $��1��.+���  �� Orientation$ 
Horizontal=�.+��� -    ��Name$ 	txbSearch��$	��250��$��40��$��10,0,0,0q�
���   �
���   �$��16(�$��SemiBold"�)  #MaterialDesignThemes.Wpf.HintAssist	   Hint$	 Tìm Kiếm��
   
FontFamily#
 [    
Foreground
 �����.  (MaterialDesignThemes.Wpf.TextFieldAssist   TextFieldCornerRadius$ 10��   DecorationVisibility$ Hidden=�   TextBoxViewMargin$ 10,3,0,0q�$��2q�$��Center=� �� 
CaretBrush
 �����.��.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ TextChanged��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *SearchCommand+   CommandParameter ��  �� ElementName$ Importwd��.���� $��NHẬP��$��	254,0,0,0q�$��90��$��40��#��[ 
������ 
�������+  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 6�����#97af8f   $ Click��.    �� *OpenAddImport+ �� $ Importwd��� $��2��.+��� .+��� $��	-30,0,0,0q�$	��600��$��40��$ 10�����#97af8f._��  �� $	��100 ��� $	��180 ��� .+�� $��0��.+��� $��MÃ PHIẾU��$��Center=�$��Center=�#��[ 
�������$��12(�� $��1��.+��� $��Center=�$��NHÂN VIÊN��$��Center=�#��[ $��12(�
�������� $��2��.+��� $��NGÀY��$��77,0,0,0q�$
��Left=�
�������$��Center=�#��[ $��12(��� -    ��Name$ 
ListViewPN��$	��350��$	��650�� �� SelectionMode$ Single=�$��Hidden=����� *listPN+���� .R��� $	��600��$��40�����#97af8f$ 10��._��  �� $	��100 ��� $	��200 ��� .+�� $��0��.+��� $��Center=�$��Center=�
�������#��[ $��12(����� *MAPN+� $��1��.+��� $��55,0,0,0q�$
��Left=�$��Center=�
�������#��[ $��12(����� *NGUOIDUNG.TENND+� $��2��.+��� $��55,0,0,0q�$
��Left=�$��Center=�
�������#��[ $��12(����� *
NGAYNHAP+ �� StringFormat$ dd/MM/yyyy hh:mm:tt������ .R��  � Orientation$ Vertical=�   $ SelectionChanged��.    �� *Detail+ �� $ Importwd��