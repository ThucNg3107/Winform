   M S B A M L   `   `   `  ���� J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View      QLST.View.QLNVView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     )localclr-namespace:QLST.View     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -     N�Name$  QLNVwd�� 
  QLNVVM � DataContext# [  .  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *LoadCsCommand+   CommandParameter ��  �� ElementName$ QLNVwd��.���� $	��550��$	��665��
������� �� CornerRadius$ 40��._�� 	 � RowDefinitions	 �� $��65 ��� $��80 ��� .+�� $��0��.+��� $��Center=�$��30(�$��20,0,0,0q� 
 Custom#��[ ���#97af8fQUẢN LÝ NHÂN VIÊN� $��1��.+��� 
 �� Orientation$
 
Horizontal=�.+��� $��24,0,0,0q�$��40��$	��120��$ 10�����#97af8f._��� -    ��Name$ cbxChon��   MaterialDesignFilledComboBox#��[ .  (MaterialDesignThemes.Wpf.TextFieldAssist   TextBoxViewMargin$ 	8,-11,0,0q�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tìm Kiếm��   DecorationVisibility$ Hidden=�$��0q�   
FontFamily# [    
Foreground
 ��������#97af8f#��[ $��38��$��14(�$	��110������ *listTK+���� .R��� $
 
Horizontal=�.+��� ���� �� -    ��Name$ 	txbSearch��$	��250��$��40��$��10,0,0,0q�
���   �
���   �$��16(�$��SemiBold"�$ Tìm Kiếm��# [ 
 �����   TextFieldCornerRadius$ 10��$ Hidden=�$ 10,3,0,0q�$��2q�$��Center=� �� 
CaretBrush
 �����.��   $ TextChanged��.    �� *SearchCommand+ �� $ QLNVwd��.���� $��THÊM��$��	124,0,0,0q�$��90��$��40��#��[ 
������ 
�������+  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 6�����#97af8f   $ Click��.    �� *AddNDCommand+ �� $ QLNVwd��� $��2��.+��� -    ��Name$ 
ListViewND�� �� SelectionMode$ Single=�$��Disabled=�$��Hidden=�$	��635������ *listND+���� .R��� $	��290��$	��100��$ 10�����#97af8f._��  � ColumnDefinitions �� $��90 ��� .+�� $��0��.+�A� $��80��$��80��$��4,0,0,0q�$��Center=�����  �� ImageSource �� *AVA+� $��1��.+��� $��Center=�.+��� $��4,0,0,0q�
�������$
��Left=�$��Center=�#��[ $��12(����� *TENND+�� $
 
Horizontal=�$��4,0,0,0q�.+��� $��SĐT: ��
�������#��[ $��12(��� 
�������  Custom1#��[ $��12(����� *SDT+�� $
 
Horizontal=�$��4,0,0,0q�.+��� $��ĐC: ��
�������#��[ $��12(��� 
�������#��[ $��12(����� *DIACHI+���� .R��    $ SelectionChanged��.    �� *Detail+ �� $ QLNVwd��