head -2 80/dist.rst 
cat 80/dist.md3 | awk '{a+=$2;b++}END{print a,a/b}'
