using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteDuLichDiaPhuong.Models;
using System.IO;

namespace WebsiteDuLichDiaPhuong.Controllers.Admin
{
    public class TourDuLichController : Controller
    {
        DuLichDiaPhuongModel dbDuLich = new DuLichDiaPhuongModel();
        // GET: TourDuLich
        public ActionResult DanhSachTour()
        {
            var ds = dbDuLich.TOURDULICHes.ToList();
            return View(ds);
        }

        public ActionResult ThemTour()
        {
            return View();
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemTour(TOURDULICH t, HttpPostedFileBase upload)
        {
            if (upload == null)
            {
                ViewBag.ThongBao = "Vui lòng chọn ảnh";
                return View();
            }
            else
            {
                if (ModelState.IsValid)
                {
                    var fileName = Path.GetFileName(upload.FileName);
                    var path = Path.Combine(Server.MapPath("~/Images"), fileName);
                    if (System.IO.File.Exists(path))
                    {
                        ViewBag.ThongBao = "Hình ảnh đã tồn tại";
                    }
                    else
                    {
                        upload.SaveAs(path);
                    }
                    TOURDULICH tdl = new TOURDULICH();
                    HINHANH h = new HINHANH();
                    tdl.TenTour = t.TenTour;
                    tdl.MieuTa = t.MieuTa;
                    tdl.GiaTien = t.GiaTien;
                    h.TenHinhAnh = fileName;
                    t.MaHinhAnh = tdl.MaHinhAnh;
                    tdl.DuongLink = t.DuongLink;
                    dbDuLich.TOURDULICHes.Add(tdl);
                    dbDuLich.HINHANHs.Add(h);
                    dbDuLich.SaveChanges();
                }
                return RedirectToAction("DanhSachTour");
            }
        }

        public ActionResult SuaTour(int id)
        {
            TOURDULICH t = dbDuLich.TOURDULICHes.SingleOrDefault(n => n.MaTour == id);
            if (t == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(t);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult SuaTour(TOURDULICH t, HttpPostedFileBase upload)
        {
            if (upload == null)
            {
                ViewBag.ThongBao = "Vui lòng chọn ảnh";
                return View();
            }
            else
            {
                if (ModelState.IsValid)
                {
                    var fileName = Path.GetFileName(upload.FileName);
                    var path = Path.Combine(Server.MapPath("~/Images"), fileName);
                    if (System.IO.File.Exists(path))
                    {
                        ViewBag.ThongBao = "Hình ảnh đã tồn tại";
                    }
                    else
                    {
                        upload.SaveAs(path);
                    }
                    TOURDULICH tdl = new TOURDULICH();
                    HINHANH h = new HINHANH();
                    tdl.TenTour = t.TenTour;
                    tdl.MieuTa = t.MieuTa;
                    tdl.GiaTien = t.GiaTien;
                    h.TenHinhAnh = fileName;
                    t.MaHinhAnh = tdl.MaHinhAnh;
                    tdl.DuongLink = t.DuongLink;
                    dbDuLich.HINHANHs.Add(h);
                    UpdateModel(tdl);
                    dbDuLich.SaveChanges();
                }
                return RedirectToAction("DanhSachTour");
            }
        }

        public ActionResult ChiTietTour(int id)
        {
            TOURDULICH t = dbDuLich.TOURDULICHes.SingleOrDefault(n => n.MaTour == id);
            if (t == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(t);
        }

        public ActionResult XoaTour(int id)
        {
            TOURDULICH t = dbDuLich.TOURDULICHes.SingleOrDefault(n => n.MaTour == id);
            if (t == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(t);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult XoaTour(int id, TOURDULICH t)
        {
            var xoaTour = dbDuLich.TOURDULICHes.SingleOrDefault(p => p.MaTour == id);
            dbDuLich.TOURDULICHes.Remove(xoaTour);
            dbDuLich.SaveChanges();
            return RedirectToAction("DanhSachTour");
        }
    }
}
