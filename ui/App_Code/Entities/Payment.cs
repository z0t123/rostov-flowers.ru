using System;
using System.Data;

namespace Entities
{
    /// <summary>
    /// Summary description for Utils
    /// </summary>
    public class Payment
    {
        public int Id { get; set; }

        public string Description { get; set; }

        public int Cost { get; set; }

        public DateTime WhenDateTime { get; set; }

        public bool IsConfirmed { get; set; }

        public Payment()
        {

        }

        /// <summary>
        /// Конструктор
        /// </summary>
        /// <param name="ds">DataSet</param>
        public Payment(DataSet ds)
            : this(ds.Tables[0].Rows[0])
        {
        }

        /// <summary>
        /// Конструктор
        /// </summary>
        /// <param name="dr">DataRow</param>
        public Payment(DataRow dr)
        {
            Id = Convert.ToInt32(dr["Id"]);
            Description = dr["Description"].ToString();
            Cost = Convert.ToInt32(dr["Cost"]);
            WhenDateTime = Convert.ToDateTime(dr["WhenDateTime"]);
            IsConfirmed = Convert.ToBoolean(dr["IsConfirmed"]);
        }

        /// <summary>
        /// Конструктор
        /// </summary>
        /// <param name="dr">Данные</param>
        public Payment(IDataReader dr)
        {
            Id = Convert.ToInt32(dr["Id"]);
            Description = dr["Description"].ToString();
            Cost = Convert.ToInt32(dr["Cost"]);
            WhenDateTime = Convert.ToDateTime(dr["WhenDateTime"]);
            IsConfirmed = Convert.ToBoolean(dr["IsConfirmed"]);
        }

    }
}