# | Database Helpers ================================================
# -----------------------------------------------------------------
# Helper function for database tasks.
#

# Backup MySQL Databases ==========================================
# -----------------------------------------------------------------
mySQLBackup()
{
  if [ -z $1 ] | [ -z $2 ]
    then
      echo "You dun fucked up"
      echo "You need two args"
      echo "Which indee server? For example if yodadevelopment.indee.io then yodadevelopment"
      echo "Which database? For example wp_test"
    else
      mysqldump --opt -h $1.indee.io -u indee -p $2 > $2.sql
  fi
}
