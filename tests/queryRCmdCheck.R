
# Get the 'R CMD check' status, if any
status <- R.utils::queryRCmdCheck()

if (status != "notRunning") {
  cat("The current R session was launched by R CMD check. Status:", status, "\n")
} else {
  cat("The current R session was not launched by R CMD check.\n")
}

# Display how R was launched
print(base::commandArgs())

# Display loaded packages etc.
print(search())

# Display current working directory
print(getwd())
