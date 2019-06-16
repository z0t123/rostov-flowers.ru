using System;
using System.Configuration;

/// <summary>
/// Класс для хранения настроек системы
/// </summary>
public class Settings
{
    #region Свойства

    #region Настройки электронной почты

    /// <summary>
    /// Признак того, что почта будет отправляться
    /// </summary>
    public static bool DoSendMail
    {
        get
        {
            return (ConfigurationManager.AppSettings["DoSendMail"] == "1");
        }
    }

    /// <summary>
    /// Признак того, что почта будет отправляться
    /// </summary>
    public static string SocvetieAdministratorEmail
    {
        get
        {
            return ConfigurationManager.AppSettings.Get("SocvetieAdministratorEmail");
        }
    }

    #endregion

    #region Подключение к БД

    /// <summary>
    /// Таймаут подключения к БД
    /// </summary>
    public static int SqlCommandTimeout
    {
        get
        {
            return Convert.ToInt32(DataHelper.GetSettings("SqlCommandTimeout"));
        }
    }

    #endregion

    #endregion
}
