CREATE PROCEDURE GET_SECURITY_LOG
(
	@DateFrom datetime,
	@DateTill datetime
)
AS

SELECT *
FROM tblSecurityLog
WHERE WhenDate <= @DateTill AND
	WhenDate >= @DateFrom
ORDER BY WhenDate DESC	