   M S B A M L   `   `   `  ����H  DNBAManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:NBAManagementNBAManagement  5          NBAManagement.teamDetail   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:NBAManagement     5        N� Title$  
teamDetail��5	      .��5      �  � RowDefinitions 5   
   �� 5      $	��51* �6   �� 5      $	��88* �6   �� 5      $
��293* �6   �� 5      $	��18* �6   .+�5   
   � $��0��5      
�������$��2��5       5      �� 5      $	��83* �6    �� 5      $	��67* �6    5      �� 5   
   $��Center=�5      
���iii�$��NBA Management System��5      $��25,21,590,14q�5       $��16��5!      �� 5"   
   $��Center=�5#      $��Center=�5$      $��Team Detail��5%      $��20(�5&      $��336,13,350,10q�5'      $	��114��6$   $��28��60   �� 5)   
   -   5        $��txtSecondHead��5)      $��15(�6)   
���iii�$��20,10,438,59q�6L   $��1��6b   �� 5+   
   $��20,42,581,22q�6   $��1��6+    �� Orientation$ 
Horizontal=�68   .+�5,      �� -   5        $��	btnRoster��5,      $��Roster��6&   $��	12 0 12 0q�67   
�������
���iii�6w   �� 5-      -   5        $��	btnMtchUp��5-      $��Matchup��6&   $��	12 0 12 0q�68   
�������
���iii�$��24��6x   $	��Top=�6�   6�   �� 5.      -   5        $��btnLnUp��5.      $��Lineup��6$   $��	12 0 12 0q�65   
�������
���iii�$��24��6u   $	��Top=�6�   $��65��6�   6�   5/      �� 50   
   $��Center=�51      $��Center=�52      $��1��53      
�������$��1q�55      $��2��56      $	��312��57      $	��760��58      $��
20,66,20,3q�6   ._�5:      &   System.Windows.Controls.DataGrid  -   5        $��dGreedDetail��5:   E      AutoGenerateColumns .     
IsReadOnly . $��1��6Y   $��2��6f   $��9q�6w      Columns 5;      0  *System.Windows.Controls.DataGridTextColumn  5<      ,  &System.Windows.Controls.DataGridColumn   Header$ 
First Name��6)   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6=   �� *	FirstName+  5=      $ 	Last Name��6)    6<   �� *
LastName+  5>      $ Gender��6)    69   �� *Gender+  5?      $ Height��6)    69   �� *Height+  5@      $ Weight��6)    69   �� *Weight+  5A      $ No��6)    65   �� *ShirtNumber+  5B      $ E-mail��6)    69   �� *Email+  5C      $ Country��6)    6:   �� *Country.CountryName+5E      5G      5H      5I      