   M S B A M L   `   `   `  ����@  <Exam2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:Exam2Exam2  5          Exam2.pageClient   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      %localclr-namespace:Exam2     5      -   5          N� Title$  
pageClient��5	      .��5      �  � RowDefinitions 5   
   �� 5      $	��62* �6   �� 5      $	��13* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��DgreedClients��5         AutoGenerateColumns .     
IsReadOnly . $��10q�6V      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Фамилия��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 66   �� *
LastName+  5      $ Имя��6%    62   �� *	FirstName+  5      $ Отчество��6%    67   �� *
MiddleName+  5      -   5        ColPhone��$ Телефон��5   7    6H   �� *Phone+  5      -   5        ColEmail��$ 
Почта��5   7    6F   �� *Email+5      �� 5   
   -   5        $��Добавить��5      $��10,4,670,29q�6$   $��1��69   $��0��6F   6V   �� 5   
   -   5        $��btnUpd��5      $ ��Редактировать��6   $��153,4,527,29q�67   $��1��6M   6Z   �� 5   
   -   5        $��btnDel��5      $��Удалить��6   $��297,4,383,29q�61   $��1��6G   6T   �� 5   
   $��Поиск по ФИО��6   $��428,5,263,41q�6(   $��1��6>   �� 5   
   -   5        $��
Поиск��5      $��578,10,161,29q�6!   $��1��6O   �� 5   
   -	   5        $��Обновить��5      $��644,10,70,29q�6$   $��1��6:   6G   �� 5    
   -
   5        $��	txtSearch��5       $��428,10,227,29q�6#   $��1��6:   5"      5#      