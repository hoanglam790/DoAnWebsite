using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteDuLichDiaPhuong.Models;
using PagedList;

namespace WebsiteDuLichDiaPhuong.Controllers.Admin
{
    public class NhaHangController : Controller
    {
        DuLichDiaPhuongModel dbDuLich = new DuLichDiaPhuongModel();
        // GET: NhaHang
        public ActionResult DanhSachNhaHang(int? page)
        {
            int pageSize = 5;
            int pageNumber = (page ?? 1);

            var danhSach = dbDuLich.NHAHANGs.ToList();
            return View(danhSach.ToPagedList(pageNumber, pageSize));
        }
        public ActionResult ThemNhaHangMoi()
        {
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemNhaHangMoi(NHAHANG nhahang)
        {
            if (ModelState.IsValid)
            {
                NHAHANG nh = new NHAHANG();
                nh.TenNhaHang = nhahang.TenNhaHang;
                nh.DiaChi = nhahang.DiaChi;
                nh.SDT = nhahang.SDT;
                dbDuLich.NHAHANGs.Add(nhahang);
                dbDuLich.SaveChanges();
                return RedirectToAction("DanhSachNhaHang");
            }
            return View(nhahang);
        }
        // Sửa thông tin
        public ActionResult SuaNhaHang(int id)
        {
            NHAHANG nhahang = dbDuLich.NHAHANGs.SingleOrDefault(n => n.MaNhaHang == id);
            if (nhahang == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(nhahang);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult SuaNhaHang(NHAHANG nhahang)
        {
            if (ModelState.IsValid)
            {
                var suaNhaHang = dbDuLich.NHAHANGs.SingleOrDefault(p => p.MaNhaHang == nhahang.MaNhaHang);
                suaNhaHang.TenNhaHang = nhahang.TenNhaHang;
                suaNhaHang.DiaChi = nhahang.DiaChi;
                suaNhaHang.SDT = nhahang.SDT;
                UpdateModel(suaNhaHang);
                dbDuLich.SaveChanges();
                return RedirectToAction("DanhSachNhaHang", nhahang);
            }
            return View(nhahang);
        }
        public ActionResult ChiTietNhaHang(int id)
        {
            NHAHANG nhahang = dbDuLich.NHAHANGs.SingleOrDefault(n => n.MaNhaHang == id);
            if (nhahang == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(nhahang);
        }
        public ActionResult XoaNhaHang(int id)
        {
            NHAHANG nhahang = dbDuLich.NHAHANGs.SingleOrDefault(n => n.MaNhaHang == id);
            if (nhahang == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(nhahang);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult XoaNhaHang(int id, NHAHANG nhahang)
        {
            var xoaNhaHang = dbDuLich.NHAHANGs.SingleOrDefault(p => p.MaNhaHang == id);
            dbDuLich.NHAHANGs.Remove(xoaNhaHang);
            dbDuLich.SaveChanges();
            return RedirectToAction("DanhSachNhaHang");
        }
    }
}