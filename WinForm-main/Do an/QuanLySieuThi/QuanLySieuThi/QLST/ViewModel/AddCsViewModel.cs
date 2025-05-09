﻿using QLST.Model;
using QLST.View;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace QLST.ViewModel
{
    public class AddCsView:BaseViewModel
    {
        public ICommand Closewd { get; set; }
        public ICommand Minimizewd { get; set; }
        public ICommand MoveWindow { get; set; }
        public ICommand AddCsCommand { get; set; }
        public AddCsView()
        {
            Closewd = new RelayCommand<AddCustomerView>((p) => true, (p) => Close(p));
            Minimizewd = new RelayCommand<AddCustomerView>((p) => true, (p) => Minimize(p));
            MoveWindow = new RelayCommand<AddCustomerView>((p) => true, (p) => moveWindow(p));
            AddCsCommand = new RelayCommand<AddCustomerView>((p) => true, (p) => _AddCsCommand(p));
        }
        void moveWindow(AddCustomerView p)
        {
            p.DragMove();
        }
        void Close(AddCustomerView p)
        {
            p.Close();
        }
        void Minimize(AddCustomerView p)
        {
            p.WindowState = WindowState.Minimized;
        }
        bool check(string m)
        {
            foreach (KHACHHANG temp in DataProvider.Ins.DB.KHACHHANGs)
            {
                if (temp.MAKH == m)
                    return true;
            }
            return false;
        }
        string rdma()
        {
            string ma;
            do
            {
                Random rand = new Random();
                ma = "KH" + rand.Next(0, 10000).ToString();
            } while (check(ma));
            return ma;
        }
        void _AddCsCommand(AddCustomerView paramater)
        {
            if(paramater.TenKH.Text==""||paramater.SDT.Text==""||paramater.GT.SelectedItem==null||paramater.DC.Text=="")
            {
                MessageBox.Show("Bạn chưa nhập đủ thông tin !", "THÔNG BÁO", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }    
            MessageBoxResult h = System.Windows.MessageBox.Show("  Bạn muốn thêm khách hàng ?", "THÔNG BÁO", MessageBoxButton.YesNoCancel);
            if (h == MessageBoxResult.Yes)
            {
                if (string.IsNullOrEmpty(paramater.MaKH.Text) || string.IsNullOrEmpty(paramater.TenKH.Text) || string.IsNullOrEmpty(paramater.SDT.Text) || string.IsNullOrEmpty(paramater.GT.Text) || string.IsNullOrEmpty(paramater.DC.Text))
                {
                    MessageBox.Show("Thông tin chưa đầy đủ !", "THÔNG BÁO");
                }
                else
                {
                    if (DataProvider.Ins.DB.KHACHHANGs.Where(p => p.MAKH == paramater.MaKH.Text).Count() > 0)
                    {
                        MessageBox.Show("Mã khách hàng đã tồn tại !", "THÔNG BÁO");
                    }
                    else
                    {
                        KHACHHANG temp = new KHACHHANG();
                        temp.MAKH = paramater.MaKH.Text.ToString();
                        temp.HOTEN = paramater.TenKH.Text.ToString();
                        temp.SDT = paramater.SDT.Text.ToString();
                        temp.GIOITINH = paramater.GT.Text.ToString();
                        temp.DCHI = paramater.DC.Text.ToString();
                        DataProvider.Ins.DB.KHACHHANGs.Add(temp);
                        DataProvider.Ins.DB.SaveChanges();
                        MessageBox.Show("Thêm khách hàng thành công.", "THÔNG BÁO");
                        paramater.MaKH.Text = rdma();
                        paramater.TenKH.Clear();
                        paramater.SDT.Clear();
                        paramater.GT.SelectedItem=null;
                        paramater.GT.Items.Refresh();
                        paramater.DC.Clear();
                    }
                }
            }
        }             
    }
}
