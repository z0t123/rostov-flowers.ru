CREATE PROCEDURE ADD_SECURITY_MESSAGE
(
	@Message nvarchar(MAX),
	@UserAccount nvarchar(MAX)
)
AS

INSERT INTO tblSecurityLog
		(Message, UserAccount, WhenDate)
VALUES	(@Message, @UserAccount, GETDATE())