PRINT "Start backup process..."
DECLARE @DBFileName varchar(200)
DECLARE @DBName varchar(100)
SELECT @DBName=N'V6BO-Full-' + CONVERT(nvarchar(20), GETDATE(), 112) + '_' + CONVERT(nvarchar(20), GETDATE(), 108)
-- SELECT @DBFileName=N'/tmp/V6BO' + CONVERT(nvarchar(20), GETDATE(), 112) + '_' + CONVERT(nvarchar(20), GETDATE(), 108) + '.bak'
SELECT @DBFileName=N'/tmp/V6BO' + CONVERT(nvarchar(20), GETDATE(), 112) + '.bak'
BACKUP DATABASE [V6BO] TO DISK=@DBFileName WITH RETAINDAYS = 14, NOFORMAT, INIT, NAME=@DBName, NOSKIP, REWIND, NOUNLOAD, COMPRESSION, STATS = 10
PRINT "Finished backup database process..."