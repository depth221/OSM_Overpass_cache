echo "primarys without surface (Gyeongnam, buk, Daegu, Busan, Ulsan)"
#[out:json][timeout:100];
#{{geocodeArea:경상남도}}->.gyeongnam;
#{{geocodeArea:경상북도}}->.gyeongbuk;
#{{geocodeArea:대구}}->.daegu;
#{{geocodeArea:부산}}->.busan;
#{{geocodeArea:울산}}->.ulsan;
#(
#  way["highway"="primary"][!"surface"](area.gyeongnam);
#  way["highway"="primary"][!"surface"](area.gyeongbuk);
#  way["highway"="primary"][!"surface"](area.daegu);
#  way["highway"="primary"][!"surface"](area.busan);
#  way["highway"="primary"][!"surface"](area.ulsan);
#);
#out body;
#>;
#out skel qt;
wget -O datasets/without_surface/primaries_without_surface_Gyeongsang.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A100%5D%3Barea%283602393403%29%2D%3E%2Egyeongnam%3Barea%283602304454%29%2D%3E%2Egyeongbuk%3Barea%283602395674%29%2D%3E%2Edaegu%3Barea%283602396450%29%2D%3E%2Ebusan%3Barea%283602395867%29%2D%3E%2Eulsan%3B%28way%5B%22highway%22%3D%22primary%22%5D%5B%22surface%22%21%7E%22%2E%2A%22%5D%28area%2Egyeongnam%29%3Bway%5B%22highway%22%3D%22primary%22%5D%5B%22surface%22%21%7E%22%2E%2A%22%5D%28area%2Egyeongbuk%29%3Bway%5B%22highway%22%3D%22primary%22%5D%5B%22surface%22%21%7E%22%2E%2A%22%5D%28area%2Edaegu%29%3Bway%5B%22highway%22%3D%22primary%22%5D%5B%22surface%22%21%7E%22%2E%2A%22%5D%28area%2Ebusan%29%3Bway%5B%22highway%22%3D%22primary%22%5D%5B%22surface%22%21%7E%22%2E%2A%22%5D%28area%2Eulsan%29%3B%29%3Bout%3B%3E%3Bout%20skel%20qt%3B%0A'
sleep 300