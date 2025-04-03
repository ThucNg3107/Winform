using QLST.Model;
using QLST.View;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media.Imaging;

namespace QLST.ViewModel
{
    public class HienThi
    {
        public string MaSp { get; set; }
        public string TenSP { get; set; }
        public int SL { get; set; }
        public int Dongia { get; set; }
        public int Tong { get; set; }
        public string Size { get; set; }
        public HienThi(string MaSp="", string TenSP="",string Size="", int SL=0,int Dongia=0, int Tong=0)
        {
            this.MaSp = MaSp;
            this.TenSP = TenSP;
            this.SL = SL;
            this.Tong = Tong;
            this.Size = Size;
            this.Dongia = Dongia;
        }
    }
    public class AddOrderViewModel : BaseViewModel
    {
        public ICommand Closewd { get; set; }
        public ICommand Minimizewd { get; set; }
        public ICommand MoveWindow { get; set; }
        public ICommand Loadwd { get; set; }
        public ICommand Choose { get; set; }
        private List<KHACHHANG> _LKH;
        public List<KHACHHANG> LKH { get => _LKH; set { _LKH = value; OnPropertyChanged(); } }
        private ObservableCollection<string> _listTK;
        public ObservableCollection<string> listTK { get => _listTK; set { _listTK = value; OnPropertyChanged(); } }
        private List<SANPHAM> _LSP;
        public List<SANPHAM> LSP { get => _LSP; set { _LSP = value; OnPropertyChanged(); } }
        private ObservableCollection<SANPHAM> _listSP;
        public ObservableCollection<SANPHAM> listSP { get => _listSP; set { _listSP = value; /*OnPropertyChanged();*/ } }
        private ObservableCollection<SANPHAM> _listSP1;
        public ObservableCollection<SANPHAM> listSP1 { get => _listSP1; set { _listSP1 = value; /*OnPropertyChanged();*/ } }
        private ObservableCollection<HienThi> _LHT;
        public ObservableCollection<HienThi> LHT { get => _LHT; set { _LHT = value; OnPropertyChanged(); } }
        private ObservableCollection<SANPHAM> _LSPSelected;
        public ObservableCollection<string> LDG { get; set; }
        public ObservableCollection<SANPHAM> LSPSelected { get=> _LSPSelected; set { _LSPSelected = value; OnPropertyChanged(); } }
        private ObservableCollection<CTHD> _LCTHD;
        public ObservableCollection<CTHD> LCTHD { get => _LCTHD; set { _LCTHD = value; OnPropertyChanged(); } }
        public int km { get; set; }
        public ICommand AddSP { get; set; }
        public ICommand DeleteSP { get; set; }
        public ICommand SearchCommand { get; set; }
        public ICommand LoadCsCommand { get; set; }
        public ICommand PrintSP { get; set; }
        public ICommand SaveHD { get; set; }
        public ICommand chooseKH { get; set; }
        public ICommand Filter { get; set; }
        public int tongtien { get; set; }
        public int tienkm { get; set; }
        public AddOrderViewModel()
        {
            tongtien = 0;
            tienkm = 0;
            LSPSelected = new ObservableCollection<SANPHAM>();
            LDG = new ObservableCollection<string>() { "1", "2", "3", "4", "5" };
            LHT = new ObservableCollection<HienThi>();
            LCTHD = new ObservableCollection<CTHD>(); listTK = new ObservableCollection<string>() { "Tên SP", "Giá SP" };
            listSP1 = new ObservableCollection<SANPHAM>(DataProvider.Ins.DB.SANPHAMs.Where(p => p.SL >= 0));
            listSP = new ObservableCollection<SANPHAM>(listSP1.GroupBy(p => p.TENSP).Select(grp => grp.FirstOrDefault()));
            Closewd = new RelayCommand<AddOrderView>((p) => true, (p) => Close(p));
            Minimizewd = new RelayCommand<AddOrderView>((p) => true, (p) => Minimize(p));
            MoveWindow = new RelayCommand<AddOrderView>((p) => true, (p) => moveWindow(p));
            Loadwd = new RelayCommand<AddOrderView>((p) => true, (p) => _Loadwd(p));
            Choose = new RelayCommand<AddOrderView>((p) => true, (p) => _Choose(p));
            chooseKH = new RelayCommand<AddOrderView>((p) => true, (p) => _chooseKH(p));
            AddSP = new RelayCommand<AddOrderView>((p) => true, (p) => _AddSP(p));
            DeleteSP = new RelayCommand<AddOrderView>((p) => true, (p) => _DeleteSP(p));
            PrintSP = new RelayCommand<AddOrderView>((p) => true, (p) => print(p));
            SaveHD = new RelayCommand<AddOrderView>((p) => true, (p) => _SaveHD(p));
            Filter = new RelayCommand<AddOrderView>((p) => true, (p) => _Filter(p));
            SearchCommand = new RelayCommand<AddOrderView>((p) => { return p == null ? false : true; }, (p) => _SearchCommand(p));
        }
        void moveWindow(AddOrderView p)
        {
            p.DragMove();
        }
        void Close(AddOrderView p)
        {
            tongtien = 0;
            tienkm = 0;
            LHT.Clear();
            p.Close();
        }
        void Minimize(AddOrderView p)
        {
            p.WindowState = WindowState.Minimized;
        }
        void _SearchCommand(AddOrderView paramater)
        {
            ObservableCollection<SANPHAM> temp = new ObservableCollection<SANPHAM>();
            if (paramater.txbSearch.Text != "")
            {
                foreach (SANPHAM s in listSP)
                 {
                     if (s.TENSP.ToLower().Contains(paramater.txbSearch.Text.ToLower()))
                     {
                         temp.Add(s);
                     }
                 }
                paramater.ListViewProduct.ItemsSource = temp;
            }
            else
                paramater.ListViewProduct.ItemsSource = listSP;
        }
        void _Loadwd(AddOrderView parameter)
        {
            listTK = new ObservableCollection<string>() { "Tên SP", "Giá SP" };
            listSP1 = new ObservableCollection<SANPHAM>(DataProvider.Ins.DB.SANPHAMs.Where(p => p.SL >= 0));
            listSP = new ObservableCollection<SANPHAM>(listSP1.GroupBy(p => p.TENSP).Select(grp => grp.FirstOrDefault()));
            LKH = DataProvider.Ins.DB.KHACHHANGs.ToList();
            LSP = DataProvider.Ins.DB.SANPHAMs.Where(p=>p.SL>=0).ToList();
            parameter.KH.SelectedItem = LKH.FirstOrDefault(kh => kh.HOTEN == "Khách vãng lai");
            parameter.KH.ItemsSource = LKH;
            parameter.SP.ItemsSource = LSP;
            parameter.MaND.Text = Const.ND.MAND;
            parameter.TenND.Text = Const.ND.TENND;
            parameter.Ngay.Text = DateTime.Now.ToString("dd/MM/yyyy hh:mm tt");
            parameter.TT.Text = String.Format("{0:0,0}", tongtien) + " VND";
            parameter.TT1.Text = String.Format("{0:0,0}", tongtien) + " VND";
            parameter.GG.Text = "- " + String.Format("{0:0,0}", tienkm) + " VND";
            km = 0;
            parameter.khuyenmai.Text = km.ToString()+"%";
            _Filter(parameter);

        }
        void _Filter(AddOrderView parameter)
        {
            switch (parameter.cbxchon.SelectedIndex.ToString())
            {
                case "0":
                    {
                        listSP = new ObservableCollection<SANPHAM>(listSP1.GroupBy(p => p.TENSP).Select(grp => grp.FirstOrDefault()));
                        parameter.ListViewProduct.ItemsSource = listSP;
                        break;
                    }
                case "1":
                    {
                        listSP = new ObservableCollection<SANPHAM>(listSP1.GroupBy(p => p.TENSP).Select(grp => grp.FirstOrDefault()).Where(p => p.LOAISP == "Đồ uống"));
                        parameter.ListViewProduct.ItemsSource = listSP;
                        break;
                    }
                case "2":
                    {
                        listSP = new ObservableCollection<SANPHAM>(listSP1.GroupBy(p => p.TENSP).Select(grp => grp.FirstOrDefault()).Where(p => p.LOAISP == "Đồ uống có ga"));
                        parameter.ListViewProduct.ItemsSource = listSP;
                        break;
                    }
                case "3":
                    {
                        listSP = new ObservableCollection<SANPHAM>(listSP1.GroupBy(p => p.TENSP).Select(grp => grp.FirstOrDefault()).Where(p => p.LOAISP == "Bánh"));
                        parameter.ListViewProduct.ItemsSource = listSP;
                        parameter.ListViewProduct.ItemsSource = listSP;
                        break;
                    }
                case "4":
                    {
                        listSP = new ObservableCollection<SANPHAM>(listSP1.GroupBy(p => p.TENSP).Select(grp => grp.FirstOrDefault()).Where(p => p.LOAISP == "SP Tiêu Dùng"));
                        parameter.ListViewProduct.ItemsSource = listSP;
                        break;
                    }
                case "5":
                    {
                        listSP = new ObservableCollection<SANPHAM>(listSP1.GroupBy(p => p.TENSP).Select(grp => grp.FirstOrDefault()).Where(p => p.LOAISP == "SP Đông Lạnh"));
                        parameter.ListViewProduct.ItemsSource = listSP;
                        break;
                    }
                case "6":
                    {
                        listSP = new ObservableCollection<SANPHAM>(listSP1.GroupBy(p => p.TENSP).Select(grp => grp.FirstOrDefault()).Where(p => p.LOAISP == "Trái cây đóng hộp"));
                        parameter.ListViewProduct.ItemsSource = listSP;
                        break;
                    }
                case "7":
                    {
                        listSP = new ObservableCollection<SANPHAM>(listSP1.GroupBy(p => p.TENSP).Select(grp => grp.FirstOrDefault()).Where(p => p.LOAISP == "Vật dụng gia đình"));
                        parameter.ListViewProduct.ItemsSource = listSP;
                        break;
                    }
                case "8":
                    {
                        listSP = new ObservableCollection<SANPHAM>(listSP1.GroupBy(p => p.TENSP).Select(grp => grp.FirstOrDefault()).Where(p => p.LOAISP == "Thực Phẩm"));
                        parameter.ListViewProduct.ItemsSource = listSP;
                        break;
                    }
                case "9":
                    {
                        listSP = new ObservableCollection<SANPHAM>(listSP1.GroupBy(p => p.TENSP).Select(grp => grp.FirstOrDefault()).Where(p => p.LOAISP == "Lương thực"));
                        parameter.ListViewProduct.ItemsSource = listSP;
                        break;
                    }
                case "10":
                    {
                        listSP = new ObservableCollection<SANPHAM>(listSP1.GroupBy(p => p.TENSP).Select(grp => grp.FirstOrDefault()).Where(p => p.LOAISP == "Gia Vị"));
                        parameter.ListViewProduct.ItemsSource = listSP;
                        break;
                    }
                case "11":
                    {
                        listSP = new ObservableCollection<SANPHAM>(listSP1.GroupBy(p => p.TENSP).Select(grp => grp.FirstOrDefault()).Where(p => p.LOAISP == "Văn phòng phẩm"));
                        parameter.ListViewProduct.ItemsSource = listSP;
                        break;
                    }
                case "12":
                    {
                        listSP = new ObservableCollection<SANPHAM>(listSP1.GroupBy(p => p.TENSP).Select(grp => grp.FirstOrDefault()).Where(p => p.LOAISP == "Đồ Ăn Đóng Hộp"));
                        parameter.ListViewProduct.ItemsSource = listSP;
                        break;
                    }
                case "13":
                    {
                        listSP = new ObservableCollection<SANPHAM>(listSP1.GroupBy(p => p.TENSP).Select(grp => grp.FirstOrDefault()).Where(p => p.LOAISP == "Đồ gia dụng"));
                        parameter.ListViewProduct.ItemsSource = listSP;
                        break;
                    }
                case "14":
                    {
                        listSP = new ObservableCollection<SANPHAM>(listSP1.GroupBy(p => p.TENSP).Select(grp => grp.FirstOrDefault()).Where(p => p.LOAISP == "Đồ Ăn Lạnh"));
                        parameter.ListViewProduct.ItemsSource = listSP;
                        break;
                    }
            }

        }
        void _chooseKH(AddOrderView parameter)
        {
            KHACHHANG temp = (KHACHHANG)parameter.KH.SelectedItem;
            if(temp!=null && temp.MAKH != "KH01")
            {
                int doanhso = 0;
                foreach (HOADON a in DataProvider.Ins.DB.HOADONs)
                {
                    if (a.MAKH == temp.MAKH)
                        doanhso += a.TRIGIA;
                }
                km = 0;
                if (doanhso > 2000000 && doanhso <= 5000000)
                    km = 2;
                else if (doanhso > 5000000 && doanhso <= 10000000)
                    km = 5;
                else if (doanhso > 10000000)
                    km = 10;
                parameter.khuyenmai.Text = km.ToString() + "%";
            }    
            else
            {
                km = 0;
                parameter.khuyenmai.Text = "0%";
            }              
        }

        void _Choose(AddOrderView parameter)
        {
            if(parameter.ListViewProduct.SelectedItem != null)
            {
                SANPHAM temp1 = (SANPHAM)parameter.ListViewProduct.SelectedItem;
                parameter.DG.Text = String.Format("{0:0,0}", temp1.GIA) + " VND"; ;
                parameter.SP.Text = temp1.TENSP;
            }
            else
            {
                parameter.DG.Text = "";
            }    
        }
        void _AddSP(AddOrderView parameter)
        {
            if(parameter.SP.SelectedItem==null)
            {
                System.Windows.MessageBox.Show("Bạn chưa chọn sản phẩm để thêm !", "THÔNG BÁO", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }    
            if(parameter.SoHD.Text=="")
            {
                System.Windows.MessageBox.Show("Bạn chưa nhập số hóa đơn !", "THÔNG BÁO", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            if (parameter.SL.Text == "")
            {
                System.Windows.MessageBox.Show("Bạn chưa nhập số lượng sản phẩm !", "THÔNG BÁO", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            try {
                int so = int.Parse(parameter.SL.Text);
            }
            catch {
                MessageBox.Show("Số lượng không hợp lệ !", "THÔNG BÁO", MessageBoxButton.OK, MessageBoxImage.Error);
                return ;
            }
            if (int.Parse(parameter.SL.Text) < 0)
            {
                MessageBox.Show("Số lượng sản phẩm không hợp lệ !", "THÔNG BÁO", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            if (parameter.KH.SelectedItem == null)
            {
                System.Windows.MessageBox.Show("Bạn chưa chọn khách hàng !", "THÔNG BÁO", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            SANPHAM a = (SANPHAM)parameter.SP.SelectedItem;
            if (a.SL >= int.Parse(parameter.SL.Text))
            {
                foreach (HienThi temp in LHT)
                {
                    if (temp.MaSp == a.MASP)
                    {
                        temp.SL += int.Parse(parameter.SL.Text);
                        temp.Tong = temp.SL * a.GIA;
                        foreach (CTHD temp1 in LCTHD)
                        {
                            if (temp1.MASP == a.MASP)
                            {
                                temp1.SL += int.Parse(parameter.SL.Text); ;
                            }
                        }
                        tongtien += int.Parse(parameter.SL.Text) * a.GIA*(100-km)/100;
                        tienkm+= int.Parse(parameter.SL.Text) * a.GIA * km / 100;
                        parameter.TT.Text = String.Format("{0:0,0}", tongtien) + " VND";
                        parameter.TT1.Text = String.Format("{0:0,0}", tongtien) + " VND";
                        parameter.GG.Text="- "+ String.Format("{0:0,0}", tienkm) + " VND";
                        parameter.ListViewSP.ItemsSource = LHT;
                        parameter.ListViewSP.Items.Refresh();
                        parameter.SP.SelectedItem = null;
                        parameter.SL.Text = "";
                        return;
                    }
                }
                HienThi b = new HienThi(a.MASP, a.TENSP, a.SIZE, int.Parse(parameter.SL.Text),a.GIA, int.Parse(parameter.SL.Text) * a.GIA);  
                CTHD cthd = new CTHD()
                {
                    MASP = a.MASP,
                    SL = int.Parse(parameter.SL.Text),
                    SANPHAM = a,
                    SOHD = int.Parse(parameter.SoHD.Text),
                };
                tongtien += int.Parse(parameter.SL.Text) * a.GIA*(100-km)/100;
                tienkm += int.Parse(parameter.SL.Text) * a.GIA * km / 100;
                parameter.TT.Text = String.Format("{0:0,0}", tongtien) + " VND";
                parameter.TT1.Text = String.Format("{0:0,0}", tongtien) + " VND";
                parameter.GG.Text = "- " + String.Format("{0:0,0}", tienkm) + " VND";
                LCTHD.Add(cthd);
                LHT.Add(b);
                parameter.ListViewSP.ItemsSource = LHT;
                parameter.ListViewSP.Items.Refresh();
                parameter.SP.SelectedItem = null;
                parameter.SL.Text = "";
            }
            else
                System.Windows.MessageBox.Show("Sản phẩm tồn kho không đủ cung cấp !", "THÔNG BÁO");
        }
        void _DeleteSP(AddOrderView parameter)
        {
            if(parameter.ListViewSP.SelectedItem==null)
            {
                System.Windows.MessageBox.Show("Bạn chưa chọn sản phẩm để xóa !", "THÔNG BÁO", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }    
            MessageBoxResult h = System.Windows.MessageBox.Show("  Bạn có chắc muốn xóa sản phẩm.", "THÔNG BÁO", MessageBoxButton.YesNoCancel,MessageBoxImage.Question);
            if (h == MessageBoxResult.Yes)
            {
                HienThi a = (HienThi)parameter.ListViewSP.SelectedItem;
                tongtien -= a.Tong*(100-km)/100;
                tienkm-= a.Tong *  km / 100;
                parameter.TT.Text = String.Format("{0:0,0}", tongtien) + " VND";
                parameter.TT1.Text = String.Format("{0:0,0}", tongtien) + " VND";
                parameter.GG.Text = "- " + String.Format("{0:0,0}", tienkm) + " VND";
                LHT.Remove(a);            
                foreach (CTHD b in LCTHD)
                {
                    if (b.MASP == a.MaSp && b.SL == a.SL)
                    {
                        LCTHD.Remove(b);
                        break;
                    }
                }
                parameter.SP.ItemsSource = LSP;
                parameter.SP.Items.Refresh();
                parameter.ListViewSP.Items.Refresh();
            }
            else
                return;
        }
        bool check(int m)
        {
            foreach (HOADON temp in DataProvider.Ins.DB.HOADONs)
            {
                if (temp.SOHD == m)
                    return true;
            }
            return false;
        }
        int rdma()
        {
            int ma;
            do
            {
                Random rand = new Random();
                ma = rand.Next(0, 10000);
            } while (check(ma));
            return ma;
        }
        void _SaveHD(AddOrderView parameter)
        {
            DataProvider.Ins.DB.SaveChangesAsync();
            if(parameter.KH.SelectedItem==null||parameter.ListViewSP.Items.Count==0)
            {
                System.Windows.MessageBox.Show("Thông tin hóa đơn chưa đầy đủ !", "THÔNG BÁO", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            MessageBoxResult h = System.Windows.MessageBox.Show("  Bạn muốn thanh toán ?", "THÔNG BÁO", MessageBoxButton.YesNoCancel,MessageBoxImage.Question);
            if (h == MessageBoxResult.Yes)
            {
                KHACHHANG a = (KHACHHANG)parameter.KH.SelectedItem;
                int tonggia = 0;
                foreach (HienThi b in LHT)
                {
                    tonggia += b.Tong;
                }
                double tien = (double)(1-(double)km/100)*tonggia;
                HOADON temp = new HOADON()
                {
                    SOHD = int.Parse(parameter.SoHD.Text),
                    MAKH = a.MAKH,
                    MAND = Const.ND.MAND,
                    NGHD = DateTime.Now,
                    CTHDs = new ObservableCollection<CTHD>(LCTHD),
                    TRIGIA = (int)tien,
                    KHACHHANG = a,
                    NGUOIDUNG = Const.ND,
                    KHUYENMAI = km
                };
                foreach(CTHD s in LCTHD)
                {
                    foreach (SANPHAM x in DataProvider.Ins.DB.SANPHAMs)
                    {
                        if (x.MASP == s.SANPHAM.MASP)
                        {
                            x.SL -= s.SL;
                        }
                    }
                }
                DataProvider.Ins.DB.HOADONs.Add(temp);
                DataProvider.Ins.DB.SaveChanges();
                MessageBoxResult d = System.Windows.MessageBox.Show("  Bạn có muốn in hóa đơn ?", "THÔNG BÁO", MessageBoxButton.YesNoCancel,MessageBoxImage.Question);
                if (d == MessageBoxResult.Yes)
                {
                    print(parameter);
                }    
                tongtien = 0;
                km = 0;
                tienkm = 0;
                LSPSelected.Clear();
                parameter.KH.SelectedItem = LKH.FirstOrDefault(kh => kh.HOTEN == "Khách vãng lai");
                LHT.Clear();
                LCTHD.Clear();
                parameter.ListViewSP.ItemsSource = LHT;
                parameter.TT.Text = tongtien.ToString();
                parameter.GG.Text = "- " + tienkm.ToString();
                parameter.TT1.Text = tongtien.ToString();
                parameter.SoHD.Text=rdma().ToString();
                MessageBox.Show("Thanh toán hóa đơn thành công !", "THÔNG BÁO");
            }
            else
                return;
        }
        void print(AddOrderView parameter)
        {  
                KHACHHANG temp = (KHACHHANG)parameter.KH.SelectedItem;
                PrintOrderView printOrderView = new PrintOrderView();
                printOrderView.Height = 300 + 35 * LHT.Count;
                printOrderView.TenKH.Text = temp.HOTEN;
                printOrderView.dc.Text = temp.DCHI;
                printOrderView.sdt.Text = temp.SDT;
                printOrderView.ngay.Text = DateTime.Now.ToString("dd/MM/yyyy hh:mm tt");
                printOrderView.sohd.Text = parameter.SoHD.Text;
                printOrderView.ListSP.ItemsSource = LHT;
                printOrderView.tt.Text = parameter.TT.Text;
                printOrderView.gg.Text = parameter.GG.Text;
                printOrderView.tt1.Text = parameter.TT1.Text;
                try
                {
                    PrintDialog printDialog = new PrintDialog();
                    if (printDialog.ShowDialog() == true)
                    {
                        printDialog.PrintVisual(printOrderView.PrintView, "BILL");
                    }
                }
                finally
                {

                }
                MessageBox.Show("In Hóa đơn thành công !","THÔNG BÁO");
        }
    }
}
