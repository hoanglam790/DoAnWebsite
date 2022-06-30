using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteDuLichDiaPhuong.Models;
using PagedList;
using PagedList.Mvc;
using System.IO;
using WebsiteDuLichDiaPhuong.Libs;

namespace WebsiteDuLichDiaPhuong.Controllers.Admin
{
    public class AdminController : Controller
    {
        DuLichDiaPhuongModel dbDuLich = new DuLichDiaPhuongModel();
        // GET: Admin
        public ActionResult TrangChu()
        {
            return View();
        }

        [HttpGet]
        public ActionResult DangNhap()
        {
            /*
            if(Session["Taikhoanadmin"] != null)
            {
                return RedirectToAction("TrangChu", "Admin");
            }
            */
            return View();
        }

        [HttpPost]
        public ActionResult DangNhap(FormCollection f, TAIKHOAN t)
        {
            var dn = f["TenDangNhap"];
            var mk = Encryptor.MaHoaMD5(t.MatKhau);
            if (String.IsNullOrEmpty(dn))
            {
                ViewData["Loi1"] = "Vui lòng nhập tên đăng nhập";
            }

            if (String.IsNullOrEmpty(mk))
            {
                ViewData["Loi2"] = "Vui lòng nhập mật khẩu";
            }
            else
            {
                TAIKHOAN tk = dbDuLich.TAIKHOANs.SingleOrDefault(n => n.TenTaiKhoan == dn && n.MatKhau == mk);
                if (tk != null)
                {
                    Session["Taikhoanadmin"] = tk;
                    Session["Tenhienthiadmin"] = tk.TenHienThi;
                    return RedirectToAction("TrangChu", "Admin");
                }
                else
                {
                    ViewBag.ThongBao = "Tên đăng nhập hoặc mật khẩu sai";                   
                }
            }
            return View();
        }
    }
}