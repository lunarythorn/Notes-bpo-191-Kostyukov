   M S B A M L   `   `   `  ����@  <Notes, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:NotesNotes  5   	       Notes.CreationWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Notes     5   	   -   5           
main_Title  � Title#  �   5	   	   $	��650��6.   $	��350��6;    � WindowStartupLocation$ CenterScreen=�6G   ��5      �� 5   
    �� ImageSource$ /ruled_sheet.jpg��6   .��5      � .+�5   
   �� -   5        $��Bold_Button��5      $��B��6$   $
��Left=�6J   $��	16,10,0,0q�6e   $��24��6x   $��Arial Black)�6�   $
��Bold"�6�    � Cursor$
 Hand��6�   $��25��6�   $	��Top=�6�   
���������6�   Z�  J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         Opacity$	 0.4Q�6#   ��5      �� 5      $ 	/stol.jpg��6   5      �� 5   
   -   5        $��
Underlined��5      $��U��6#   $
��Left=�6H   $��	75,10,0,0q�6c   $	��Top=�6v   $��25��6�   $��25��6�   $��Arial Black)�6�   $
 Hand��6�   
���������6�   Z�  5        5      $	 0.4Q�6#   ��5      �� 5      $ 	/stol.jpg��6   5      �� 5!   
   -   5        $��Italic��5!      $��I��6   $
��Left=�6@   $��	45,10,0,0q�6[   $	��Top=�6n   $��25��6�   $��25��6�   $��Arial)�6�   $��Italic$�6�   $
 Hand��6�   $��11(�6�   
���������6�   Z�  5"        5#      $	 0.4Q�6#   ��5%      �� 5&      $ 	/stol.jpg��6   5(      �� 5*   
   -   5        $��
NoteEditor��5*      $��16,82,16,53q�6(   $��Arial)�6S   $��16(�6f   
���   ���6=   Z� . �5+      /� .T�5,      J� .*�6   .*�5-      �� $� ��6   5.      5/      50      �� 51   
   -   5        $��
Note_Title��51      $��
16,40,16,0q�6$   $�� ��68    �� TextWrapping$
 Wrap=�6@   $��Arial Black)�6j   $��16(�6�   $��30��6�   $	��Top=�6�   
���   ���6T   Z� 6�   �� 52   
   -   5         ��Name$ Note_Tag��52      $��16,592,16,0q�6$   $�� ��69   $
 Wrap=�6A   $��Arial)�6k   $��16(�6~   $��30��6�   $	��Top=�6�   
���������6U   Z� 6�   53      54      