namespace WebsiteDuLichDiaPhuong.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HUYEN")]
    public partial class HUYEN
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HUYEN()
        {
            DIADANHs = new HashSet<DIADANH>();
            KHACHSANs = new HashSet<KHACHSAN>();
        }

        [Key]
        public int MaHuyen { get; set; }

        [Required]
        [StringLength(50)]
        public string TenHuyen { get; set; }

        [Column(TypeName = "ntext")]
        [Required]
        public string MieuTa { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DIADANH> DIADANHs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<KHACHSAN> KHACHSANs { get; set; }
    }
}
