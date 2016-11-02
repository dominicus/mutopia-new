#!/bin/bash

#for i in */*.ly */*/*.ly */*/*/*/*.ly */*/*/*/*/*.ly
#do
#   sed -i 's/2.16.2/2.18.0/g' ${i}
#done

#for i in v*
#do
#   sed -i "s/${i}/common\/${i}/g" ${i}/book.ly
#done

for i in v* aria/1.7e aria/1.8
do
   sed -i 's/Guitar Society of Toronto/Steve Shorter/g' ${i}/book.ly
done
