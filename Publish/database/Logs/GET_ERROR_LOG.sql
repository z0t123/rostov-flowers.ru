CREATE PROCEDURE GET_ERROR_LOG
(
	@DateFrom datetime,
	@DateTill datetime
)
AS

SELECT *
FROM tblErrorLog
WHERE WhenDate <= @DateTill AND
	WhenDate >= @DateFrom
ORDER BY WhenDate DESC	