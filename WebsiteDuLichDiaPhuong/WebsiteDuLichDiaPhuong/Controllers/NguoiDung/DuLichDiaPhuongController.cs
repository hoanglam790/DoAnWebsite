using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteDuLichDiaPhuong.Models;

namespace WebsiteDuLichDiaPhuong.Controllers
{
    public class DuLichDiaPhuongController : Controller
    {
        DuLichDiaPhuongModel dbDuLich = new DuLichDiaPhuongModel();
        // GET: DuLichDiaPhuong
        public List<TINTUC> LayTinTuc(int count)
        {
            return dbDuLich.TINTUCs.OrderBy(x => x.TieuDe).Take(count).ToList();
        }

        public List<TINTUC> LaySuKien(int count)
        {
            return dbDuLich.TINTUCs.Where(n => n.MaTheLoai == 2).OrderBy(x => x.TieuDe).Take(count).ToList();
        }

        public ActionResult TrangChu()
        {
            var layTin = LayTinTuc(6);
            //var laySuKien = LaySuKien(6);
            return View(layTin);
        }

        public ActionResult TrangChu1()
        {
            //var layTin = LayTinTuc(6);
            var laySuKien = LaySuKien(6);
            return View(laySuKien);
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
            var gioiThieu = dbDuLich.TINTUCs.Where(n => n.MaTinTuc == 7);
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
            var tinTuc = dbDuLich.TINTUCs.Where(n => n.MaTheLoai == 1);
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

        //Sự kiện
        public ActionResult SuKien()
        {
            var sk = dbDuLich.TINTUCs.Where(n => n.MaTheLoai == 2);
            return View(sk);
        }
        public ActionResult ChiTietSuKien(int id)
        {
            var chiTietSuKien = dbDuLich.TINTUCs.Where(n => n.MaTinTuc == id).FirstOrDefault();
            return View(chiTietSuKien);
        }
    }
}