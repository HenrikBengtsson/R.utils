library("R.utils")

# Get current 'repos' option
orepos <- useRepos()
print(orepos)

useRepos("http://cran.r-project.org")
repos <- useRepos()
print(repos)

# Reset 'repos'
useRepos(orepos)
repos <- useRepos()
print(repos)
