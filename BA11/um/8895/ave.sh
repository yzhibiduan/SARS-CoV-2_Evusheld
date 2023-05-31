head -2 35/dist.rst 
cat 35/dist.md3 | awk '{a+=$2;b++}END{print a,a/b}'
