   M S B A M L   `   `   `  ����H  DNBAManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:NBAManagement.PropertiesNBAManagement.Properties  5      '    !NBAManagement.Properties.TeamPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      8local&clr-namespace:NBAManagement.Properties     5        N� Title$  TeamPage��5	       � 	Resources 5      =  7System.Windows.Controls.Primitives.DataGridColumnHeader �� 
TargetType �� Property �� Value��%V   '        �� 5   
   "  6   .�5      ��  � ��$ Center=�64   5      5      .��5      �  � RowDefinitions 5   
   �� 5      $	��51* �6   �� 5      $	��88* �6   �� 5      $
��293* �6   �� 5      $	��18* �6   .+�5   
   � $��0��5      
�������$��2��5       5      �� 5      $	��83* �6    �� 5      $	��67* �6    5       �� 5#   
   $��Center=�5$      
���iii�$��NBA Management System��5&      $��25,21,590,14q�5'      $��16��5(      �� 5)   
   $��Center=�5*      $��Center=�5+      $��
Teams Main��5,      $��20(�5-      $��336,13,350,10q�5.      $	��114��6$   $��28��60   �� 50   
   $��20,20,629,44q�6   $��1��6+    �� Orientation$ 
Horizontal=�68   .+�51      �� -   5        $��btnEast��51      $��Eastern��6$   $��	12 0 12 0q�66   
�������
���iii�6v   �� 52      -   5        $��btnWest��52      $��Western��6$   $��	12 0 12 0q�66   
�������
���iii�$��24��6v   $	��Top=�6�   6�   53      �� 54   
   $��Center=�55      $��Center=�56      $��1��57      
�������$��1q�59      $��2��5:      $	��312��5;      $	��760��5<      $��20,44,20,25q�6   ._�5>      �� $��
0,0,-1,280q�6   $ 
Horizontal=�6-   .+�5?      �� -   5        $��
tableHead1��5?       �� TextAlignment$ Center=�6.   $	��252��6E   �� 5@      -   5        $��
tableHead2��5@      $ Center=�6.   $	��252��6E   �� 5A      -   5        $��
tableHead3��5A      $ Center=�6.   $	��253��6E   5B      5C      &   System.Windows.Controls.DataGrid  5E   
   -   5        $��dGreed1��5E   A      AutoGenerateColumns .  	   
IsReadOnly	 . $��1��6P   $��2��6]   $��23,80,525,10q�6n   
   Columns
 5F      0  *System.Windows.Controls.DataGridTextColumn  5G      ,  &System.Windows.Controls.DataGridColumn   Header$
 Name��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 63   �� *Name+  5H      $
 Abbr��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 50 63    6>   �� *Abbr+  5I      $ Logotip��6%    66   �� *Logo+4  .System.Windows.Controls.DataGridTemplateColumn  5J         CellTemplate 5K      �� 5L      .R�5M      �� -   5        $��Подробнее��5M   %   $��10(�69   6G   5N      5P      5R        5T   
   -   5        $��dGreed2��5T   A    .  	 . $	��252��6P   $��1��6\   $��2��6i   $��275,80,273,10q�6z   
 5U        5V      $
 Name��6%    63   �� *Name+  5W      $
 Abbr��6%   $ 50 63    6>   �� *Abbr+  5X      $ Logotip��6%    66   �� *Logo+  5Y       5Z      �� 5[      .R�5\      �� -	   5        $��Подробнее��5\   %   $��10(�69   6G   5]      5_      5a        5c   
   -
   5        $��dGreed3��5c   A    .  	 . $	��253��6P   $��1��6\   $��2��6i   $��527,80,20,10q�6z   
 5d        5e      $
 Name��6%    63   �� *Name+  5f      $
 Abbr��6%   $ 50 63    6>   �� *Abbr+  5g      $ Logotip��6%    66   �� *Logo+  5h       5i      �� 5j      .R�5k      �� -   5        $��Подробнее��5k   %   $��10(�69   6G   5l      5n      5p      5s      5t      