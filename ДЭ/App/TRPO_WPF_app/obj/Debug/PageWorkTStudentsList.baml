   M S B A M L   `   `   `  ����G  CTRPO_WPF_app, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:TRPO_WPF_appTRPO_WPF_app  5      (    "TRPO_WPF_app.PageWorkTStudentsList   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:TRPO_WPF_app     5        N� Title$  PageWorkTStudentsList��5	      $	��390��6%   $	��755��62    N� 
Background
 �����.��5      �  � RowDefinitions 5   
   �� 5      $	��32* �6   �� 5      $��7* �6    � ColumnDefinitions 5   
   �� 5      $
��167* �6   �� 5      $
��181* �6   �� 5      $
��203* �6   �� 5      $
��204* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��DgreedGroups��5         ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6'   ���#92eaaa$��2q�6M      AutoGenerateColumns .     
IsReadOnly . $��0,0,0,1q�6�   $��Segoe Print)�6�   $��0��6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Группа��6%   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 65   �� *Name+5        5   
   -   5        $��DgreedStudents��5      $ * 6*    .  ���#92eaaa$��2q�6l    . $��0,0,0,1q�6�   $��3��6�   $��Segoe Print)�6�   $��1��6�    5        5      $ Имя��6%   	 62   �� *Students.Name+  5       $ Группа��6%   	 65   �� *Students.Groups.Name+  5!      $ Предмет��6%   	 66   �� *Subjects.Name+  5"      $ Оценка��6%   	 65   �� *Mark+  5#      -   5        
DateColumn��$ Дата��5#   9   	 6G   �� *	Mark_date+
 �� StringFormat$
 {0:dd/MM/yyyy}��5%      �� 5&   
   -   5        $��1��5&      $��3��6   $��0q�6.   $#��Добавить Оценку��69   6S   �� 5'   
   -   5        $��1��5'      $��2��6   $��0q�6.   $��18(�69   ��5(      �� 5)      $��Обновить��6    �� TextAlignment$ Center=�6,   5+      �� 5-   
   -   5        $��1��5-      $��0��6   $��0q�6.   $��18(�69   ��5.      �� 5/      $��
Назад��6   $ Center=�6)   51      52      53      