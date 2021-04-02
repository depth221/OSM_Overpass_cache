echo "primarys without surface (Chungcheongnam, buk)"
#[out:json][timeout:100];
#{{geocodeArea:충청남도}}->.chungnam;
#{{geocodeArea:충청북도}}->.chungbuk;
#{{geocodeArea:대전}}->.daejeon;
#{{geocodeArea:세종}}->.sejong;
#(
#  way["highway"="primary"][!"surface"](area.chungnam);
#  way["highway"="primary"][!"surface"](area.chungbuk);
#  way["highway"="primary"][!"surface"](area.daejeon);
#  way["highway"="primary"][!"surface"](area.sejong);
#);
#out body;
#>;
#out skel qt;
wget -O datasets/without_surface/primaries_without_surface_ChungCheong.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A100%5D%3Barea%283602327259%29%2D%3E%2Echungnam%3Barea%283602327258%29%2D%3E%2Echungbuk%3Barea%283602349984%29%2D%3E%2Edaejeon%3Barea%283602349795%29%2D%3E%2Esejong%3B%28way%5B%22highway%22%3D%22primary%22%5D%5B%22surface%22%21%7E%22%2E%2A%22%5D%28area%2Echungnam%29%3Bway%5B%22highway%22%3D%22primary%22%5D%5B%22surface%22%21%7E%22%2E%2A%22%5D%28area%2Echungbuk%29%3Bway%5B%22highway%22%3D%22primary%22%5D%5B%22surface%22%21%7E%22%2E%2A%22%5D%28area%2Edaejeon%29%3Bway%5B%22highway%22%3D%22primary%22%5D%5B%22surface%22%21%7E%22%2E%2A%22%5D%28area%2Esejong%29%3B%29%3Bout%3B%3E%3Bout%20skel%20qt%3B%0A'
sleep 300