   M S B A M L   `   `   `  ����G  CTRPO_WPF_app, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:TRPO_WPF_appTRPO_WPF_app  5      $    TRPO_WPF_app.PageWorkStudMakrs   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:TRPO_WPF_app     5        N� Title$  PageWorkStudMakrs��5	      $	��390��6!   $	��755��6.    N� 
Background
 ����� � 	Resources 5       �� 
TargetType �� Property �� Value��%+  '��       �� 5   
   " ��6   .�5      ��  �@��TextAlignment$ Center=�6.   �� 5       � ��$ Center=�64   �� 5       � ��$ Center=�62   �� 5       � ��$ 22(�6)   �� 5       � ��$ Segoe Print)�6+   �� 5       � ��
 � d �6+   5      5      .��5      �  � RowDefinitions 5   
   �� 5      $	��75* �6   �� 5      $	��77* �6   �� 5      $	��81* �6   �� 5      $	��87* �6   �� 5      $	��70* �6    � ColumnDefinitions 5   
   �� 5      $
��167* �6   �� 5       $
��181* �6   �� 5!      $
��121* �6   �� 5"      $
��286* �6   .+�5%   
   &   System.Windows.Controls.DataGrid  -   5        $��DGreedSubjects��5%         ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6)   	   AutoGenerateColumns	 .  ���#92eaaa$��2q�6k   
   
IsReadOnly
 . $��Segoe Print)�6�   $��0��6�   $��4��6�      Columns 5&      0  *System.Windows.Controls.DataGridTextColumn  5'      ,  &System.Windows.Controls.DataGridColumn   Header$ Предмет��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 66   �� *Name+5)        5+   
   -   5        $��DgreedMarks��5+      $ * 6&   	 .  ���#92eaaa$��2q�6h   
 . $��2��6�   $��Segoe Print)�6�   $��1��6�   $��4��6�    5,        5-      $  Преподаватель��6%    6<   �� *Teachers.Name+  5.      -   5        
MarkColumn��$ Оценка��5.   9    6I   �� *Mark+  5/      -   5        
DateColumn��$ Дата��5/   9    6G   �� *	Mark_date+ �� StringFormat$ {0:dd/MM/yyyy}��51      �� 53   
   -   5        $��tbName��53      $	��160��6"   $��50��6.   $��3��6;   �� 54   
   -   5        $��tbGroup��54      $��Группа: ��6#   $	��160��63   $��50��6?   $��3��6L   $��1��6\   �� 55   
   -   5        $��	tbSubject��55      $	��270��6%   $��50��61   $��3��6>   $��2��6N   �� 56   
   -   5        $��tbMiddleMark��56      $	��160��6K   $��50��6W   $��3��6d   $��3��6t   ��6(   �� $
 0.00��6t   �� 58   
   -	   5        $��4��58      $��0��6   $��0q�6.   $��18(�69   ��59      �� 5:      $��
Назад��6    �� TextAlignment$ Center=�6)   5<      �� 5=   
   -
   5        $��Center=�5=      $��4��6.   $��3��6;   $��0q�6K   $��18(�6V   ��5>      �� 5?      $��
Вывод��6   $ Center=�6)   5A      5B      5C      