using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Drawing;
using NotesClass;

namespace Notes
{  
    public partial class CreationWindow : Window
    {
        NotesClass.NotesClass n;
             
        private bool isChanged;
        private string title;
        public CreationWindow(ref NotesClass.NotesClass obj)
        {
            InitializeComponent();
            isChanged = false;
            n = obj;
            NoteEditor.TextChanged += NoteEditor_TextChanged;
        }

        private void NoteEditor_TextChanged(object sender, TextChangedEventArgs e)
        {
            isChanged = true;
        }

        public bool isChanged_f()
        {
            return isChanged;
        }

        public CreationWindow(string title, ref FileStream fs, ref NotesClass.NotesClass obj)
         {
             InitializeComponent();
             this.set_view(title, ref fs); 
             isChanged = false;
             NoteEditor.TextChanged += NoteEditor_TextChanged;
             n = obj;
        }

        public event EventHandler CreationWindowClosed;

        private void CreationWIndow_Closed(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if (!Note_Title.Text.Equals("")) { title = Note_Title.Text; }
            else
            {
                TextRange tmp = new TextRange(NoteEditor.Document.ContentStart, NoteEditor.Document.ContentEnd); 
                title = new string(tmp.Text.Where(c => !char.IsControl(c)).ToArray()); 
            }
            string cur_dir = Directory.GetCurrentDirectory();

            if (this.isChanged_f() && File.Exists(cur_dir + "\\" + title + ".rtf"))
            {
                TextRange range = new TextRange(NoteEditor.Document.ContentStart, NoteEditor.Document.ContentEnd);
                n.remove_file(title);
                n.add_file(title, range);
            }
            else if (this.isChanged_f()) 
            {
                TextRange range = new TextRange(NoteEditor.Document.ContentStart, NoteEditor.Document.ContentEnd);
                n.add_file(title, range);

            }
            else if (File.Exists(cur_dir + "\\" + title + ".rtf")) 
            {

            }

            CreationWindowClosed(this, EventArgs.Empty);
        }

        public NotesClass.NotesClass get_tmp ()
        {
            return n;
        }

        public string get_title()
        {
            return title;
        }

        public void set_view(string title, ref FileStream fs) 
        {
            Note_Title.Text = title;
            TextRange doc = new TextRange(NoteEditor.Document.ContentStart, NoteEditor.Document.ContentEnd);
            doc.Load(fs, DataFormats.Rtf);        
        }

        private void Bold_Button_Click(object sender, RoutedEventArgs e)
        {
            EditingCommands.ToggleBold.Execute(null, NoteEditor);
        }

        private void Underlined_Click(object sender, RoutedEventArgs e)
        {
            EditingCommands.ToggleUnderline.Execute(null, NoteEditor);
        }

        private void Italic_Click(object sender, RoutedEventArgs e)
        {
            EditingCommands.ToggleItalic.Execute(null, NoteEditor);
        }

        private void Note_Tag_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void Note_Title_GotFocus(object sender, RoutedEventArgs e)
        {
            if (Note_Title.Text == "Введите заголовок")
            {
                Note_Title.Text = "";
                Note_Title.Foreground = new SolidColorBrush(System.Windows.Media.Color.FromArgb(0xFF, 0xFF, 0xFF, 0xFF));
            }
        }

        private void Note_Title_LostFocus(object sender, RoutedEventArgs e)
        {
            if (Note_Title.Text == "")
            {
                Note_Title.Text = "Введите заголовок";
                Note_Title.Foreground = new SolidColorBrush(System.Windows.Media.Color.FromArgb(0xFF, 0x8A, 0x8A, 0x8A));
            }
        }

        private void Note_Title_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }
}