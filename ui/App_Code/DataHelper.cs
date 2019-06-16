using System;
using System.Data;
using Entities;
using Microsoft.Practices.EnterpriseLibrary.Data;

/// <summary>
/// Класс взаимодействия с БД
/// </summary>
public class DataHelper
{
    #region Платежи

    public static int AddPayment(Payment payment)
    {
        Database db = DatabaseFactory.CreateDatabase("SocvetieSqlServer");

        db.ExecuteNonQuery("ADD_PAYMENT", payment.Description, payment.Cost);

        int paymentId = Convert.ToInt32(db.ExecuteScalar("GET_LAST_PAYMENT_ID"));

        return paymentId;
    }

    public static Payment GetPayment(int paymentId)
    {
        Database db = DatabaseFactory.CreateDatabase("SocvetieSqlServer");

        DataSet DS = db.ExecuteDataSet("GET_PAYMENT", paymentId);

        if (DS != null && DS.Tables.Count > 0 && DS.Tables[0].Rows.Count > 0)
        {
            return new Payment(DS);
        }

        return null;
    }

    public static void SetPaymentConfirmed(int paymentId)
    {
        Database db = DatabaseFactory.CreateDatabase("SocvetieSqlServer");

        db.ExecuteNonQuery("SET_PAYMENT_CONFIRMED", paymentId);
    }

    #endregion

    #region Настройки

    /// <summary>
    /// Получение настроек
    /// </summary>
    /// <param name="name">Название поля</param>
    /// <returns></returns>
    public static string GetSettings(string name)
    {
        Database db = DatabaseFactory.CreateDatabase();
        object obj = db.ExecuteScalar("GET_SETTINGS", name);
        return (obj == null) ? string.Empty : obj.ToString();
    }

    /// <summary>
    /// Сохранение настройки
    /// </summary>
    /// <param name="name">Название поля</param>
    /// <param name="value">Значение</param>
    /// <returns></returns>
    public static void SetSetting(string name, string value)
    {
        Database db = DatabaseFactory.CreateDatabase();
        db.ExecuteNonQuery("SET_SETTING", name, value);
    }

    #endregion
}