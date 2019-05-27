CREATE PROCEDURE ADD_ERROR
(
	@Operation nvarchar(MAX),
	@Message nvarchar(MAX),
	@InnerException nvarchar(MAX),
	@UserAccount nvarchar(MAX)
)
AS

INSERT INTO tblErrorLog
		(Operation, Message, InnerException, UserAccount, WhenDate)
VALUES	(@Operation, @Message, @InnerException, @UserAccount, GETDATE())