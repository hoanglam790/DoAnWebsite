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
    public class AdminController : Controller
    {
        DuLichDiaPhuongModel dbDuLich = new DuLichDiaPhuongModel();
        // GET: Admin
        public ActionResult TrangChu()
        {
            return View();
        }
    }
}