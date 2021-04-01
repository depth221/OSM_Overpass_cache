echo "motorways without surface"
#[out:json][timeout:100];
#{{geocodeArea:South Korea}}->.searchArea;
#(
#  way["highway"="motorway"][!"surface"](area.searchArea);
#);
#out body;
#>;
#out skel qt;
wget -O motorways_without_surface.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A100%5D%3Barea%283600307756%29%2D%3E%2EsearchArea%3B%28way%5B%22highway%22%3D%22motorway%22%5D%5B%22surface%22%21%7E%22%2E%2A%22%5D%28area%2EsearchArea%29%3B%29%3Bout%3B%3E%3Bout%20skel%20qt%3B%0A'
sleep 300