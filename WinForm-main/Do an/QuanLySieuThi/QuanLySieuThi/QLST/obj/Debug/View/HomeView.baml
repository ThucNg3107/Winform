   M S B A M L   `   `   `  ����J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View  5      h dSyncfusion.SfSkinManager.WPF, Version=19.3460.0.53, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89iLclr-namespace:Syncfusion.SfSkinManager;assembly=Syncfusion.SfSkinManager.WPFSyncfusion.SfSkinManager 5      U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf 5	   �       QLST.View.HomeView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      )localclr-namespace:QLST.View     5      gsyncfusionskinLclr-namespace:Syncfusion.SfSkinManager;assembly=Syncfusion.SfSkinManager.WPF     5      c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	      _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  6L   >Wpf4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf  6�   b	 ^Syncfusion.SfChart.WPF, Version=19.3460.0.54, Culture=neutral, PublicKeyToken=3d67ed1f87d44c894
syncfusion!http://schemas.syncfusion.com/wpf  	 5
      -   5          N�Name$  Homewd��5       
  HomeVM � DataContext# [  5      .��5      �� $	��550��5      $	��665��5      
������� �� CornerRadius$ 40��5      ._�5   
   �  � RowDefinitions 5      �� 5      $��65 �6    �� 5      $	��150 �6    �� 5      .+�5      � $��0��6   $��65��6    .+�5      �� $��Center=�5      $��30(�5      $��20,0,0,0q�6#    
 Custom#��[ 5       ���#97af8fTRANG CHỦ5!   !   5"      � 5#      $��1��6   .+�5$      �� .+�5%      �� $ 20��5&   %   $	��130��5'   %   $	��190��5(   %   $��23.75,0,0,0q�5)      ��5+      �� 5,       �� EndPoint$ 0.5,1&�62    �� 
StartPoint$ 0.5,0&�6C   .��5-   "   �  � Color$ 	#FFC165DD��6/    � Offset$ 0Q�6A   � 5.   "   $ 	#FF5C27FE��6/   $ 1Q�6A   5/      ._�51      �� $��Center=�6%   $��Center=�52   %   .+�54      �  55   "   �� 56   &   $��55 �64   �� 57   &   $��55 �64   .+�59   "   � $��0��6'   $	��150��64   .+�5:   &   �� $%��Số đơn bán ra trong ngày:��60   $
��Wrap=�6Q   $��20(�6e   
�������#��[ 6�   $
��Auto��6�   5;   #   � 5<   "   $��1��6'   $��Center=�64    � ColumnDefinitions 5=   &   �� 5>   *   $	��100 �6;   �� 5?   *   $��50 �6;   .+�5A   &   � $��1��6+   .+�5B   *   '  !MaterialDesignThemes.Wpf.PackIcon  	   Kind$	 Shopping=�6B   
�������$��50��6e   $��50��6q   5C   '   �� 5D   &   -   5        
 ��Name$
 DonNgay��5D   0   $��Center=�6A   $��0��6\    �� TextAlignment$
 Left=�6e   $
��Bold"�6z   $
��Wrap=�6�   $��30(�6�   
�������#��[ 6�   $
��Auto��6�   .  (System.Windows.Interactivity.Interaction   Triggers 5E   &   /  )System.Windows.Interactivity.EventTrigger  5F   "      	EventName$ Loaded��61   .  (System.Windows.Interactivity.TriggerBase   Actions. 5G   &   6  0System.Windows.Interactivity.InvokeCommandAction     Command 6<   �� *	LoadDon+   CommandParameter 5H   8   ��  �� ElementName$ Homewd��6j   5I   #   5K   '   5L   #   5M      5N      5O      �� 5P      $ 20��5Q   %   $	��130��5R   %   $��237.5,0,0,0q�5S      $	��190��5T   %   ��5V      �� 5W      $ 0.5,1&�62   $ 0.5,0&�6C   .��5X   "   � $ 	#FFFFCB52��6/   $ 0Q�6A   � 5Y   "   $ 	#FFFF7B02��6/   $ 1Q�6A   5Z      ._�5\      �� $��Center=�6%   $��Center=�5]   %   .+�5^      �  5_   "   �� 5`   &   $��55 �64   �� 5a   &   $��55 �64   .+�5c   "   � $��0��6'   $��30��64   $	��Top=�6@   .+�5d   &   �� $��Doanh thu ngày:��60   $
��Wrap=�6G   $��20(�6[   
�������#��[ 6|   $
��Auto��6�   5e   #   � 5f   "   $��1��6'    5g   &   �� 5h   *   $	��100 �6;   �� 5i   *   $��50 �6;   .+�5k   &   � $��1��6+   .+�5l   *     $��Center=�6B   $	 HandCoin=�6]   
�������$��50��6�   $��50��6�   5m   '   �� 5n   &   -   5        $
 DTNgay��5n   0   $��Center=�6@   $��0 VNĐ��6[   $
 Left=�6h   $
��Bold"�6}   $
��Wrap=�6�   $��20(�6�   
�������#��[ 6�   $
��Auto��6�    5o   "     5p   "   $ Loaded��61   . 5q   &      6<   �� *LoadDoanhThu+ 5r   8   �� $ Homewd��6j   5s   #   5u   '   5v   #   5w      5y      5z      �� 5{      $ 20��5|   %   $	��130��5}   %   $��451.25,0,0,0q�5~      $	��190��5   %   ��5�      �� 5�      $ 0.5,1&�62   $ 0.5,0&�6C   .��5�   "   � $ 	#FF1DE5E2��6/   $ 0Q�6A   � 5�   "   $ 	#FFB588F7��6/   $ 1Q�6A   5�      ._�5�      �� $��Center=�6%   $��Center=�5�   %   .+�5�      �  5�   "   �� 5�   &   $��55 �64   �� 5�   &   $��55 �64   .+�5�   "   � $��0��6'   $	��150��64   .+�5�   &   �� $)��#Số sản phẩm bán trong ngày:��60   $
��Wrap=�6S   $��20(�6g   
�������#��[ 6�   $
��Auto��6�   5�   #   � 5�   "   $��1��6'   $��Center=�64    5�   &   �� 5�   *   $	��100 �6;   �� 5�   *   $��50 �6;   .+�5�   &   � $��1��6+   .+�5�   *     $	 BasketCheck=�6B   
�������$��50��6h   $��50��6t   5�   '   �� 5�   &   -   5        $
 SPNgay��5�   0   $��Center=�6@   $��0��6[   $
 Left=�6d   $
��Bold"�6y   $
��Wrap=�6�   $��30(�6�   
�������#��[ 6�   $
��Auto��6�    5�   &     5�   "   $ Loaded��61   . 5�   &      6<   �� *LoadSP+ 5�   8   �� $ Homewd��6j   5�   #   5�   '   5�   #   5�      5�      5�      5�      5�      � 5�      $��2��6   .+�5�      �� $	��300��5�   !   $��617.5��5�   !   
�������$ 25��5�   !   $��Center=�5�   !   $��Center=�5�   !    J� Effect 5�      3  -System.Windows.Media.Effects.DropShadowEffect  5�         
BlurRadius$ 10Q�6+      	Direction$	 -90Q�6;      RenderingBias$ Quality=�5�         ShadowDepth$ 5Q�67   ._�5�      �� $��Center=�6!   .+�5�      ' 	 !Syncfusion.UI.Xaml.Charts.SfChart  $	��250��5�      $	��600��6*   ) 	 #Syncfusion.UI.Xaml.Charts.ChartBase   Header$1 +Đồ thị sản phẩm bán ra theo giờ��66      PrimaryAxis 5�      ,	 	 &Syncfusion.UI.Xaml.Charts.CategoryAxis	  5�   "      SecondaryAxis 5�      -
 	 'Syncfusion.UI.Xaml.Charts.NumericalAxis
  5�   "      Legend 5�      + 	 %Syncfusion.UI.Xaml.Charts.ChartLegend  5�   "    � 	Resources 5�        tooltipTemplate �� Padding �� Orientation  Custom1 �� 
TargetType  tooltipStyle �� Property  �� Value��%v  &	       7  &	 �     �� 5�   "   .R�5�   &   �� 
������ $��-5q�6F   $ 4q�5�   $   $ 3��60   ._�5�   *   �� $ 
Horizontal=�65   .+�5�   .   �� 
���   �$ Center=�6d   8��  ��68   �� *	Item.SP+6{   5�   +   5�   '   5�   #   �� 5�   "   " F�6(   .�5�   &   ��  � ��
  �����6?   �� 5�   &    � ��  �#FFE5D86=   5�   #   5�      !   	Behaviors! 5�   "   4 	 .Syncfusion.UI.Xaml.Charts.ChartTooltipBehavior  "   Style#" [ 6B   #   Position$# Pointer=�5�   "   $   Series.$ 5�      , 	 &Syncfusion.UI.Xaml.Charts.ColumnSeries  -   5        %  Name$% Chart��5�   6   / 	 )Syncfusion.UI.Xaml.Charts.ChartSeriesBase&   ShowTooltip& . '   TooltipTemplate#' [ 6X   (   Palette$( Custom=�6�   )   Label$) Sản phẩm��6�   *   XBindingPath$
* Hour��6�   , 	 &Syncfusion.UI.Xaml.Charts.XyDataSeries+   YBindingPath$+ SP��6�   ,   EnableAnimation, . -   AnimationDuration$- 00:00:01h�6  .   ItemsSource. 6�   �� *Data+/   
ColorModel/ 5�   "   / 	 )Syncfusion.UI.Xaml.Charts.ChartColorModel  5�   &   0   CustomBrushes0 5�   .   �� 1 �� Color$1 	LightPink��6>   5�   '   5�       5�        5�   "   $ Loaded��61   . 5�   &      6<   �� *	LoadChart+ 5�   8   �� $ Homewd��6j   5�   #   5�      5�      5�      5�      5�      5�      5�      