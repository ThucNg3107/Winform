   M S B A M L   `   `   `  ���� J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View  h dSyncfusion.SfSkinManager.WPF, Version=19.3460.0.53, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89iLclr-namespace:Syncfusion.SfSkinManager;assembly=Syncfusion.SfSkinManager.WPFSyncfusion.SfSkinManager U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf     QLST.View.HomeView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     )localclr-namespace:QLST.View     gsyncfusionskinLclr-namespace:Syncfusion.SfSkinManager;assembly=Syncfusion.SfSkinManager.WPF     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  >Wpf4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf  b	 ^Syncfusion.SfChart.WPF, Version=19.3460.0.54, Culture=neutral, PublicKeyToken=3d67ed1f87d44c894
syncfusion!http://schemas.syncfusion.com/wpf  	 -     N�Name$  Homewd�� 
  HomeVM � DataContext# [  .���� $	��550��$	��665��
������� �� CornerRadius$ 40��._��  � RowDefinitions �� $��65 ��� $	��150 ��� .+�� $��0��$��65��.+��� $��Center=�$��30(�$��20,0,0,0q� 
 Custom#��[ ���#97af8fTRANG CHỦ� $��1��.+��� .+��� $ 20��$	��130��$	��190��$��23.75,0,0,0q�����  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ 	#FFC165DD�� � Offset$ 0Q�� $ 	#FF5C27FE��$ 1Q�._��� $��Center=�$��Center=�.+��  �� $��55 ��� $��55 �.+�� $��0��$	��150��.+��� $%��Số đơn bán ra trong ngày:��$
��Wrap=�$��20(�
�������#��[ $
��Auto��� $��1��$��Center=� � ColumnDefinitions �� $	��100 ��� $��50 �.+�� $��1��.+�'  !MaterialDesignThemes.Wpf.PackIcon  	   Kind$	 Shopping=�
�������$��50��$��50���� -   
 ��Name$
 DonNgay��$��Center=�$��0�� �� TextAlignment$
 Left=�$
��Bold"�$
��Wrap=�$��30(�
�������#��[ $
��Auto��.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *	LoadDon+   CommandParameter ��  �� ElementName$ Homewd���� $ 20��$	��130��$��237.5,0,0,0q�$	��190������ $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFFFCB52��$ 0Q�� $ 	#FFFF7B02��$ 1Q�._��� $��Center=�$��Center=�.+��  �� $��55 ��� $��55 �.+�� $��0��$��30��$	��Top=�.+��� $��Doanh thu ngày:��$
��Wrap=�$��20(�
�������#��[ $
��Auto��� $��1�� �� $	��100 ��� $��50 �.+�� $��1��.+�  $��Center=�$	 HandCoin=�
�������$��50��$��50���� -   $
 DTNgay��$��Center=�$��0 VNĐ��$
 Left=�$
��Bold"�$
��Wrap=�$��20(�
�������#��[ $
��Auto��   $ Loaded��.    �� *LoadDoanhThu+ �� $ Homewd���� $ 20��$	��130��$��451.25,0,0,0q�$	��190������ $ 0.5,1&�$ 0.5,0&�.��� $ 	#FF1DE5E2��$ 0Q�� $ 	#FFB588F7��$ 1Q�._��� $��Center=�$��Center=�.+��  �� $��55 ��� $��55 �.+�� $��0��$	��150��.+��� $)��#Số sản phẩm bán trong ngày:��$
��Wrap=�$��20(�
�������#��[ $
��Auto��� $��1��$��Center=� �� $	��100 ��� $��50 �.+�� $��1��.+�  $	 BasketCheck=�
�������$��50��$��50���� -   $
 SPNgay��$��Center=�$��0��$
 Left=�$
��Bold"�$
��Wrap=�$��30(�
�������#��[ $
��Auto��   $ Loaded��.    �� *LoadSP+ �� $ Homewd��� $��2��.+��� $	��300��$��617.5��
�������$ 25��$��Center=�$��Center=� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     
BlurRadius$ 10Q�   	Direction$	 -90Q�   RenderingBias$ Quality=�   ShadowDepth$ 5Q�._��� $��Center=�.+�' 	 !Syncfusion.UI.Xaml.Charts.SfChart  $	��250��$	��600��) 	 #Syncfusion.UI.Xaml.Charts.ChartBase   Header$1 +Đồ thị sản phẩm bán ra theo giờ��   PrimaryAxis ,	 	 &Syncfusion.UI.Xaml.Charts.CategoryAxis	     SecondaryAxis -
 	 'Syncfusion.UI.Xaml.Charts.NumericalAxis
     Legend + 	 %Syncfusion.UI.Xaml.Charts.ChartLegend   � 	Resources   tooltipTemplate �� Padding �� Orientation  Custom1 �� 
TargetType  tooltipStyle �� Property  �� Value��%�   &	       7  &	 �     �� .R��� 
������ $��-5q�$ 4q�$ 3��._��� $ 
Horizontal=�.+��� 
���   �$ Center=�8��  ���� *	Item.SP+�� " F�.���  � ��
  �������  � ��  �#FFE5D8!   	Behaviors! 4 	 .Syncfusion.UI.Xaml.Charts.ChartTooltipBehavior  "   Style#" [ #   Position$# Pointer=�$   Series.$ , 	 &Syncfusion.UI.Xaml.Charts.ColumnSeries  -   %  Name$% Chart��/ 	 )Syncfusion.UI.Xaml.Charts.ChartSeriesBase&   ShowTooltip& . '   TooltipTemplate#' [ (   Palette$( Custom=�)   Label$) Sản phẩm��*   XBindingPath$
* Hour��, 	 &Syncfusion.UI.Xaml.Charts.XyDataSeries+   YBindingPath$+ SP��,   EnableAnimation, . -   AnimationDuration$- 00:00:01h�.   ItemsSource. �� *Data+/   
ColorModel/ / 	 )Syncfusion.UI.Xaml.Charts.ChartColorModel  0   CustomBrushes0 �� 1 �� Color$1 	LightPink��   $ Loaded��.    �� *	LoadChart+ �� $ Homewd��