CREATE PROCEDURE ADD_PAYMENT
(
	@Description nvarchar(MAX),
	@Cost int
)
AS

DECLARE @Id int
SET @Id = NULL

INSERT INTO PaymentList
		([Description],
		[Cost])
VALUES	(@Description,
		@Cost)
			
SET @Id = SCOPE_IDENTITY()