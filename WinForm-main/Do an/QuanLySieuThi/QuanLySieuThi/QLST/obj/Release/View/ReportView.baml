   M S B A M L   `   `   `  ���� J  FConvenientStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:QLST.View	QLST.View  b ^Syncfusion.SfChart.WPF, Version=19.3460.0.54, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89eGclr-namespace:Syncfusion.UI.Xaml.Charts;assembly=Syncfusion.SfChart.WPFSyncfusion.UI.Xaml.Charts     QLST.View.ReportView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     )localclr-namespace:QLST.View     _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  X
syncfusionGclr-namespace:Syncfusion.UI.Xaml.Charts;assembly=Syncfusion.SfChart.WPF  -     N�Name$  Reportwd��   ReportVM � DataContext# [  .  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *Loadwd+   CommandParameter ��  �� ElementName$ Reportwd��.���� $	��550��$	��665��
������� �� CornerRadius$ 40��	 �� Padding$	 13.75,0,6.875,0q�._�� 
 � RowDefinitions
 �� $��65 ��� $(��"40                                 ��� .+�� $��0��.+��� $��Center=�$��30(�$��20,0,0,0q� 
 Custom#��[ ���#97af8fTHỐNG KÊ� $��1��.+�(  "MaterialDesignThemes.Wpf.ColorZone  ���#97af8f   CornerRadius$ 10��   Mode$ 
PrimaryMid=�.����  �� Orientation$ 
Horizontal=�.+�	� -    	�Name$ btnMain��
 J� Uid$ 0��   MaterialDesignTabRadioButton#��[ $��20,4,4,4q� d� 	IsChecked$
 TrueY�$	��300��#��[ $��Tổng quan��
�������
�������   $ Click��.    �� *	SwitchTab+ �� $ Reportwd��  $ 	MouseMove��.    �� *
GetIdTab+ �� $ btnMain��	� -   $ btnSale��$ 1��#��[ $��4q�$	��300��#��[ $��Lịch sử kinh doanh��
�������
�������   $ Click��.    �� *	SwitchTab+ �� $ Reportwd��  $ 	MouseMove��.    �� *
GetIdTab+ �� $ btnSale��� $��2��$��
0, 5, 0, 0q�.+��� -    ��Name$ 
DonutChart��$	��250��$	��500��$��10q�
�������$ 25��$��Center=�$��Bottom=�y��� *	SetMain+._�'  !Syncfusion.UI.Xaml.Charts.SfChart  -     Name$ DChart��
�������)  #Syncfusion.UI.Xaml.Charts.ChartBase   Header$8 2Top 5 sản phẩm bán chạy nhất trong tháng��$��5q� � 	Resources   itemPanelTemplate��%   &	       �� .R��    Legend +  %Syncfusion.UI.Xaml.Charts.ChartLegend     DockPosition$ Bottom=�#��[    Series .	  (Syncfusion.UI.Xaml.Charts.DoughnutSeries	  -    	 Name$ Donut��/
  )Syncfusion.UI.Xaml.Charts.ChartSeriesBase 
  
LegendIcon$ Diamond=� 
  EnableAnimation . 2  ,Syncfusion.UI.Xaml.Charts.CircularSeriesBase   EnableSmartLabels .  
  XBindingPath$
 Type��6  0Syncfusion.UI.Xaml.Charts.AccumulationSeriesBase   YBindingPath$	 Num�� 	  CapStyle$ 	BothCurve=� 	  SegmentSpacing$ 0Q�  	  DoughnutCoefficient$	  0.7Q�$��Stretch=�!   LabelPosition$! OutsideExtended=�" 
  Palette$" Custom=�# 
  ItemsSource# �� *	Reviews+$ 
  
ColorModel$ /  )Syncfusion.UI.Xaml.Charts.ChartColorModel  %   CustomBrushes% �� & �� Color$& #e63946���� $& #adae49���� $& #3376bd���� $& #00798c���� $& #52489c��   $ Loaded��.    �� *	LoadDonut+ �� $ Reportwd���� -   $ NVBox��$	��150��$	��200��$��10q�$ 25��$��Right=�$	��Top=�y��� *	SetMain+���� ' �� EndPoint$' 0.5,1&�( �� 
StartPoint$( 0.5,0&�.��� ) � Color$) #85FFBD��* � Offset$* 0Q�� $) #97D9E1��$* 1Q�._��� $��Center=�$��Center=�.+�� 
 �� $��55 ��� $��55 �.+�� $��0��$	��150��.+��� $&�� Nhân viên năng suất nhất:��$
��Wrap=�$��20(�
�������#��[ $
��Auto��� $��1��$��Center=�+ � ColumnDefinitions+ �� $	��100 ��� $��50 �.+�� $��1��.+�'  !MaterialDesignThemes.Wpf.PackIcon  ,   Kind$, AccountStar=�
�������$��50��$��50���� -   - ��Name$- NVBest��$	��Top=�$
��NV00��. �� TextAlignment$
. Left=�$
��Bold"�$
��Wrap=�$��25(�
�������#��[ $
��Auto��$��Right=�$	��100��   $ Loaded��.    �� *LoadNV+ �� $ Reportwd���� -	   $- NVName��$��Bottom=�$
��Tên��$
. Left=�$
��Wrap=�$��13(�
�������#��[ $
��Auto���� -
   $ SPBox��$	��150��$	��200��$��10q�$ 25��$
��Left=�$	��Top=�y��� *	SetMain+���� $' 0.5,1&�$( 0.5,0&�.��� $) #FBAB7E��$* 0Q�� $) #F7CE68��$* 1Q�._��� $��Center=�$��Center=�.+�� 
 �� $��55 ��� $��55 �.+�� $��0��.+��� $��Center=�$��	10,0,10,0q�$0��*Khách hàng doanh số cao nhất tháng:��$
��Wrap=�$��20(�
�������#��[ $
��Auto��� $��1��$��Center=�+ �� $	��130 ��� $��50 �.+�� $��1��.+�  $, Crown=�$��Right=�
�������$��50��$��50���� -   $- MaxKH��$��10,0,0,0q�$	��Top=�$	��Mã��$
. Left=�$
��Bold"�$
��Wrap=�$��25(�
�������#��[ $
��Auto��   $ Loaded��.    �� *LoadKH+ �� $ Reportwd���� -   $- KHName��$��10,0,0,0q�$��CharacterEllipsis=�$��Bottom=�$
��Tên��$
. Left=�$��NoWrap=�$
��Auto��$��13(�
�������#��[ $
��Auto���� -   $ DTBox��$	��150��$	��200��$��10q�$ 25��$��Center=�$	��Top=�y��� *	SetMain+���� $' 0.5,1&�$( 0.5,0&�.��� $) #8EC5FC��$* 0Q�� $) #E0C3FC��$* 1Q�._��� $��Center=�$��Center=�.+�� 
 �� $��55 ��� $��55 �.+�� $��0��$	��150��.+��� $)��#Doanh thu so với tháng trước:��$
��Wrap=�$��20(�
�������#��[ $
��Auto��� $��1��$��Center=�+ �� $��40 ��� $	��120 �.+�� $��0��.+�  -   /  Name$/ IconUp��$��Bottom=�$, ArrowUpBold=�
�������$��50��$��50��y��� *Up+  -   $/ IconDown��$��Bottom=�$, ArrowDownBold=�
�������$��50��$��50��y��� *Down+� $��1��.+��� -   $- DTTrend��$��Center=�$��0��$. Center=�$
��Bold"�$
��Wrap=�$��20(�
�������#��[ $
��Auto��   $ Loaded��.    �� *LoadDT+ �� $ Reportwd���� -   $ DTChart��$	��420��$	��620��$��10q�
�������$ 30��y��� *
SetBills+._��� .+�� + �� �� .+��� -   0 ��Name$0 Combobox��$��25,10,10,10q�$	��100��$
��Left=�)  #MaterialDesignThemes.Wpf.HintAssist1   Hint$1 Chọn chu kì�� & "MaterialDesignFloatingHintComboBox#��[ ���� *Select+2 �� Mode$2 TwoWay=�   $ SelectionChanged��.    �� *
LoadCbbx+ �� $ Reportwd��  -   $ SampleChart��
�������$	��350��$ Đồ thị doanh thu��$	��600��$��Bottom=�3   PrimaryAxis3 ,  &Syncfusion.UI.Xaml.Charts.CategoryAxis  4   SecondaryAxis4 -  'Syncfusion.UI.Xaml.Charts.NumericalAxis     $	 Top=�   tooltipTemplate  Custom15 �� StringFormat6 �� 
TargetType  tooltipStyle7 �� Property8 �� Value��%  &	       7  7  &	 �     �� .R��� 
������ $��-5q�$	 4q�$ 3��._��� $ 
Horizontal=�.+��� 
���   �$. Center=�8��  ���� *	Item.DT+$5 {0:N0}���� $�� VNĐ��
���   �$. Center=�8�� �� "6 F�.��� 7 � ��
8 ������� 7 � ��8 �#FFE5D89   	Behaviors9 4  .Syncfusion.UI.Xaml.Charts.ChartTooltipBehavior  :   Style#: [ ;   Position$; Pointer=�. ,  &Syncfusion.UI.Xaml.Charts.ColumnSeries  -   <  Name$< ColChart��= 
  ShowTooltip= . > 
  TooltipTemplate#> [  . ? 
  AnimationDuration$? 00:00:01h�5  /Syncfusion.UI.Xaml.Charts.XySegmentDraggingBase@   EnableDragTooltip@ . $" Custom=�A 
  Label$A 	Doanh thu��$
 Time��,  &Syncfusion.UI.Xaml.Charts.XyDataSeriesB   YBindingPath$B DT��$   % �� $& 	LightPink��   $ Loaded��.    �� *	LoadCol+ �� $ Reportwd��