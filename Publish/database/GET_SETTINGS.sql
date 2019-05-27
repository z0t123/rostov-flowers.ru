CREATE PROCEDURE GET_SETTINGS
(
	@Name nvarchar(MAX)
)
AS

SELECT TOP 1 Value
FROM tblSettings
WHERE [Name] = @Name