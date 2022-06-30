namespace WebsiteDuLichDiaPhuong.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TOURDULICH")]
    public partial class TOURDULICH
    {
        [Key]
        public int MaTour { get; set; }

        [Required]
        [StringLength(50)]
        public string TenTour { get; set; }

        [Required]
        [StringLength(255)]
        public string MieuTa { get; set; }

        public int GiaTien { get; set; }

        public int MaHinhAnh { get; set; }

        [Required]
        [StringLength(255)]
        public string DuongLink { get; set; }

        public virtual HINHANH HINHANH { get; set; }
    }
}
