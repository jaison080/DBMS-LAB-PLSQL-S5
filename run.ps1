# TODO: docker exec does not show entire output
$fileName = $args[0]
# $execCommand = "sqlplus system/admin @scripts/" + $fileName + " exit"
$execCommand = "printf `"SET SERVEROUTPUT ON \n @scripts/" + $fileName + " \n exit`" | sqlplus system/admin"
Write-Output $execCommand
docker exec  -u root -i oracle bash -c $execCommand