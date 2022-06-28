namespace WebsiteDuLichDiaPhuong.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DIADANH")]
    public partial class DIADANH
    {
        [Key]
        public int MaDiaDanh { get; set; }

        [Required]
        [StringLength(50)]
        public string TenDiaDanh { get; set; }

        public int MaHuyen { get; set; }

        public int MaHinhAnh { get; set; }

        [Column(TypeName = "ntext")]
        public string GioiThieu { get; set; }

        public virtual HINHANH HINHANH { get; set; }

        public virtual HUYEN HUYEN { get; set; }
    }
}
