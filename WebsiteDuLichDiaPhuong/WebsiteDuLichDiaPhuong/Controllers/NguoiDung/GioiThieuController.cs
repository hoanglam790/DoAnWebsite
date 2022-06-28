using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteDuLichDiaPhuong.Models;

namespace WebsiteDuLichDiaPhuong.Controllers
{
    public class GioiThieuController : Controller
    {
        DuLichDiaPhuongModel dbDuLich = new DuLichDiaPhuongModel();
        // GET: GioiThieu
        public ActionResult TrangChinh()
        {
            var gioiThieu = dbDuLich.TINTUCs.Where(n => n.MaTinTuc == 7);
            return View(gioiThieu);
        }
    }
}