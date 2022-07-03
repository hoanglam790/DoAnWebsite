using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteDuLichDiaPhuong.Models;

namespace WebsiteDuLichDiaPhuong.Controllers.NguoiDung
{
    public class DuLichDiaPhuongController : Controller
    {
        DuLichDiaPhuongModel dbDuLich = new DuLichDiaPhuongModel();
        // GET: DuLichDiaPhuong
        public List<TINTUC> LayTinTuc(int count)
        {
            return dbDuLich.TINTUCs.Where(n => n.MaTheLoai == 1).OrderByDescending(x => x.NgayCapNhat).Take(count).ToList();
        }

        public List<TINTUC> LaySuKien(int count)
        {
            return dbDuLich.TINTUCs.Where(n => n.MaTheLoai == 2).OrderByDescending(x => x.NgayCapNhat).Take(count).ToList();
        }

        public ActionResult TrangChu()
        {
            return View();
        }

        //Hiển thị tin tức mới nhất
        public ActionResult MainMenu()
        {
            var layTin = LayTinTuc(6);
            return PartialView(layTin);
        }

        //Hiển thị sự kiện mới nhất
        public ActionResult BottomMenu()
        {
            var laySuKien = LaySuKien(6);
            return PartialView(laySuKien);
        }

        public ActionResult DanhSachQuanHuyen()
        {
            var dsqh = dbDuLich.HUYENs.ToList();
            return PartialView(dsqh);
        }

        public ActionResult DiaDanhTheoQuanHuyen(int id)
        {
            var ds = dbDuLich.DIADANHs.Where(n => n.MaHuyen == id).ToList();
            return View(ds);
        }

        public ActionResult GioiThieu()
        {
            var gioiThieu = dbDuLich.TINTUCs.Where(n => n.MaTinTuc == 7).ToList();
            return View(gioiThieu);
        }

        //Chi tiết địa danh theo từng quận, huyện
        public ActionResult ChiTiet(int id)
        {
            var chiTietDiaDanh = dbDuLich.DIADANHs.Where(n => n.MaDiaDanh == id).FirstOrDefault();
            return View(chiTietDiaDanh);
        }

        public ActionResult TinTuc()
        {
            var tinTuc = dbDuLich.TINTUCs.Where(n => n.MaTheLoai == 1).ToList();
            return View(tinTuc);
        }

        public ActionResult ChiTietTinTuc(int id)
        {
            var chiTietTinTuc = dbDuLich.TINTUCs.Where(n => n.MaTinTuc == id).FirstOrDefault();
            return View(chiTietTinTuc);
        }

        public ActionResult KhachSan()
        {
            var ks = dbDuLich.KHACHSANs.ToList();
            return View(ks);
        }

        public ActionResult ChiTietKhachSan(int id)
        {
            var chiTietKhachSan = dbDuLich.KHACHSANs.Where(n => n.MaKS == id).FirstOrDefault();
            return View(chiTietKhachSan);
        }
        //Sự kiện
        public ActionResult SuKien()
        {
            var sk = dbDuLich.TINTUCs.Where(n => n.MaTheLoai == 2).ToList();
            return View(sk);
        }
        public ActionResult ChiTietSuKien(int id)
        {
            var chiTietSuKien = dbDuLich.TINTUCs.Where(n => n.MaTinTuc == id).FirstOrDefault();
            return View(chiTietSuKien);
        }

        //Nhà hàng
        public ActionResult NhaHang()
        {
            var nh = dbDuLich.NHAHANGs.ToList();
            return View(nh);
        }

        public ActionResult ChiTietNhaHang(int id)
        {
            var chiTietNhaHang = dbDuLich.NHAHANGs.Where(n => n.MaNhaHang == id).FirstOrDefault();
            return View(chiTietNhaHang);
        }

        //Tour du lịch
        public ActionResult TourDuLich()
        {
            var tdl = dbDuLich.TOURDULICHes.ToList();
            return View(tdl);
        }

        public ActionResult ChiTietTourDuLich(int id)
        {
            var chiTietTourDuLich = dbDuLich.TOURDULICHes.Where(n => n.MaTour == id).FirstOrDefault();
            return View(chiTietTourDuLich);
        }

        public ActionResult LienHe()
        {
            return View();
        }
    }
}