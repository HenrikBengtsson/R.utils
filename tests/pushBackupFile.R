library("R.utils")

# Create a file
pathname <- "foobar.txt";
cat(file=pathname, "File v1\n");


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# (a) Backup and restore a file
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Turn it into a backup file
pathnameB <- pushBackupFile(pathname, verbose=TRUE);
print(pathnameB);

# Restore main file from backup
pathnameR <- popBackupFile(pathnameB, verbose=TRUE);
print(pathnameR);


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# (b) Backup, create a new file and frop backup file
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Turn it into a backup file
pathnameB <- pushBackupFile(pathname, verbose=TRUE);
print(pathnameB);

# Create a new file
cat(file=pathname, "File v2\n");

# Drop backup because a new main file was successfully created
pathnameR <- popBackupFile(pathnameB, verbose=TRUE);
print(pathnameR);


