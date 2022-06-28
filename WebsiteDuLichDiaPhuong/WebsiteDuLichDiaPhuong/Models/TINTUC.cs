namespace WebsiteDuLichDiaPhuong.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TINTUC")]
    public partial class TINTUC
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TINTUC()
        {
            TOURDULICHes = new HashSet<TOURDULICH>();
        }

        [Key]
        public int MaTinTuc { get; set; }

        [Required]
        [StringLength(100)]
        public string TieuDe { get; set; }

        [Column(TypeName = "ntext")]
        [Required]
        public string NoiDungTinTuc { get; set; }

        public int MaTheLoai { get; set; }

        public int? MaHinhAnh { get; set; }

        public virtual HINHANH HINHANH { get; set; }

        public virtual THELOAITIN THELOAITIN { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TOURDULICH> TOURDULICHes { get; set; }
    }
}
