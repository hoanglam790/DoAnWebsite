using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteDuLichDiaPhuong.Models;

namespace WebsiteDuLichDiaPhuong.Controllers.Admin
{
    public class TaiKhoanController : Controller
    {
        // GET: TaiKhoan
        DuLichDiaPhuongModel dbDuLich = new DuLichDiaPhuongModel();
        public ActionResult DanhSachTaiKhoan()
        {
            var dsTaiKhoan = dbDuLich.TAIKHOANs.ToList();
            return View(dsTaiKhoan);
        }

        //Thêm tài khoản
        public ActionResult ThemTaiKhoan()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult ThemTaiKhoan(TAIKHOAN taiKhoan)
        {
            if (ModelState.IsValid)
            {
                TAIKHOAN t = new TAIKHOAN();
                t.TenTaiKhoan = taiKhoan.TenTaiKhoan;
                t.MatKhau = taiKhoan.MatKhau;
                t.TenHienThi = t.TenHienThi;
                dbDuLich.TAIKHOANs.Add(taiKhoan);
                dbDuLich.SaveChanges();
                return RedirectToAction("DanhSachTaiKhoan");
            }
            return View(taiKhoan);
        }

        //Sửa tài khoản
        public ActionResult SuaTaiKhoan(int id)
        {
            TAIKHOAN tk = dbDuLich.TAIKHOANs.SingleOrDefault(n => n.MaTaiKhoan == id);
            if (tk == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(tk);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult SuaTaiKhoan(TAIKHOAN taiKhoan)
        {
            if (ModelState.IsValid)
            {
                var suaTaiKhoan = dbDuLich.TAIKHOANs.SingleOrDefault(n => n.MaTaiKhoan == taiKhoan.MaTaiKhoan);
                suaTaiKhoan.TenTaiKhoan = taiKhoan.TenTaiKhoan;
                suaTaiKhoan.MatKhau = taiKhoan.MatKhau;
                suaTaiKhoan.TenHienThi = taiKhoan.TenHienThi;
                UpdateModel(suaTaiKhoan);
                dbDuLich.SaveChanges();
                return RedirectToAction("DanhSachTaiKhoan");
            }
            return View(taiKhoan);
        }

        //Chi tiết tài khoản
        public ActionResult ChiTietTaiKhoan(int id)
        {
            TAIKHOAN tk = dbDuLich.TAIKHOANs.SingleOrDefault(n => n.MaTaiKhoan == id);
            if (tk == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(tk);
        }

        //Xóa tài khoản
        public ActionResult XoaTaiKhoan(int id)
        {
            TAIKHOAN tk = dbDuLich.TAIKHOANs.SingleOrDefault(n => n.MaTaiKhoan == id);
            if (tk == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(tk);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult XoaTaiKhoan(int id, TAIKHOAN taiKhoan)
        {
            var xoaTaiKhoan = dbDuLich.TAIKHOANs.SingleOrDefault(n => n.MaTaiKhoan == id);
            dbDuLich.TAIKHOANs.Remove(xoaTaiKhoan);
            dbDuLich.SaveChanges();
            return RedirectToAction("DanhSachTaiKhoan");
        }
    }
}