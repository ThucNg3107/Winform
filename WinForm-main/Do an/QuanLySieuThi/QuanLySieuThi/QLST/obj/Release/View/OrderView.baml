   M S B A M L   `   `   `  ���� J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View      QLST.View.OrderView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     )localclr-namespace:QLST.View     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -     N�Name$  Orderwd��   OrVM � DataContext# [  .  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *LoadCsCommand+   CommandParameter ��  �� ElementName$ Orderwd��.���� $	��550��$	��665��
������� �� CornerRadius$ 40��	 �� Padding$	 13.75,0,6.875,0q�._�� 
 � RowDefinitions
 �� $��65 ��� $��80 ��� .+�� $��0��.+��� $��Center=�$��30(�$��20,0,0,0q� 
 Custom#��[ ���#97af8fĐƠN HÀNG� $��1��.+���  �� Orientation$ 
Horizontal=�.+��� $��8,0,0,0q�$��40��$	��120��$ 10�����#97af8f._��� -    ��Name$ cbxChon��   MaterialDesignFilledComboBox#��[ .  (MaterialDesignThemes.Wpf.TextFieldAssist   TextBoxViewMargin$ 8,-9,0,0q�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tìm Kiếm��   DecorationVisibility$ Hidden=�$��0q�   
FontFamily# [    
Foreground
 �   ����#97af8f#��[ $��38��$��14(�$	��110������ *listTK+���� .R��� $ 
Horizontal=�.+��� 
���   ����� �� -    ��Name$ 	txbSearch��$	��250��$��40��$��10,0,0,0q�
���   �
���   �$��16(�$��SemiBold"�$ Tìm Kiếm��# [ 
 �����   TextFieldCornerRadius$ 10��$ Hidden=�$ 10,3,0,0q�$��2q�$��Center=� �� 
CaretBrush
 �����.��   $ TextChanged��.    �� *SearchCommand+ �� $ Orderwd��.���� $��TẠO��$��	125,0,0,0q�$��90��$��40��#��[ 
������ 
�������+  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 6�����#97af8f   $ Click��.    �� *OpenAddOrder+ �� $ Orderwd��� $��2��.+��� .+��� $��	-33,0,0,0q�$	��600��$��40��$ 10�����#97af8f._��  � ColumnDefinitions �� $	��100 ��� $	��150 ��� $	��130 ��� .+�� $��0��.+��� $��SỐ HD��$��Center=�$��Center=�#��[ $��12(�
�������� $��1��.+��� $
��Left=�$��KHÁCH HÀNG��$��Center=�#��[ 
�������$��12(�� $��2��.+��� $��NGÀY��$��Center=�$��Center=�
�������#��[ $��12(�� $��3��.+��� $��
TRỊ GIÁ��$��Center=�#��[ 
�������$��Center=�$��12(��� -    ��Name$ 
ListViewHD��$	��350��$	��650�� �� SelectionMode$ Single=�$��Hidden=����� *listHD+���� .R��� $	��600��$��40��$ 10�����#97af8f._��  �� $	��100 ��� $	��150 ��� $	��130 ��� .+�� $��0��.+��� $��Center=�$��Center=�
�������#��[ $��12(����� *SOHD+� $��1��.+��� $��2,0,0,0q�$
��Left=�
�������$��Center=�#��[ $��12(����� *KHACHHANG.HOTEN+� $��2��.+��� 
�������$
��Left=�$��Center=�#��[ $��12(����� *NGHD+ �� StringFormat$ dd/MM/yyyy hh:mm:tt��� $��3��.+��� $��Center=�$��Center=�
�������$	��150��#��[ $��12(����� *TRIGIA+$ {0:#.###} VNĐ������ .R��  � Orientation$ Vertical=�   $ SelectionChanged��.    �� *Detail+ �� $ Orderwd��