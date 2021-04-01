> ./count.txt
echo "Sberna strediska" >> ./count.txt
cat ./undefined_recycling_center.json | grep 'centre' | wc -l >> ./count.txt
echo "Kontejnery" >> ./count.txt
cat ./undefined_recycling_container.json | grep 'container' | wc -l >> ./count.txt
echo "Bez typu" >> ./count.txt
cat ./undefined_recycling_no_type.json | grep 'amenity' | wc -l >> ./count.txt