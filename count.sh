> ./count.txt
echo "objects from South Korea Open Data Portal" >> ./count.txt
cat ./objects_from_ROK_OpenData.json | grep 'source' | wc -l >> ./count.txt
echo "motorways without lanes" >> ./count.txt
cat ./motorways_without_lanes.json | grep 'highway' | wc -l >> ./count.txt