namespace WebsiteDuLichDiaPhuong.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NHAHANG")]
    public partial class NHAHANG
    {
        [Key]
        public int MaNhaHang { get; set; }

        [Required]
        [StringLength(50)]
        public string TenNhaHang { get; set; }

        [Required]
        [StringLength(100)]
        public string DiaChi { get; set; }

        [Required]
        [StringLength(11)]
        public string SDT { get; set; }

        public int? MaHinhAnh { get; set; }

        public virtual HINHANH HINHANH { get; set; }
    }
}
