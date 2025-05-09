﻿using QLST.Model;
using QLST.View;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace QLST.ViewModel
{
    public class Review
    {
        public string Type { get; set; }
        public int Num { get; set; }
        public Review(string Type = "", int Num = 0)
        {
            this.Type = Type;
            this.Num = Num;
        }
    }
    public class YData
    {
        private int _Time;
        public int Time { get => _Time; set { _Time = value; } }
        private long _DT;
        public long DT { get => _DT; set { _DT = value; } }
        public YData(int h = 0, long sp = 0)
        {
            Time = h; DT = sp;
        }
    }
    public class PN
    {
        public DateTime Ngay { get; set; }
        public string NV { get; set; }
        public int MaPN { get; set; }
        public PN()
        {
            Ngay = DateTime.Now; NV = ""; MaPN = 0;
        }
    }

    class ReportViewModel : BaseViewModel
    {
        public ICommand GetIdTab { get; set; }
        public ICommand SwitchTab { get; set; }
        private Visibility _SetMain;
        public Visibility SetMain { get => _SetMain; set { _SetMain = value; OnPropertyChanged(); } }
        private Visibility _Up;
        public Visibility Up { get => _Up; set { _Up = value; OnPropertyChanged(); } }
        private Visibility _Down;
        public Visibility Down { get => _Down; set { _Down = value; OnPropertyChanged(); } }
        private Visibility _SetBills;
        public Visibility SetBills { get => _SetBills; set { _SetBills = value; OnPropertyChanged(); } }
        public string Name;
        public List<Review> Reviews { get; set; }
        public List<YData> YDatas { get; set; }
        public long Tien { get; set; }
        public DateTime Ngay { get; set; }
        public string TenSP { get; set; }
        public string MaSP { get; set; }
        public int SL { get; set; }
        public int MaxSell { get; set; }
        public string BestKH { get; set; }
        public string KHName { get; set; }
        public int MaxNV { get; set; }
        public string NVName { get; set; }
        public string NVBest { get; set; }
        public long ThisMonth { get; set; }
        public long LastMonth { get; set; }
        public int MaPN { get; set; }
        private ObservableCollection<string> _Select;
        public ObservableCollection<string> Select { get => _Select; set { _Select = value; OnPropertyChanged(); } }
        private ObservableCollection<HOADON> _listHD;
        public ObservableCollection<HOADON> listHD { get => _listHD; set { _listHD = value; OnPropertyChanged(); } }
        public ICommand LoadDonut { get; set; }
        public ICommand LoadCol { get; set; }
        public ICommand LoadCbbx { get; set; }
        public ICommand LoadKH { get; set; }
        public ICommand LoadNV { get; set; }
        public ICommand LoadDT { get; set; }
        public ICommand LoadTotal { get; set; }
        public ICommand LoadView { get; set; }
        public ICommand Loadwd { get; set; }

        public ReportViewModel()
        {
            Select = new ObservableCollection<string> { "Theo năm", "Theo tháng" };
            LoadCbbx = new RelayCommand<ReportView>((p) => true, (p) => ColChart(p));
            Loadwd = new RelayCommand<ReportView>((p) => true, (p) => _loadwd(p));
            GetIdTab = new RelayCommand<RadioButton>((p) => true, (p) => Name = p.Uid);
            SwitchTab = new RelayCommand<ReportView>((p) => true, (p) => switchtab(p));
            LoadDonut = new RelayCommand<ReportView>((p) => true, (p) => DonutChart(p));
            LoadKH = new RelayCommand<ReportView>((p) => true, (p) => KHCount(p));
            LoadNV = new RelayCommand<ReportView>((p) => true, (p) => NVCount(p));
            LoadDT = new RelayCommand<ReportView>((p) => true, (p) => DTTrend(p));
            listHD = new ObservableCollection<HOADON>(DataProvider.Ins.DB.HOADONs);
        }
        public void _loadwd(ReportView p)
        {
            p.Combobox.SelectedIndex = 1;
            ColChart(p);
            SetMain = Visibility.Visible;
            SetBills = Visibility.Hidden;
        }
        public void DTTrend(ReportView p)
        {
            if(DataProvider.Ins.DB.HOADONs.Where(x => x.NGHD.Month == DateTime.Now.Month).Count()==0)
            {
                ThisMonth = 0;
            }
            else
            {
                ThisMonth = DataProvider.Ins.DB.HOADONs.Where(x => x.NGHD.Month == DateTime.Now.Month).Sum(x => x.TRIGIA);
            }
            if(DataProvider.Ins.DB.HOADONs.Where(x => x.NGHD.Month == DateTime.Now.Month-1).Count() == 0)
            {
                LastMonth = 0;
            }    
            else
            {
                LastMonth = DataProvider.Ins.DB.HOADONs.Where(x => x.NGHD.Month == DateTime.Now.Month - 1).Sum(x => x.TRIGIA);    
            }
            long temp = ThisMonth - LastMonth;
            if (temp >= 0)
            {
                p.DTTrend.Text = temp.ToString("#,###");
                p.DTTrend.Foreground = new SolidColorBrush(Color.FromRgb(255, 255, 255));
                Up = Visibility.Visible;
                Down = Visibility.Collapsed;
            }
            else
            {
                p.DTTrend.Text = temp.ToString("#,###");
                p.DTTrend.Foreground = new SolidColorBrush(Color.FromRgb(255, 255, 255));
                Up = Visibility.Collapsed;
                Down = Visibility.Visible;
            }
        }
        public void NVCount(ReportView p)
        {
            MaxNV = int.MinValue;
            foreach (HOADON hd in DataProvider.Ins.DB.HOADONs)
            {
                int temp = DataProvider.Ins.DB.HOADONs.Where(x => x.MAND == hd.MAND).Count();
                if (MaxNV < temp)
                {
                    MaxNV = temp;
                    NVBest = hd.MAND;
                }
            }
            NVName = DataProvider.Ins.DB.NGUOIDUNGs.Where(x => x.MAND == NVBest).Select(x => x.TENND).FirstOrDefault();
            p.NVBest.Text = NVBest;
            p.NVName.Text = string.Join(" ", NVName.Split().Reverse().Take(2).Reverse());
        }
        public void KHCount(ReportView p)
        {
            MaxSell = 0;
            foreach (HOADON hd in DataProvider.Ins.DB.HOADONs.Where(x => x.NGHD.Month == DateTime.Now.Month))
            {
                int temp = DataProvider.Ins.DB.HOADONs.Where(x => x.MAKH == hd.MAKH).Count();
                if (MaxSell < temp)
                {
                    MaxSell = temp;
                    BestKH = hd.MAKH;
                    KHName = hd.KHACHHANG.HOTEN;
                }
            }
            if (MaxSell == 0)
            {
                BestKH = "";
                KHName = "(chưa có)";
            }
            p.MaxKH.Text = BestKH;
            p.KHName.Text = KHName;
        }
        public void ColChart(ReportView p)
        {
            if (p.Combobox.SelectedIndex == 0)
            {
                p.SampleChart.Header = "Đồ thị doanh thu năm " + DateTime.Now.Year.ToString();
                var query = DataProvider.Ins.DB.HOADONs.Select(x => new ReportViewModel()
                {
                    Tien = x.TRIGIA,
                    Ngay = x.NGHD
                });
                YDatas = new List<YData>();
                for (int h = 1; h < 13; h++)
                {
                    long value = 0;
                    if (query.Where(x => x.Ngay.Month == h && x.Ngay.Year == DateTime.Now.Year).Select(x => x.Tien).Count() > 0)
                    {
                        value = query.Where(x => x.Ngay.Month == h && x.Ngay.Year == DateTime.Now.Year).Select(x => x.Tien).Sum();
                    }
                    YData result = new YData(h, value);
                    YDatas.Add(result);
                }
            }
            else
            {
                p.SampleChart.Header = "Đồ thị doanh thu tháng " + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Year.ToString();
                var query = DataProvider.Ins.DB.HOADONs.Select(x => new ReportViewModel()
                {
                    Tien = x.TRIGIA,
                    Ngay = x.NGHD
                });
                YDatas = new List<YData>();
                for (int h = 1; h <= 31; h++)
                {
                    long value = 0;
                    if (query.Where(x => x.Ngay.Day == h && x.Ngay.Month == DateTime.Now.Month && x.Ngay.Year == DateTime.Now.Year).Select(x => x.Tien).Count() > 0)
                    {
                        value = query.Where(x => x.Ngay.Day == h && x.Ngay.Month == DateTime.Now.Month && x.Ngay.Year == DateTime.Now.Year).Select(x => x.Tien).Sum();
                    }
                    YData result = new YData(h, value);
                    YDatas.Add(result);
                }
            }
            p.ColChart.ItemsSource = YDatas;

        }
        
        void DonutChart(ReportView p)
        {
            var query = from a in DataProvider.Ins.DB.CTHDs
                        join b in DataProvider.Ins.DB.SANPHAMs on a.MASP equals b.MASP
                        where a.MASP == b.MASP && a.HOADON.NGHD.Month == DateTime.Now.Month && a.HOADON.NGHD.Year == DateTime.Now.Year
                        select new ReportViewModel()
                        {
                            SL = a.SL,
                            MaSP = a.MASP,
                            TenSP = b.TENSP,
                            Ngay = a.HOADON.NGHD
                        };
            string sp1 = "", sp2 = "", sp3 = "", sp4 = "", sp5 = "";
            int max1 = 0;
            foreach (ReportViewModel obj in query)
            {
                int temp = query.Where(x => x.TenSP == obj.TenSP && x.Ngay.Month == DateTime.Now.Month && x.Ngay.Year == DateTime.Now.Year).Sum(x => x.SL);
                if (max1 < temp)
                {
                    max1 = temp;
                    sp1 = obj.TenSP;
                }
            }
            int max2 = 0;
            foreach (ReportViewModel obj in query)
            {
                if (obj.TenSP == sp1) continue;
                int temp = query.Where(x => x.TenSP == obj.TenSP && x.Ngay.Month == DateTime.Now.Month && x.Ngay.Year == DateTime.Now.Year).Sum(x => x.SL);
                if (max2 < temp)
                {
                    max2 = temp;
                    sp2 = obj.TenSP;
                }
            }
            int max3 = 0;
            foreach (ReportViewModel obj in query)
            {
                if (obj.TenSP == sp1 || obj.TenSP == sp2) continue;
                int temp = query.Where(x => x.TenSP == obj.TenSP && x.Ngay.Month == DateTime.Now.Month && x.Ngay.Year == DateTime.Now.Year).Sum(x => x.SL);
                if (max3 < temp)
                {
                    max3 = temp;
                    sp3 = obj.TenSP;
                }
            }
            int max4 = 0;
            foreach (ReportViewModel obj in query)
            {
                if (obj.TenSP == sp1 || obj.TenSP == sp2 || obj.TenSP == sp3) continue;
                int temp = query.Where(x => x.TenSP == obj.TenSP && x.Ngay.Month == DateTime.Now.Month && x.Ngay.Year == DateTime.Now.Year).Sum(x => x.SL);
                if (max4 < temp)
                {
                    max4 = temp;
                    sp4 = obj.TenSP;
                }
            }
            int max5 = 0;
            foreach (ReportViewModel obj in query)
            {
                if (obj.TenSP == sp1 || obj.TenSP == sp2 || obj.TenSP == sp3 || obj.TenSP == sp4) continue;
                int temp = query.Where(x => x.TenSP == obj.TenSP && x.Ngay.Month == DateTime.Now.Month && x.Ngay.Year == DateTime.Now.Year).Sum(x => x.SL);
                if (max5 < temp)
                {
                    max5 = temp;
                    sp5 = obj.TenSP;
                }
            }
            Reviews = new List<Review>();
            Review r1 = new Review()
            {
                Type = sp1,
                Num = max1
            };
            Review r2 = new Review()
            {
                Type = sp2,
                Num = max2
            };
            Review r3 = new Review()
            {
                Type = sp3,
                Num = max3
            };
            Review r4 = new Review()
            {
                Type = sp4,
                Num = max4
            };
            Review r5 = new Review()
            {
                Type = sp5,
                Num = max5
            };
            Reviews.Add(r1);
            Reviews.Add(r2);
            Reviews.Add(r3);
            Reviews.Add(r4);
            Reviews.Add(r5);
            p.Donut.ItemsSource = Reviews;
            p.Donut.AdornmentsInfo = new Syncfusion.UI.Xaml.Charts.ChartAdornmentInfo()
            {
                ShowLabel = true,
                ShowConnectorLine = true,
                Margin = new Thickness(2)
            };
        }
        void switchtab(ReportView p)
        {

            int index = int.Parse(Name);
            switch (index)
            {
                case 0:
                    {
                        SetMain = Visibility.Visible;
                        SetBills = Visibility.Hidden;
                        break;
                    }
                case 1:
                    {
                        listHD = new ObservableCollection<HOADON>(DataProvider.Ins.DB.HOADONs);
                        SetMain = Visibility.Hidden;
                        SetBills = Visibility.Visible;
                        break;
                    }
                case 2:
                    {
                        SetMain = Visibility.Hidden;
                        SetBills = Visibility.Hidden;
                        break;
                    }
                default:
                    {
                        break;
                    }
            }
        }
    }
}
