using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteDuLichDiaPhuong.Models;
using PagedList;
using PagedList.Mvc;
using System.IO;

namespace WebsiteDuLichDiaPhuong.Controllers.Admin
{
    public class QuanHuyenController : Controller
    {
        DuLichDiaPhuongModel dbDuLich = new DuLichDiaPhuongModel();
        // GET: QuanHuyen
        public ActionResult DanhSachQuanHuyen()
        {
            var danhSach = dbDuLich.HUYENs.ToList();
            return View(danhSach);
        }

        public ActionResult ThemQuanHuyenMoi()
        {
            return View();
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemQuanHuyenMoi(HUYEN huyen)
        {
            if (ModelState.IsValid)
            {
                HUYEN h = new HUYEN();
                h.TenHuyen = huyen.TenHuyen;
                h.MieuTa = huyen.MieuTa;
                dbDuLich.HUYENs.Add(h);
                dbDuLich.SaveChanges();
                return RedirectToAction("DanhSachQuanHuyen");
            }
            return View(huyen);
        }

        // Sửa thông tin
        public ActionResult SuaQuanHuyen(int id)
        {
            HUYEN huyen = dbDuLich.HUYENs.SingleOrDefault(n => n.MaHuyen == id);
            if (huyen == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(huyen);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult SuaQuanHuyen(HUYEN huyen)
        {
            if (ModelState.IsValid)
            {
                var suaHuyen = dbDuLich.HUYENs.SingleOrDefault(p => p.MaHuyen == huyen.MaHuyen);
                suaHuyen.TenHuyen = huyen.TenHuyen;
                suaHuyen.MieuTa = huyen.MieuTa;
                UpdateModel(suaHuyen);
                dbDuLich.SaveChanges();
                return RedirectToAction("DanhSachQuanHuyen", huyen);
            }
            return View(huyen);
        }

        public ActionResult ChiTietQuanHuyen(int id)
        {
            HUYEN huyen = dbDuLich.HUYENs.SingleOrDefault(n => n.MaHuyen == id);
            if (huyen == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(huyen);
        }

        public ActionResult XoaQuanHuyen(int id)
        {
            HUYEN huyen = dbDuLich.HUYENs.SingleOrDefault(n => n.MaHuyen == id);
            if (huyen == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(huyen);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult XoaQuanHuyen(int id, HUYEN huyen)
        {
            var xoaHuyen = dbDuLich.HUYENs.SingleOrDefault(p => p.MaHuyen == id);
            dbDuLich.HUYENs.Remove(xoaHuyen);
            dbDuLich.SaveChanges();
            return RedirectToAction("DanhSachQuanHuyen");
        }
    }
}