   M S B A M L   `   `   `  ���� R  NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35_ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aR NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� BasedOn �� 
TargetType   BtnHome �� Property �� Value �� CornerRadius'   !MaterialDesignThemes.Wpf.PackIcon    Kind �� Triggers P� Property P� Value 	 BtnKH  BtnCreateBill  
BtnSetting  
BtnProduct  BtnWarehouse  BtnStatistic  	BtnManage  	BtnLogOut 	 CalendarStyle1&   System.Windows.Controls.Calendar	 �� 
TargetType
 ��Name5  /System.Windows.Controls.Primitives.CalendarItem  Name   CalendarItemStyle 
 CalendarButtonStyle17  1System.Windows.Controls.Primitives.CalendarButton'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   Transitions%  System.Windows.VisualTransition   GeneratedDuration   States   System.Windows.VisualState   
Storyboard g� Duration	 W� To �� TargetProperty �� 
TargetName	 �� To R� KeyTime R� Value  System.Windows.Visibility ��Name J� Opacity �� RadiusY �� RadiusX ��Name J� IsHitTestVisible �� Triggers  �� 
TargetName  CalendarItemStyle1! � 	Resources" �Name# � 	Resources  Key$ �� Color% � Cursor& �� Stretch' F�Name( � ColumnDefinitions) � RowDefinitions* ��Name  PreviousButtonTemplate  HeaderButtonTemplate  NextButtonTemplate  DisabledColor+ �� Value, �� Binding- �� RelativeSource. �� AncestorType  CalendarDayButtonStyle1:	  4System.Windows.Controls.Primitives.CalendarDayButton/ J� RenderTransformOrigin  NameApp 
 Custom  Custom1�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     FmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  :x,http://schemas.microsoft.com/winfx/2006/xaml      %+  &	        7d�&	 j    7d�&	 �    7d�&	 O    7d�&	 �    7d�&	 <    7d�&	 �    7d�&	 !
    7d�&	 �    &		     &	
 �    &	 �    7  7  7  7  7  &	 �     &	 u)    &	 �)    &	 	*    �� 8    " 	����  � �� �� .R��� $	��155��$��40��$ 10��$��Stretch=�$��Stretch=�#��z��$��0,0,0,6q�._�]� .+�   $
 Home=�$��25��$��25��$��Center=�$��6q��� $��TRANG CHỦ��$��13(�$
��Left=�$��Center=���  � ��
 ���� ��  � ��$ 0q� P�  �@d�	IsChecked$
 TrueY�. ���  � �� �#c0cfe6�� 8    " 	����  � �� �� .R��� $	��155��$��40��$ 10��$��Stretch=�$��Stretch=�#��z��$��0,0,0,6q�._�]� .+�   $ AccountMultiple=�$��25��$��25��$��Center=�$��6q��� $��KHÁCH HÀNG��$��13(�$
��Left=�$��Center=���  � ��
 ���� ��  � ��$ 0q� P�  �@d�	IsChecked$
 TrueY�. ���  � �� �#c0cfe6�� 8    " 	����  � �� �� .R��� $	��155��$��40��$ 10��$��Stretch=�$��Stretch=�#��z��$��0,0,0,6q�._�]� .+�   $ 
BasketPlus=�$��25��$��25��$��Center=�$��6q��� $��
BÁN HÀNG��$��13(�$
��Left=�$��Center=���  � ��
 ���� ��  � ��$ 0q� P�  �@d�	IsChecked$
 TrueY�. ���  � �� �#c0cfe6�� 8    " 	����  � �� �� .R��� $	��155��$��40��$ 10��$��Stretch=�$��Stretch=�#��z��$��0,0,0,6q�._�]� .+�   $ AccountWrenchOutline=�$��25��$��25��$��Center=�$��6q��� $��CÀI ĐẶT��$��13(�$
��Left=�$��Center=���  � ��
 ���� ��  � ��$ 0q� P�  �@d�	IsChecked$
 TrueY�. ���  � �� �#c0cfe6�� 8    " 	����  � �� �� .R��� $	��155��$��40��$ 10��$��Stretch=�$��Stretch=�#��z��$��0,0,0,6q�._�]� .+�   $ ShoppingCart=�$��25��$��25��$��Center=�$��6q��� $��SẢN PHẨM��$��13(�$
��Left=�$��Center=���  � ��
 ���� ��  � ��$ 0q� P�  �@d�	IsChecked$
 TrueY�. ���  � �� �#c0cfe6�� 8    " 	����  � �� �� .R��� $	��155��$��40��$ 10��$��Stretch=�$��Stretch=�#��z��$��0,0,0,6q�._�]� .+�   $ 	Warehouse=�$��25��$��25��$��Center=�$��6q��� $��NHẬP HÀNG��$��13(�$
��Left=�$��Center=���  � ��
 ���� ��  � ��$ 0q� P�  �@d�	IsChecked$
 TrueY�. ���  � �� �#c0cfe6�� 8    " 	����  � �� �� .R��� $	��155��$��40��$ 10��$��Stretch=�$��Stretch=�#��z��$��0,0,0,6q�._�]� .+�   $ ChartAreaspline=�$��25��$��25��$��Center=�$��6q��� $��THỐNG KÊ��$��13(�$
��Left=�$��Center=���  � ��
 ���� ��  � ��$ 0q� P�  �@d�	IsChecked$
 TrueY�. ���  � �� �#c0cfe6�� 8    " 	����  � �� �� .R��� $	��155��$��40��$ 10��$��Stretch=�$��Stretch=�#��z��$��0,0,0,6q�._�]� .+�   $ 
AccountCog=�$��25��$��25��$��Center=�$��6q��� $��
QUẢN LÝ��$��13(�$
��Left=�$��Center=���  � ��
 ���� ��  � ��$ 0q� P�  �@d�	IsChecked$
 TrueY�. ���  � �� �#c0cfe6�� " �����  � �� �� .R��� $	��150��$��40��$ 10��$��Stretch=�$��Stretch=�#��z��$��0,0,0,6q�._�]� .+�   $ Logout=�$��25��$��25��$��Center=�
�������$��6q��� 
�������$��ĐĂNG XUẤT��$��13(�$
��Left=�$��Center=���  � ��
 ���� ��  � ��$ 0q� P�  � �� . . ���  � �� �#c0cfe6�� "  .���  � ��
 �������  � ��
 ���� ��  � ��
 ���� ��  � ��$ 0q���  � �� �� "	  .R��� $
 	PART_Root��$��Center=�.+�  $ PART_CalendarItem��#��z��$��0q�#��z��#��z �� "  .���  � ��
 �������  � ��
 �������  � ��$ 40����  � ��$ 42����  � ��$ 12(���  � ��$ Center=���  � ��$ Center=���  � �� �� "	  .R��    CommonStates��   $ 0:0:0.1D�.   
Normal��  	MouseOver��. �� .��W� $ 0D�$ .5X�$ Opacity�$ 
Background��  Pressed��. �� .��W� $ 0D�$ .5X�$ Opacity�$ 
Background��  SelectionStates��   $ 0D�.   
Unselected��  Selected��. �� .��W� $ 0D�$	 .75X�$ Opacity�$ SelectedBackground��  ActiveStates��   $ 0D�.   
Active��  Inactive��. �� .���� $ 0D�$ 	#FF777777X�$6 0(TextElement.Foreground).(SolidColorBrush.Color)�$ 
NormalText��  CalendarButtonFocusStates��   $ 0D�.   CalendarButtonFocused��. �� .��T� $ 0D�$ 
Visibility�$ CalendarButtonFocusVisual��..�i� $ 0��  Visible=�  CalendarButtonUnfocused��. �� .��T� $ 0D�$ 
Visibility�$ CalendarButtonFocusVisual��..�i� $ 0��  	Collapsed=�.+��� $ SelectedBackground��#��z��$ 0Q�$ 1��$ 1���� $ 
Background��#��z��$ 0Q�$ 1��$ 1���� $ 
NormalText��
�������$
��Bold"�#��z��$��1,0,1,1q�#��z���� $ CalendarButtonFocusVisual�� .  $ 1��$ 1��
�������$y�	Collapsed=� P�  �@J�	IsFocused . . ��� $  CalendarButtonFocusVisual�� � y�$ Visible=��� "  .���  � ��$ 0,3,0,3q���  � �� �� "	  ! ���� (��       **(CalendarItem.DayTitleTemplateResourceKey+).R��� 
�������$
��Bold"�$��12(�$��Verdana)�$��Center=�$��0,6,0,6q�$��Center=����� .R�� $" 	PART_Root��# ���� DisabledColor $$ 	#A5FFFFFF��   CommonStates��.   
Normal��  Disabled��. �� .��W� $ 0D�$ 1X�$ Opacity�$ PART_DisabledVisual��.+��� #��z��#��z��#��z��$ 1��._��� 
������ $��2q�$ 1��._�� # ���� PreviousButtonTemplate "	 ��.R�� $
% Hand��   CommonStates��.   
Normal��  	MouseOver��. �� .���� $ 0D�$ 	LightPinkX�$* $(Shape.Fill).(SolidColorBrush.Color)�$
 path��  Disabled��. �� .��W� $ 0D�$ .5X�$" (Shape.Fill).(Brush.Opacity)�$
 path��.+��� 
������ $ 1Q�$
& Fill=�� .+�F� $
' path��"�����5���Ѱ�5h�W��<�h�	
�������$
��Left=�$��10��$��	14,-6,0,0q�$
& Fill=�$��Center=�$��8���� NextButtonTemplate "	 ��.R�� $
% Hand��   CommonStates��.   
Normal��  	MouseOver��. �� .���� $ 0D�$ 	LightPinkX�$* $(Shape.Fill).(SolidColorBrush.Color)�$
 path��  Disabled��. �� .��W� $ 0D�$ .5X�$" (Shape.Fill).(Brush.Opacity)�$
 path��.+��� 
������ $ 1Q�$
& Fill=�� .+�F� $
' path��"����xT��!��xT���S�h4 	
�������$��Right=�$��10��$��	0,-6,14,0q�$
& Fill=�$��Center=�$��8���� HeaderButtonTemplate "	 ��.R�� $
% Hand��   CommonStates��.   
Normal��  	MouseOver��. �� .���� $ 0D�$ 	LightPinkX�$6 0(TextElement.Foreground).(SolidColorBrush.Color)�$ buttonContent��  Disabled��. �� .��W� $ 0D�$ .5X�$ Opacity�$ buttonContent��.+��� $ buttonContent��#��z��#��z��
�������#��z��$��1,4,1,9q�#��z��( �� $
��Auto ��� $
��Auto ��� $
��Auto �) �� $
��Auto ��� $��* �.+��� $* PART_PreviousButton��$��0��|�.  $
��Left=�$��20��$��0��8��  $��28���� $* PART_HeaderButton��$��1��$
��Bold"�|�.  $��12(�$��Center=�$��0��8�� $��Center=��� $* PART_NextButton��$��2��|�.  $��Right=�$��20��$��0��8�� $��28��� $" PART_MonthView��$��3��$��Center=�$��6,-1,6,6q�$��1��$y�Visible=�( �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �) �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �� $" PART_YearView��$��3��$��Center=�$��6,-3,7,6q�$��1��$y�Hidden=�( �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �) �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $ PART_DisabledVisual��8�� $ 0Q�$ 2��$ 2��$
& Fill=�8�� $��1��$y�	Collapsed=� P�  � {� .  . ��� $  PART_DisabledVisual�� � y�$ Visible=��� $
+ Year��, �� *DisplayMode+- �� *FindAncestor+".  .a��� $  PART_MonthView�� � y�$ Hidden=��� $  PART_YearView�� � y�$ Visible=��� $+ Decade��, �� *DisplayMode+- �� *FindAncestor+".  .a��� $  PART_MonthView�� � y�$ Hidden=��� $  PART_YearView�� � y�$ Visible=��� " 	 .���  � ��$ 5����  � ��$ 5����  � ��$
 Bold"���  � ��$ 12(���  � ��$ Center=���  � ��$ Center=���  � �� �� "	 	 .R��    CommonStates��   $ 0:0:0.1D�.   
Normal��  	MouseOver��. �� .��W� $ 0D�$	 0.5X�$ Opacity�$ HighlightBackground��  Pressed��. �� .��W� $ 0D�$	 0.5X�$ Opacity�$ HighlightBackground��  Disabled��. �� .��W� $ 0D�$ 0X�$ Opacity�$ HighlightBackground��W� $ 0D�$	 .35X�$ Opacity�$ 
NormalText��  SelectionStates��   $ 0D�.   
Unselected��  Selected��. �� .��W� $ 0D�$	 .75X�$ Opacity�$ SelectedBackground��  CalendarButtonFocusStates��   $ 0D�.   CalendarButtonFocused��. �� .��T� $ 0D�$ 
Visibility�$ DayButtonFocusVisual��..�i� $ 0��  Visible=�  CalendarButtonUnfocused��. �� .��T� $ 0D�$ 
Visibility�$ DayButtonFocusVisual��..�i� $ 0��  	Collapsed=�  ActiveStates��   $ 0D�.   
Active��  Inactive��. �� .���� $ 0D�$
 GrayX�$6 0(TextElement.Foreground).(SolidColorBrush.Color)�$ 
NormalText��  	DayStates��   $ 0D�.   
RegularDay��  	Today��. �� .��W� $ 0D�$ 1X�$ Opacity�$ TodayBackground���� $ 0D�$ 	#FFFFFFFFX�$6 0(TextElement.Foreground).(SolidColorBrush.Color)�$ 
NormalText��  BlackoutDayStates��   $ 0D�.   	NormalDay��  BlackoutDay��. �� .��W� $ 0D�$ .2X�$ Opacity�$ Blackout��.+��� $ TodayBackground��
�������$ 0Q�$ 1��$ 1���� $ SelectedBackground��
�������$ 0Q�$ 1��$ 1���� #��z��#��z��#��z���� $ HighlightBackground��
�������$ 0Q�$ 1��$ 1���� $ 
NormalText��
�������#��z��$��5,1,5,1q�#��z��F� $' Blackout��}�����5 �Z @�J� �Q2� �J� �̉� iV� �A�� �J� �W�� �J� ѷ�� #�� �>8� 7T�K�� 7T�� � ��� ћ�� 7T����G @7T��� �D� 	���	#FF000000$��Stretch=�$��3q�$ 0Q�$/ 0.5,0.5&�$
& Fill=�$��Stretch=��� $ DayButtonFocusVisual�� .  $ 1��$ 1��
�������$y�	Collapsed=��� .���  � ��$1 +Font/Nunito-ExtraBold.ttf #Nunito ExtraBold)���  � ��
 �����*�/+Font/Nunito-ExtraBold.ttf #Nunito ExtraBold)�*�"Font/NunitoRegular.ttf #Nunito)�