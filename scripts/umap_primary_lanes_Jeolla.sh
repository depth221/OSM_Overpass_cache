echo "primarys without lanes (Jeollanam, buk, Gwangju, Jeju)"
#[out:json][timeout:100];
#{{geocodeArea:전라남도}}->.jeonnam;
#{{geocodeArea:전라북도}}->.jeonbuk;
#{{geocodeArea:광주}}->.gwangju;
#{{geocodeArea:제주도}}->.jeju;
#(
#  way["highway"="primary"][!"lanes"](area.jeonnam);
#  way["highway"="primary"][!"lanes"](area.jeonbuk);
#  way["highway"="primary"][!"lanes"](area.gwangju);
#  way["highway"="primary"][!"lanes"](area.jeju);
#);
#out body;
#>;
#out skel qt;
wget -O datasets/without_lanes/primaries_without_lanes_Jeolla.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A100%5D%3Barea%283602398104%29%2D%3E%2Ejeonnam%3Barea%283602355168%29%2D%3E%2Ejeonbuk%3Barea%283602399220%29%2D%3E%2Egwangju%3Barea%283609740744%29%2D%3E%2Ejeju%3B%28way%5B%22highway%22%3D%22primary%22%5D%5B%22lanes%22%21%7E%22%2E%2A%22%5D%28area%2Ejeonnam%29%3Bway%5B%22highway%22%3D%22primary%22%5D%5B%22lanes%22%21%7E%22%2E%2A%22%5D%28area%2Ejeonbuk%29%3Bway%5B%22highway%22%3D%22primary%22%5D%5B%22lanes%22%21%7E%22%2E%2A%22%5D%28area%2Egwangju%29%3Bway%5B%22highway%22%3D%22primary%22%5D%5B%22lanes%22%21%7E%22%2E%2A%22%5D%28area%2Ejeju%29%3B%29%3Bout%3B%3E%3Bout%20skel%20qt%3B%0A'
sleep 300