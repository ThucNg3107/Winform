   M S B A M L   `   `   `  ����J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View  5          QLST.View.QLNVView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      )localclr-namespace:QLST.View     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	      -   5          N�Name$  QLNVwd��5       
  QLNVVM � DataContext# [  5      .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6%   �� *LoadCsCommand+   CommandParameter 5   %   ��  �� ElementName$ QLNVwd��6W   5      .��5      �� $	��550��5      $	��665��5      
������� �� CornerRadius$ 40��5      ._�5   
   � 	 � RowDefinitions	 5      �� 5      $��65 �6    �� 5      $��80 �6    �� 5      .+�5      � $��0��6   .+�5       �� $��Center=�6   $��30(�5!      $��20,0,0,0q�6*    
 Custom#��[ 5"      ���#97af8fQUẢN LÝ NHÂN VIÊN5#   0   5$      � 5%      $��1��6   .+�5&      �� 
 �� Orientation$
 
Horizontal=�6   .+�5'      �� $��24,0,0,0q�5(      $��40��5)      $	��120��5*      $ 10��5+      ���#97af8f._�5.      �� -   5         ��Name$ cbxChon��5/         MaterialDesignFilledComboBox#��[ 50      .  (MaterialDesignThemes.Wpf.TextFieldAssist   TextBoxViewMargin$ 	8,-11,0,0q�51      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tìm Kiếm��52         DecorationVisibility$ Hidden=�53      $��0q�54         
FontFamily# [ 55         
Foreground
 ��������#97af8f#��[ 58      $��38��59      $��14(�5:      $	��110��5<      ��5;      �� *listTK+��5=      �� 5>   "   .R�5?   &   �� $
 
Horizontal=�61   .+�5@   *   �� ��64   �� 5A   '   5B   #   5D      5E      �� 5F      -   5         ��Name$ 	txbSearch��5G   !   $	��250��5H   !   $��40��5I   !   $��10,0,0,0q�5J   !   
���   �
���   �$��16(�5M   !   $��SemiBold"�5N   !   $ Tìm Kiếm��5O   !   # [ 5P   !   
 �����   TextFieldCornerRadius$ 10��5R   !   $ Hidden=�5S   !   $ 10,3,0,0q�5T   !   $��2q�5U   !   $��Center=�5V   !    �� 
CaretBrush
 �����.��6P    5W        5X      $ TextChanged��6-   . 5Y   "      68   �� *SearchCommand+ 5Z   8   �� $ QLNVwd��6j   5[      .��5\   2   5]      �� 5^      $��THÊM��5_      $��	124,0,0,0q�5`      $��90��5a      $��40��5b      #��[ 5c      
������ 
�������+  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 6��5f      ���#97af8f 5i        5j      $ Click��6-   . 5k   "      68   �� *AddNDCommand+ 5l   8   �� $ QLNVwd��6j   5m      5o      5p      5q      � 5r      $��2��6   .+�5s      �� -   5         ��Name$ 
ListViewND��5s       �� SelectionMode$ Single=�5t      $��Disabled=�5u      $��Hidden=�5v      $	��635��5w      ��5s   /   �� *listND+��5y      �� 5z      .R�5{      �� $	��290��5|   !   $	��100��5}   !   $ 10��5~   !   ���#97af8f._�5�   "   �  � ColumnDefinitions 5�   &   �� 5�   *   $��90 �6;   �� 5�   *   .+�5�   &   � $��0��6+   .+�5�   *   A� $��80��62   $��80��6>   $��4,0,0,0q�5�   2   $��Center=�5�   2   ��5�   .   �� 5�   2    �� ImageSource 6=   �� *AVA+5�   +   5�   '   � 5�   &   $��1��6+   .+�5�   *   �� $��Center=�5�   %   .+�5�   .   �� $��4,0,0,0q�5�   1   
�������$
��Left=�5�   1   $��Center=�5�   1   #��[ 5�   1   $��12(�5�   1   ��5�   1   �� *TENND+5�   1   �� 5�   .   $
 
Horizontal=�69   $��4,0,0,0q�5�   9   .+�5�   2   �� $��SĐT: ��5�   5   
�������#��[ 5�   5   $��12(�5�   5   �� 5�   2   
�������  Custom1#��[ 5�   5   $��12(�5�   5   ��5�   5   �� *SDT+5�   5   5�   /   �� 5�   .   $
 
Horizontal=�69   $��4,0,0,0q�5�   9   .+�5�   2   �� $��ĐC: ��5�   5   
�������#��[ 5�   5   $��12(�5�   5   �� 5�   2   
�������#��[ 5�   5   $��12(�5�   5   ��5�   5   �� *DIACHI+5�   5   5�   /   5�   +   5�   '   5�   #   5�      5�      ��5�      �� 5�      .R�5�      � 5�       5�        5�      $ SelectionChanged��6)   . 5�         68   �� *Detail+ 5�   8   �� $ QLNVwd��6j   5�      5�      5�      5�      5�      5�      