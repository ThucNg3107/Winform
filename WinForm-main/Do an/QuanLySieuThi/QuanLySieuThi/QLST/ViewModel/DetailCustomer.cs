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
    public class DetailCustomer:BaseViewModel
    {
        public ICommand Closewd { get; set; }
        public ICommand Minimizewd { get; set; }
        public ICommand MoveWindow { get; set; }
        private string MaKH;
        public ICommand GetMAKH { get; set; }
        public ICommand Update { get; set; }
        public ICommand Delete { get; set; }
        public DetailCustomer()
        {
            Closewd = new RelayCommand<DetailCustomerView>((p) => true, (p) => Close(p));
            Minimizewd = new RelayCommand<DetailCustomerView>((p) => true, (p) => Minimize(p));
            MoveWindow = new RelayCommand<DetailCustomerView>((p) => true, (p) => moveWindow(p));
            GetMAKH = new RelayCommand<DetailCustomerView>((p) => true, (p) => _GetMAKH(p));
            Update = new RelayCommand<DetailCustomerView>((p) => true, (p) => _Update(p));
            Delete = new RelayCommand<DetailCustomerView>((p) => true, (p) => _Delete(p));
        }
        void moveWindow(DetailCustomerView p)
        {
            p.DragMove();
        }
        void Close(DetailCustomerView p)
        {
            p.Close();
        }
        void Minimize(DetailCustomerView p)
        {
            p.WindowState = WindowState.Minimized;
        }
        void _GetMAKH(DetailCustomerView paramater)
        {
            MaKH = paramater.MaKH.Text;
        }
        void _Update(DetailCustomerView p)
        {
            MessageBoxResult h = System.Windows.MessageBox.Show("  Bạn muốn cập nhật thông tin ?", "THÔNG BÁO", MessageBoxButton.YesNoCancel,MessageBoxImage.Question);
            if (h == MessageBoxResult.Yes)
            {
                if (string.IsNullOrEmpty(p.TenKH.Text) || string.IsNullOrEmpty(p.SDT.Text) || string.IsNullOrEmpty(p.GT.Text) || string.IsNullOrEmpty(p.DC.Text))
                {
                    MessageBox.Show("Thông tin chưa đầy đủ !", "THÔNG BÁO", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {
                    var temp = DataProvider.Ins.DB.KHACHHANGs.Where(pa => pa.MAKH == MaKH);
                    foreach (KHACHHANG a in temp)
                    {
                        a.HOTEN = p.TenKH.Text;
                        a.SDT = p.SDT.Text;
                        a.GIOITINH = p.GT.Text;
                        a.DCHI = p.DC.Text;
                    }
                    DataProvider.Ins.DB.SaveChanges();
                    MessageBox.Show("Cập nhật thông tin thành công !", "THÔNG BÁO");
                }
            }                    
        }
        void _Delete(DetailCustomerView parameter)
        {
            MessageBoxResult h = System.Windows.MessageBox.Show("Bạn muốn xóa khách hàng này?", "THÔNG BÁO", MessageBoxButton.YesNoCancel, MessageBoxImage.Question);
            if (h == MessageBoxResult.Yes)
            {
                var customer = DataProvider.Ins.DB.KHACHHANGs.Where(c => c.MAKH == MaKH).FirstOrDefault();
                if (customer != null)
                {
                    // Xóa khách hàng
                    DataProvider.Ins.DB.KHACHHANGs.Remove(customer);
                    DataProvider.Ins.DB.SaveChanges();
                    MessageBox.Show("Xóa khách hàng thành công!", "THÔNG BÁO", MessageBoxButton.OK, MessageBoxImage.Information);

                    // Đóng cửa sổ sau khi xóa
                    parameter.Close();
                }
                else
                {
                    MessageBox.Show("Không tìm thấy khách hàng!", "THÔNG BÁO", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }
    }
}
