   M S B A M L   `   `   `  ����H  DNBAManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:NBAManagementNBAManagement  5          NBAManagement.TeamsTest   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:NBAManagement     5        N� Title$  	TeamsTest��5	      .��5      �  � RowDefinitions 5   
   �� 5      $	��49* �6   �� 5      $	��95* �6   �� 5      $
��269* �6   �� 5      $	��17* �6   .+�5   
   � $��0��6   
�������$��2��63   �� 5   
   $��Center=�5      $��NBA Management System��5      $��20,12,595,9q�6*   $��30��6?   �� 5   
   $��Center=�5      $��Center=�5       �� TextAlignment$ Center=�5      $��
Teams Main��5      $��20(�5      $	��162��5      $��38��5      �� 5    
   $��Center=�5!      $��Center=�5"      $��1��5#      
�������$��1q�5%      $��2��5&      $	��317��5'      $	��760��5(      ._�5*      &   System.Windows.Controls.DataGrid  -   5        $��dGreedTeams��5*         AutoGenerateColumns .     
IsReadOnly .    Columns 5+      0  *System.Windows.Controls.DataGridTextColumn  5,      ,  &System.Windows.Controls.DataGridColumn   Header$ Team Id��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ 60 6U   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6:   �� *TeamId+6U     5-      $
 Name��6)   $ 70 6P    67   �� *Name+6P     5.      $
 Abbr��6)   $ 70 6P    67   �� *Abbr+6P     5/      $
 Abbr��6)   $ 70 6T    67   �� *
Discrict+6T     50      $
 Abbr��6)   $ 70 6T    67   �� *
division+6T   4  .System.Windows.Controls.DataGridTemplateColumn  51      $
 auto 6-   	   CellTemplate	 52      �� 53      .R�54   "   �� -   5        $��Подробнее��54   )   6=   55      57      59      5:      �� 5;   
   -   5        $��false��5;      $��266,17,486,0q�6!   67   5=      5>      