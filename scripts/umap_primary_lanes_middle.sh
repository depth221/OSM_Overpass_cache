echo "primarys without lanes (Seoul, Incheon, Gyeonggi, Gangwon)"
#[out:json][timeout:100];
#{{geocodeArea:Seoul}}->.seoul;
#{{geocodeArea:Incheon}}->.incheon;
#{{geocodeArea:Gyeonggi}}->.gyeonggi;
#{{geocodeArea:Gangwon}}->.gangwon;
#(
#  way["highway"="primary"][!"lanes"](area.seoul);
#  way["highway"="primary"][!"lanes"](area.incheon);
#  way["highway"="primary"][!"lanes"](area.gyeonggi);
#  way["highway"="primary"][!"lanes"](area.gangwon);
#);
#out body;
#>;
#out skel qt;
wget -O datasets/without_lanes/primaries_without_lanes_middle.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A100%5D%3Barea%283602297418%29%2D%3E%2Eseoul%3Barea%283602297419%29%2D%3E%2Eincheon%3Barea%283602306392%29%2D%3E%2Egyeonggi%3Barea%283602308426%29%2D%3E%2Egangwon%3B%28way%5B%22highway%22%3D%22primary%22%5D%5B%22lanes%22%21%7E%22%2E%2A%22%5D%28area%2Eseoul%29%3Bway%5B%22highway%22%3D%22primary%22%5D%5B%22lanes%22%21%7E%22%2E%2A%22%5D%28area%2Eincheon%29%3Bway%5B%22highway%22%3D%22primary%22%5D%5B%22lanes%22%21%7E%22%2E%2A%22%5D%28area%2Egyeonggi%29%3Bway%5B%22highway%22%3D%22primary%22%5D%5B%22lanes%22%21%7E%22%2E%2A%22%5D%28area%2Egangwon%29%3B%29%3Bout%3B%3E%3Bout%20skel%20qt%3B%0A'
sleep 300