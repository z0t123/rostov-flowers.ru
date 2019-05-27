CREATE PROCEDURE ADD_USER_LOGIN_STATISTICS
(
	@User nvarchar(MAX),
	@Page nvarchar(MAX),
	@QueryId nvarchar(MAX)
)
AS

INSERT INTO tblUserLoginStatistics
		([User], Page, QueryId)
VALUES	(@User, @Page, @QueryId)