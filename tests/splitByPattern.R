library("R.utils")


rspCode <- "<body>Hello <%=\"world\"%></body>"
rspParts <- splitByPattern(rspCode, pattern="<%.*%>")
cat(rspCode, "\n")
print(rspParts)
