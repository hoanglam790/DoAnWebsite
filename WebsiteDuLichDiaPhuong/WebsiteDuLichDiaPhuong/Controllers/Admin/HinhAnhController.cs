using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteDuLichDiaPhuong.Models;
using PagedList;
using System.IO;

namespace WebsiteDuLichDiaPhuong.Controllers.Admin
{
    public class HinhAnhController : Controller
    {
        // GET: HinhAnh
        DuLichDiaPhuongModel dbDuLich = new DuLichDiaPhuongModel();
        public ActionResult DanhSachHinhAnh(int? page)
        {
            int pageSize = 7;
            int pageNumber = (page ?? 1);
            var danhSachAnh = dbDuLich.HINHANHs.ToList();
            return View(danhSachAnh.ToPagedList(pageNumber, pageSize));
        }

        //Thêm mới hình ảnh
        [HttpGet]
        public ActionResult ThemAnhMoi()
        {
            return View();
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemAnhMoi(HINHANH ha, HttpPostedFileBase upload)
        {
            if (upload == null)
            {
                ViewBag.Thongbao = "Vui lòng chọn hình ảnh";
                return View();
            }
            else
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
                HINHANH hinh = new HINHANH();
                hinh.TenHinhAnh = fileName;
                hinh.MoTaHinhAnh = ha.MoTaHinhAnh;
                dbDuLich.HINHANHs.Add(hinh);
                dbDuLich.SaveChanges();
                return RedirectToAction("DanhSachHinhAnh");
            }
        }

        //Sửa hình ảnh
        public ActionResult SuaAnh(int id)
        {
            ViewBag.MaHinhAnh = new SelectList(dbDuLich.HINHANHs.ToList(), "MaHinhAnh", "TenHinhAnh");
            HINHANH hinhAnh = dbDuLich.HINHANHs.SingleOrDefault(n => n.MaHinhAnh == id);
            if (hinhAnh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(hinhAnh);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult SuaAnh(HINHANH ha)
        {
            ViewBag.MaHinhAnh = new SelectList(dbDuLich.HINHANHs.ToList(), "MaHinhAnh", "TenHinhAnh");
            if(ModelState.IsValid)
            {
                var suaAnh = dbDuLich.HINHANHs.SingleOrDefault(n => n.MaHinhAnh == ha.MaHinhAnh);
                suaAnh.TenHinhAnh = ha.TenHinhAnh;
                suaAnh.MoTaHinhAnh = ha.MoTaHinhAnh;
                UpdateModel(suaAnh);
                dbDuLich.SaveChanges();
                return RedirectToAction("DanhSachHinhAnh", ha);
            }
            return View(ha);
        }

        //Chi tiết hình ảnh
        public ActionResult ChiTietAnh(int id)
        {
            HINHANH hinhAnh = dbDuLich.HINHANHs.SingleOrDefault(n => n.MaHinhAnh == id);
            if (hinhAnh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(hinhAnh);
        }

        //Xóa ảnh
        public ActionResult XoaAnh(int id)
        {
            HINHANH hinhAnh = dbDuLich.HINHANHs.SingleOrDefault(n => n.MaHinhAnh == id);
            if (hinhAnh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(hinhAnh);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult XoaAnh(int id, HINHANH ha)
        {
            var xoaAnh = dbDuLich.HINHANHs.SingleOrDefault(p => p.MaHinhAnh == id);
            dbDuLich.HINHANHs.Remove(xoaAnh);
            dbDuLich.SaveChanges();
            return RedirectToAction("DanhSachHinhAnh");
        }
    }
}