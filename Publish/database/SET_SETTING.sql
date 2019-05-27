CREATE PROCEDURE SET_SETTING
(
	@Name nvarchar(MAX),
	@Value nvarchar(MAX)
)
AS

begin tran
if exists (select * from tblSettings with (updlock,serializable) where Name = @Name)
begin
   update tblSettings set Value = @Value
   where Name = @Name
end
else
begin
   insert tblSettings (Name, Value)
   values (@Name, @Value)
end
commit tran