namespace WebsiteDuLichDiaPhuong.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("KHACHSAN")]
    public partial class KHACHSAN
    {
        [Key]
        public int MaKS { get; set; }

        [Required]
        [StringLength(50)]
        public string TenKS { get; set; }

        [Required]
        [StringLength(100)]
        public string DiaChi { get; set; }

        [Required]
        [StringLength(11)]
        public string SĐT { get; set; }

        public int? MaHuyen { get; set; }

        public int? MaHinhAnh { get; set; }

        public virtual HINHANH HINHANH { get; set; }

        public virtual HUYEN HUYEN { get; set; }
    }
}
