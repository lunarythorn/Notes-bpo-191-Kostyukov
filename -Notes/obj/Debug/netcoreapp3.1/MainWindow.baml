   M S B A M L   `   `   `  ����@  <Notes, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:NotesNotes  5   	       Notes.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Notes     5   	      
main_Title  � Title#  �   5   	   $	��750��6.   $	��420��6;    � WindowStartupLocation$ CenterScreen=�6G   ��5	      �� 5
   
    �� ImageSource$ /ruled_sheet.jpg��6   .��5      � .+�5   
   �� -   5        $��CreateButton��5        main_Add#���  6&   $��Center=�6K   $��0,90,0,0q�6h   $	��Top=�6z   $��20(�6�   $��Arial Black)�6�   $��63��6�   $
��Bold"�6�    � Cursor$
 Hand��6�    � UseLayoutRounding$ False��6�    �� IsCancel$
 True��6  $	��205��6*  
������� J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         Opacity$	 0.5Q�6#   ��5      �� 5       �� Color$ 	#FF707070��6"   	 �� Opacity$	 0Q�64   ��5      �� 5      $ 	/stol.jpg��6   
 j� Stretch$
 UniformToFill=�65   5      �� 5   
   -   5        $��	NotesList��5      $��18,237,18,37q�6%   $��Arial Black)�6�   ���	#FF111111���	#FF3C3C3C$��16(�6�   ��6h   Z�  � ContextMenu 5      �� 5      .@�5      m� -   5          main_Del#���  5      6]   5      5      �� 5   
   $&�� 108,25                    ,108,0q�6   #���   5       $
��Wrap=�6@   $��Arial Black)�6T   $��36(�6m    �� TextAlignment$ Center=�6{   $��44��6�   $	��Top=�6�   ���	#FF1111116�   �� 5!   
   $��19,190,18,0q�6     	main_List#���  6)   $
��Wrap=�6L   $	��Top=�6`   $��47��6x   $��Arial Black)�6�   $��24(�6�   $ Center=�6�   $
��Bold"�6�   ���	#FF1111116�   �� 5"   
   -   5        $��	0,0,18,10q�5"      $��Right=�6O   $	��120��6k   $��22��6w   $��Bottom=�6�   .@�5#      �� -   5        $	��nRu��5#        	r_Russian#���  6&   
 � Tag$ rus-RU��6L   �� 5$      -   5        $	��nEn��5$        	r_English#���  6&   $ en-US��6L   5%      �� 5&   
   -   5         ��Name$ 	TagButton��5&        main_Tag#���  6%   $
��Left=�6J   $��
330,90,0,0q�6e   $	��Top=�6y   $��20(�6�   $��Arial Black)�6�   $��63��6�   $
��Bold"�6�   $
 Hand��6�   $ False��6�   $
 True��6  $��64��6&  
������� 5'        5(      $	 0.5Q�6#   ��5*      �� 5+      $ 	#FF707070��6"   $	 0Q�64   ��5-      �� 5.      $ 	/stol.jpg��6   $
 UniformToFill=�65   50      52      53      