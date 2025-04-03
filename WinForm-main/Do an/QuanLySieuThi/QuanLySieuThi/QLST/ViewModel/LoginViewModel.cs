using QLST.Model;
using QLST.View;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace QLST.ViewModel
{
    public class LoginViewModel : BaseViewModel
    {
        public static bool IsLogin { get; set; }
        private string _Username;
        public string Username { get => _Username; set { _Username = value; OnPropertyChanged(); } }
        private string _Password;
        public string Password { get => _Password; set { _Password = value; OnPropertyChanged(); } }
        public ICommand CloseLogin { get; set; }
        public ICommand MinimizeLogin { get; set; }
        public ICommand MoveLogin { get; set; }
        public ICommand Login { get; set; }
        public ICommand PasswordChangedCommand { get; set; }
        public ICommand RegisterCommand { get; set; }
        public LoginViewModel()
        {
            IsLogin = false;
            Password = "";
            Username = "";
            CloseLogin = new RelayCommand<LoginWindow>((p) => true, (p) => Close());
            MinimizeLogin = new RelayCommand<LoginWindow>((p) => true, (p) => Minimize(p));
            MoveLogin = new RelayCommand<LoginWindow>((p) => true, (p) => Move(p));
            Login = new RelayCommand<LoginWindow>((p) => true, (p) => login(p));
            PasswordChangedCommand = new RelayCommand<PasswordBox>((p) => true, (p) => { Password = p.Password; });
            RegisterCommand = new RelayCommand<LoginWindow>((p) => true, (p) => _RegisterCommand(p));
        }
        public void Close()
        {
            System.Windows.Application.Current.Shutdown();
        }
        public void Minimize(LoginWindow p)
        {
            p.WindowState = WindowState.Minimized;
        }
        public void Move(LoginWindow p)
        {
            p.DragMove();
        }
        public void login(LoginWindow p)
        {
            try
            {
                if (p == null) return;
                var accCount = DataProvider.Ins.DB.NGUOIDUNGs.Where(x => x.USERNAME == Username && x.PASS == Password&&x.TTND).Count();
                if (accCount > 0)
                {
                    IsLogin = true;
                    Const.TenDangNhap = Username;
                    MainWindow mainWindow = new MainWindow();
                    mainWindow.Show();
                    Username = "";
                    p.Hide();
                }
                else
                {
                    MessageBox.Show("Tên đăng nhập hoặc mật khẩu không đúng!", "Thông báo", MessageBoxButton.OK);
                }
            }
            catch
            {
                MessageBox.Show("Mất kết nối đến cơ sở dữ liệu!", "Thông báo", MessageBoxButton.OK);
            }
        }

        void _RegisterCommand(LoginWindow parameter)
        {
            RegisterView registerView = new RegisterView();
            registerView.ShowDialog();   
        }
    }   
}
