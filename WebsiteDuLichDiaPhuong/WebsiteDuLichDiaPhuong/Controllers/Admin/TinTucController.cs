using PagedList;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteDuLichDiaPhuong.Models;

namespace WebsiteDuLichDiaPhuong.Controllers.Admin
{
    public class TinTucController : Controller
    {
        DuLichDiaPhuongModel dbDuLich = new DuLichDiaPhuongModel();
        // GET: TinTuc
        public ActionResult DanhSachTinTuc(int? page)
        {
            int pageSize = 5;
            int pageNumber = (page ?? 1);

            var danhsach = dbDuLich.TINTUCs.ToList();
            return View(danhsach.ToPagedList(pageNumber, pageSize));
        }

        public ActionResult ThemTinTuc()
        {
            ViewBag.MaTheLoai = new SelectList(dbDuLich.THELOAITINs.ToList(), "MaTheLoai", "TenTheLoai");
            return View();
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemTinTuc(TINTUC tintuc, HttpPostedFileBase upload)
        {
            ViewBag.MaTheLoai = new SelectList(dbDuLich.THELOAITINs.ToList(), "MaTheLoai", "TenTheLoai");
            if (upload == null)
            {
                ViewBag.ThongBao = "Vui lòng chọn ảnh";
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
                TINTUC t = new TINTUC();
                HINHANH h = new HINHANH();
                t.TieuDe = tintuc.TieuDe;
                t.NoiDungTinTuc = tintuc.NoiDungTinTuc;
                t.MaTheLoai = tintuc.MaTheLoai;
                h.TenHinhAnh = fileName;
                t.MaHinhAnh = tintuc.MaHinhAnh;
                t.NgayCapNhat = tintuc.NgayCapNhat;
                dbDuLich.TINTUCs.Add(t);
                dbDuLich.HINHANHs.Add(h);
                dbDuLich.SaveChanges();
                return RedirectToAction("DanhSachTinTuc");
            }
        }

        public ActionResult SuaTinTuc(int id)
        {
            TINTUC tintuc = dbDuLich.TINTUCs.SingleOrDefault(n => n.MaTinTuc == id);
            ViewBag.MaTheLoai = new SelectList(dbDuLich.THELOAITINs.ToList(), "MaTheLoai", "TenTheLoai");
            ViewBag.MaHinhAnh = new SelectList(dbDuLich.HINHANHs.ToList(), "MaHinhAnh", "TenHinhAnh");
            if (tintuc == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(tintuc);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult SuaTinTuc(TINTUC tintuc)
        {
            ViewBag.MaTheLoai = new SelectList(dbDuLich.THELOAITINs.ToList(), "MaTheLoai", "TenTheLoai");
            ViewBag.MaHinhAnh = new SelectList(dbDuLich.HINHANHs.ToList(), "MaHinhAnh", "TenHinhAnh");
            if (ModelState.IsValid)
            {
                var suaTinTuc = dbDuLich.TINTUCs.SingleOrDefault(p => p.MaTinTuc == tintuc.MaTinTuc);
                suaTinTuc.TieuDe = tintuc.TieuDe;
                suaTinTuc.NoiDungTinTuc = tintuc.NoiDungTinTuc;
                suaTinTuc.MaTheLoai = tintuc.MaTheLoai;
                suaTinTuc.MaHinhAnh = tintuc.MaHinhAnh;
                UpdateModel(suaTinTuc);
                dbDuLich.SaveChanges();
                return RedirectToAction("DanhSachTinTuc", tintuc);
            }
            return View(tintuc);
        }

        public ActionResult ChiTietTinTuc(int id)
        {
            TINTUC tintuc = dbDuLich.TINTUCs.SingleOrDefault(n => n.MaTinTuc == id);
            if (tintuc == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(tintuc);
        }

        public ActionResult XoaTinTuc(int id)
        {
            TINTUC tintuc = dbDuLich.TINTUCs.SingleOrDefault(n => n.MaTinTuc == id);
            if (tintuc == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(tintuc);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult XoaTinTuc(int id, TINTUC tintuc)
        {
            var xoaTinTuc = dbDuLich.TINTUCs.SingleOrDefault(p => p.MaTinTuc == id);
            dbDuLich.TINTUCs.Remove(xoaTinTuc);
            dbDuLich.SaveChanges();
            return RedirectToAction("DanhSachTinTuc");
        }
    }
}