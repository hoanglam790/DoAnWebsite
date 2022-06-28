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
    public class DiaDanhController : Controller
    {
        DuLichDiaPhuongModel dbDuLich = new DuLichDiaPhuongModel();
        // GET: DiaDanh
        public ActionResult DanhSachDiaDanh(int? page)
        {
            int pageSize = 5;
            int pageNumber = (page ?? 1);

            var danhSach = dbDuLich.DIADANHs.ToList();
            return View(danhSach.ToPagedList(pageNumber, pageSize));
        }

        public ActionResult ThemDiaDanhMoi()
        {
            ViewBag.MaHuyen = new SelectList(dbDuLich.HUYENs.ToList(), "MaHuyen", "TenHuyen");
            return View();
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemDiaDanhMoi(DIADANH diaDanh, HttpPostedFileBase upload)
        {
            ViewBag.MaHuyen = new SelectList(dbDuLich.HUYENs.ToList(), "MaHuyen", "TenHuyen");
            if (upload == null)
            {
                ViewBag.Thongbao = "Vui lòng chọn hình ảnh";
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
                    DIADANH dd = new DIADANH();
                    HINHANH hinh = new HINHANH();
                    dd.TenDiaDanh = diaDanh.TenDiaDanh;
                    dd.MaHuyen = diaDanh.MaHuyen;
                    hinh.TenHinhAnh = fileName;
                    dd.MaHinhAnh = diaDanh.MaHinhAnh;
                    dd.GioiThieu = diaDanh.GioiThieu;
                    dbDuLich.HINHANHs.Add(hinh);
                    dbDuLich.DIADANHs.Add(dd);
                    dbDuLich.SaveChanges();
                }
                return RedirectToAction("DanhSachDiaDanh");
            }
        }

        // Sửa thông tin
        public ActionResult SuaDiaDanh(int id)
        {
            DIADANH diaDanh = dbDuLich.DIADANHs.SingleOrDefault(n => n.MaDiaDanh == id);
            if (diaDanh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(diaDanh);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult SuaDiaDanh(DIADANH diaDanh)
        {
            if (ModelState.IsValid)
            {
                var suaDiaDanh = dbDuLich.DIADANHs.SingleOrDefault(p => p.MaDiaDanh == diaDanh.MaDiaDanh);
                suaDiaDanh.TenDiaDanh = diaDanh.TenDiaDanh;
                suaDiaDanh.MaHuyen = int.Parse(diaDanh.HUYEN.TenHuyen);
                suaDiaDanh.MaHinhAnh = int.Parse(diaDanh.HINHANH.TenHinhAnh);
                suaDiaDanh.GioiThieu = diaDanh.GioiThieu;
                UpdateModel(suaDiaDanh);
                dbDuLich.SaveChanges();
                return RedirectToAction("DanhSachDiaDanh", diaDanh);
            }
            return View(diaDanh);
        }

        public ActionResult ChiTietDiaDanh(int id)
        {
            DIADANH diaDanh = dbDuLich.DIADANHs.SingleOrDefault(n => n.MaDiaDanh == id);
            if (diaDanh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(diaDanh);
        }

        public ActionResult XoaDiaDanh(int id)
        {
            DIADANH diaDanh = dbDuLich.DIADANHs.SingleOrDefault(n => n.MaDiaDanh == id);
            if (diaDanh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(diaDanh);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult XoaDiaDanh(int id, DIADANH diaDanh)
        {
            var xoaDiaDanh = dbDuLich.DIADANHs.SingleOrDefault(p => p.MaDiaDanh == id);
            dbDuLich.DIADANHs.Remove(xoaDiaDanh);
            dbDuLich.SaveChanges();
            return RedirectToAction("DanhSachDiaDanh");
        }
    }
}