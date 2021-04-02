echo "objects from South Korea Open Data Portal"
#[out:json][timeout:100];
#{{geocodeArea:South Korea}}->.searchArea;
#(
#  node["source"="공공데이터포털"]["highway"!~".*"](area.searchArea);
#  way["source"="공공데이터포털"]["highway"!~".*"](area.searchArea);
#  relation["source"="공공데이터포털"]["highway"!~".*"](area.searchArea);
#);
#out body;
#>;
#out body qt;
wget -O datasets/ROK_OpenData/objects_from_ROK_OpenData.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A100%5D%3Barea%283600307756%29%2D%3E%2EsearchArea%3B%28node%5B%22source%22%3D%22%EA%B3%B5%EA%B3%B5%EB%8D%B0%EC%9D%B4%ED%84%B0%ED%8F%AC%ED%84%B8%22%5D%5B%22highway%22%21%7E%22%2E%2A%22%5D%28area%2EsearchArea%29%3Bway%5B%22source%22%3D%22%EA%B3%B5%EA%B3%B5%EB%8D%B0%EC%9D%B4%ED%84%B0%ED%8F%AC%ED%84%B8%22%5D%5B%22highway%22%21%7E%22%2E%2A%22%5D%28area%2EsearchArea%29%3Brelation%5B%22source%22%3D%22%EA%B3%B5%EA%B3%B5%EB%8D%B0%EC%9D%B4%ED%84%B0%ED%8F%AC%ED%84%B8%22%5D%5B%22highway%22%21%7E%22%2E%2A%22%5D%28area%2EsearchArea%29%3B%29%3Bout%3B%3E%3Bout%20qt%3B%0A'
sleep 300