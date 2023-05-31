
p=${PWD}

let "i=1"
j=57.8
while [ $i -le 50 ]
do

mkdir ${p}/${i}
cd    ${p}/${i}
cp ${p}/pep.top   ${p}/${i}/
cp ${p}/md3.in    ${p}/${i}/
cp ${p}/md2.in    ${p}/${i}/
cp ${p}/dist.rst  ${p}/${i}/
cp ${p}/run.sh    ${p}/${i}/
cp ${p}/$[${i}-1]/md3.rst  ${p}/${i}/md1.rst

sed -i "5ir3=$j" dist.rst
sed -i "5ir2=$j" dist.rst
sed -i "2i #protein_AZD8895_now=$j" dist.rst

./run.sh

j=`echo $j |awk '{print $1+5/10}'`
let "i++"

done

cd ${p}




