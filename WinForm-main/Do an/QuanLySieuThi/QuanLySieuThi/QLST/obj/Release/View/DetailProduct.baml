   M S B A M L   `   `   `  ���� J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View      QLST.View.DetailProduct   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     )localclr-namespace:QLST.View     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -     �Name$  DetailProductwd�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=�
������  � AllowsTransparency .    DetailProductVM � DataContext# [  $	��450��$	��690�� � WindowStartupLocation$ CenterScreen=�.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction  	   Command	 �� *Loadwd+
   CommandParameter
 ��  �� ElementName$ DetailProductwd��.���� 
������� �� CornerRadius$ 15��$��3q����#97af8f   $ MouseLeftButtonDown��.   	 �� *
MoveWindow+
 �� $ DetailProductwd��  $ Loaded��.   	 �� *	GetName+
 �� $ DetailProductwd��._��  � ColumnDefinitions �� �� .+�� $��1�� � RowDefinitions �� $��30 ��� .+�� $��0��
������ .+���  �� Orientation$ 
Horizontal=�$��Right=�$��Center=�$��0,0,10,0q�.+�'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=����#97af8f$��24��$��24��$��0,0,8,0q�   $ MouseLeftButtonDown��.   	 �� *
Minimizewd+
 �� $ DetailProductwd��  $ 
CloseThick=����#97af8f$��24��$��24��   $ MouseLeftButtonDown��.   	 �� *	Closewd+
 �� $ DetailProductwd��� $��1��.+��� -    ��Name$ HinhAnh��$��Center=�� $��0��$��30q�.+��  �� $��3* ��� .+��� $ Vertical=�$��10,0,0,0q�$��0��.+��� -    ��Name$ TenSP��$
��Left=�$��40(�.  (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�$��0q� 
 Custom#��[ �� -    ��Name$ GiaSP��$��20(�#��[ �� $ 
Horizontal=�.+��� #��[ $��14(�$��Center=�$��Loại sản phẩm: ���� -   $ LoaiSP��$��Center=�$��14(�$ Hidden=�#��[ �� -   $
 SLSP��$��14(�#��[ $��0,0,0,10q��� .+��� -   $
 Size��$��	0,-10,0,0q�$��14(�#��[ $��
Kích cỡ���� -    ��Name$ kichco������ .R��� $��0q�$��20��$��50�����#97af8f$ 10��._��� #��[ $��Center=�$��Center=�
����������� *SIZE+���� .R�� 9� -	    9�Name$
 Info��
������ $��Chi tiết sản phẩm��#��[ .���� -
   $
 Mota��$��80�� �� TextWrapping$
 Wrap=�$ Hidden=�$��0q� �� AcceptsReturn . " �� VerticalScrollBarVisibility$ Visible=��� $��1��$ Vertical=�$��0,0,0,0q�.+��� -    ��Name$ 
btncapnhat��$��CẬP NHẬT��$��0,10,0,0q�$	��230��$��0q�$y�	Collapsed=����#97af8f   $ Click��.   	 �� *UpdateProduct+
 �� $ DetailProductwd���� -   $ btnxoa��$
��XÓA��$��0,10,0,0q�$	��230��$��0q�$y�	Collapsed=����#97af8f   $ Click��.   	 �� *DeleteProduct+
 �� $ DetailProductwd��