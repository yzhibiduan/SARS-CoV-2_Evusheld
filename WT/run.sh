#mpirun -np 32 pmemd.MPI -O -i $PWD/min1.in -o min1.out -p com_solv.prmtop -c com_solv.inpcrd  -r min1.rst -ref com_solv.inpcrd
#mpirun -np 32 pmemd.MPI -O -i $PWD/min2.in -o min2.out -p com_solv.prmtop -c min1.rst -r min2.rst 
export CUDA_VISIBLE_DEVICES=0
pmemd.cuda -O -i $PWD/md0.in  -o md0.out  -p com_solv.prmtop -c min2.rst -r md0.rst  -ref min2.rst -x md0.nc
#export CUDA_VISIBLE_DEVICES=0
pmemd.cuda -O -i $PWD/md1.in  -o md1.out  -p com_solv.prmtop -c md0.rst  -r md1.rst  -x md1.nc
#pmemd.cuda -O -i md2.in  -o md2.out  -p com_solv.prmtop -c md1.rst  -r md2.rst  -x md2.nc



