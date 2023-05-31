export CUDA_VISIBLE_DEVICES=9

pmemd.cuda -O -i $PWD/md2.in  -o md2.out  -p pep.top -c md1.rst  -r md2.rst -x md2.nc
pmemd.cuda -O -i $PWD/md3.in  -o md3.out  -p pep.top -c md2.rst  -r md3.rst -x md3.nc


