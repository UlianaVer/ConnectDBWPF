using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net.Http;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;


namespace DBConnectionsWPFApp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private int IdUser;

        public MainWindow()
        {
            InitializeComponent();


            DBConnect.entities = new VereshchaginaEntities();

            refresh_grid();

            get_json();
        }

        private void DataGridRow_Selected(object sender, RoutedEventArgs e)
        {
            var dgrow = (DataGridRow)sender;
            var context = dgrow.DataContext as User;

            IdUser = context.Id;
            tbID.Text = context.Id.ToString();
            tbEmail.Text = context.Email;
            tbPassword.Text = context.Password;
        }


        private void Button_Click(object sender, RoutedEventArgs e)
        {

            var user = DBConnect.entities.User.FirstOrDefault(x => x.Id == IdUser);


            user.Email = tbEmail.Text;
            user.Password = tbPassword.Text;

            DBConnect.entities.SaveChanges();

            refresh_grid();

        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            var user = DBConnect.entities.User.FirstOrDefault(x => x.Id == IdUser);
            DBConnect.entities.User.Remove(user);

            DBConnect.entities.SaveChanges();

            refresh_grid();
        }
        private void refresh_grid()
        {
            //dataGrid.ItemsSource = DBConnect.entities.User.ToList();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            User user = new User();

            user.Username = tbUsername.Text;
            user.Email = tbNewEmail.Text;
            user.Password = tbNewPassword.Text;
            user.Birthdate = datePickerBD.SelectedDate;
            user.IdRole = Convert.ToInt32(tbNewRole.Text);

            DBConnect.entities.User.Add(user);
            DBConnect.entities.SaveChanges();

            refresh_grid();
        }

        private async void get_json()
        {
            string url = "https://jsonplaceholder.typicode.com/users";
            HttpClient http = new HttpClient();

            var responce = await http.GetAsync(url);
            var responcecontent = await responce.Content.ReadAsStringAsync();

            if (responce.StatusCode == System.Net.HttpStatusCode.OK)
            {
                List<UsersModel> commentsModels = JsonConvert.DeserializeObject<List<UsersModel>>(responcecontent);
                apiDataGrid.ItemsSource = commentsModels;
            }

        }
    }
}
