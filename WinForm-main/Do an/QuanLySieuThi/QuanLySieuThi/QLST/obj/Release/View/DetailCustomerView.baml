   M S B A M L   `   `   `  ���� J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View  "    QLST.View.DetailCustomerView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     )localclr-namespace:QLST.View     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -     �Name$  
DetailCswd�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=�
������  � AllowsTransparency .    
DetailCsVM � DataContext# [  $	��550��$	��350�� � WindowStartupLocation$ CenterScreen=�.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction  	   Command	 �� *	GetMAKH+
   CommandParameter
 ��  �� ElementName$ 
DetailCswd��.����  �� CornerRadius$ 15��
�������   $ MouseLeftButtonDown��.   	 �� *
MoveWindow+
 �� $ 
DetailCswd��._��  � ColumnDefinitions �� .+�� $��0�� � RowDefinitions �� $��30 ��� .+�� $��0��
������ .+���  �� Orientation$ 
Horizontal=�$��Right=�$��Center=�$��0,0,10,0q�.+�'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=����#97af8f$��24��$��24��$��0,0,8,0q�   $ MouseLeftButtonDown��.   	 �� *
Minimizewd+
 �� $ 
DetailCswd��  $ 
CloseThick=����#97af8f$��24��$��24��   $ MouseLeftButtonDown��.   	 �� *	Closewd+
 �� $ 
DetailCswd��� $��1��.+��� $ Vertical=�$��	15,20,0,0q�.+��� $��
-15,0,0,20q�$��Center=�$��THÔNG TIN KHÁCH HÀNG��$��24(����#97af8f 
 Custom#��[ �� $ 
Horizontal=�.+��� $ Vertical=�.+��� $��8,0,0,0q�$��MÃ KHÁCH HÀNG�����#97af8f#��[ �� $��2q�
�������$ 10��._��� -    ��Name$
 MaKH��$
��Left=�$	��150��#��[ $��0q�.  (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�   TextFieldCornerRadius$ 10��{�.     TextBoxViewMargin$ 10,0,0,0q��� $ Vertical=�$��10,0,0,0q�.+��� $��8,0,0,0q�$��	HỌ TÊN�����#97af8f#��[ �� -   $ TenKH��#��[ $
��Left=�$	��150��$��2q�$ Hidden=�$ 10��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ THÊM HỌ TÊN��$ 10,0,0,0q�   UnderlineBrush
 �   ��� $ 
Horizontal=�$��0,10,0,0q�.+��� $ Vertical=�.+��� $��8,0,0,0q����#97af8f$��SỐ ĐIỆN THOẠI��#��[ �� -   $	 SDT��$
��Left=�$	��151��#��[ $��2q�$ Hidden=�$ 10��$ 	THÊM SDT��$ 10,0,0,0q�
 �   ��� $ Vertical=�$��15,0,0,0q�.+��� $��8,0,0,0q�$��GIỚI TÍNH�����#97af8f#��[ �� -    ��Name$ GT��#��[ $
��Left=�$	��150��$��2q�$ Hidden=�$ 10��$ THÊM GIỚI TÍNH��$ 10,0,0,0q�
 �   �.@��� $	��Nam���� $
��Nữ���� $��Khác���� $ 
Horizontal=�$��0,10,0,0q�.+��� $ Vertical=�.+��� $��8,0,0,0q����#97af8f$��
DOANH SỐ��#��[ �� $��2q�
�������$ 10��._��� -   $ DS��$
��Left=�$	��150��$��0q�#��[ $ Hidden=�$ 10��{�.  $ 10,0,0,0q�
 �   ��� $ Vertical=�$��10,0,0,0q�.+��� $��8,0,0,0q�$��HẠNG�����#97af8f#��[ �� $��2q�
�������$ 10��._��� -   $
 Rank��#��[ $
��Left=�$	��150��$��0q�$ Hidden=�$ 10��{�.  $ 10,0,0,0q�
 �   ��� $��8,10,0,0q����#97af8f$��ĐỊA CHỈ��#��[ �� -   $ DC��#��[ $
��Left=�$	��319��$	��150��$��2q�$ Hidden=�$ 10��$ THÊM ĐỊA CHỈ��$ 10,0,0,0q� �#97af8f$ �� HorizontalScrollBarVisibility$
 Auto=� �� AcceptsReturn .  �� TextWrapping$
 Wrap=��� $ 
Horizontal=�.+��� -	    ��Name$ 	btnupdate��$��CẬP NHẬT��$��0,30,0,0q�$	��150��$��0q����#97af8f   $ Click��.   	 �� *Update+
 �� $ 
DetailCswd���� -
   $ 	btnDelete��$
��XÓA��$��	20,30,0,0q�$	��150��$��0q����#97af8f   $ Click��.   	 �� *Delete+
 �� $ 
DetailCswd��