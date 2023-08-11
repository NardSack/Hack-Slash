{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_hallway",
  "creationCodeFile": "rooms/Room1/RoomCreationCode.gml",
  "inheritCode": true,
  "inheritCreationOrder": true,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_66C2D1E8","path":"rooms/rm_hallway/rm_hallway.yy",},
    {"name":"inst_22B34E24","path":"rooms/rm_hallway/rm_hallway.yy",},
    {"name":"inst_200A058A","path":"rooms/rm_hallway/rm_hallway.yy",},
    {"name":"inst_3D928E6","path":"rooms/rm_hallway/rm_hallway.yy",},
    {"name":"inst_5B29ED52","path":"rooms/rm_hallway/rm_hallway.yy",},
    {"name":"inst_1538A117","path":"rooms/rm_hallway/rm_hallway.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Settings","depth":0,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_66C2D1E8","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":true,"inheritedItemId":{"name":"inst_66C2D1E8","path":"rooms/Room1/Room1.yy",},"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_game","path":"objects/obj_game/obj_game.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":0.0,"y":-16.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":true,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Triggers","depth":100,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1538A117","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_room_warp","path":"objects/obj_room_warp/obj_room_warp.yy",},"properties":[],"rotation":0.0,"scaleX":2.0,"scaleY":12.0,"x":-16.0,"y":480.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":true,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Walls","depth":-3000,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_22B34E24","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":124.0,"scaleY":1.0,"x":0.0,"y":672.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_200A058A","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":124.0,"scaleY":1.0,"x":0.0,"y":464.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3D928E6","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":12.0,"x":1984.0,"y":480.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5B29ED52","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_wall","path":"objects/obj_wall/obj_wall.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":12.0,"x":-16.0,"y":480.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":true,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Pause_layer","depth":-10000,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":true,"visible":true,},
    {"resourceType":"GMRLayer","resourceVersion":"1.0","name":"AboveTiles","depth":-9900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[
        {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"ground_stone_up","depth":-2200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":34,"SerialiseWidth":62,"TileCompressedData":[
-2108,0,],"TileDataFormat":1,},"tilesetId":{"name":"ts_stonefloor","path":"tilesets/ts_stonefloor/ts_stonefloor.yy",},"userdefinedDepth":true,"visible":true,"x":0,"y":0,},
        {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"ground_edge_up","depth":-2100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":34,"SerialiseWidth":62,"TileCompressedData":[
-1984,0,-3,-2147483648,-59,0,-3,-2147483648,-59,0,],"TileDataFormat":1,},"tilesetId":{"name":"ts_stonewall","path":"tilesets/ts_stonewall/ts_stonewall.yy",},"userdefinedDepth":true,"visible":true,"x":0,"y":0,},
        {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"ground_up","depth":-2000,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":34,"SerialiseWidth":62,"TileCompressedData":[
-2108,0,],"TileDataFormat":1,},"tilesetId":{"name":"ts_lightgrass","path":"tilesets/ts_lightgrass/ts_lightgrass.yy",},"userdefinedDepth":true,"visible":true,"x":0,"y":0,},
      ],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":700,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":true,"visible":true,},
    {"resourceType":"GMRLayer","resourceVersion":"1.0","name":"BelowTiles","depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":false,"inheritVisibility":true,"layers":[
        {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"ground_stone","depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":34,"SerialiseWidth":62,"TileCompressedData":[
-961,-2147483648,8,2,3,4,5,2,3,4,5,-30,-2147483648,1,40,-6,-2147483648,1,13,-3,-2147483648,1,40,-7,-2147483648,1,40,-4,-2147483648,8,2,3,40,5,2,3,4,5,-11,-2147483648,1,40,-25,-2147483648,1,22,-16,-2147483648,8,2,3,4,5,2,3,4,5,-21,-2147483648,4,40,-2147483648,
-2147483648,40,-12,-2147483648,1,31,-26,-2147483648,1,13,-3,-2147483648,1,40,-4,-2147483648,3,37,38,39,-16,-2147483648,1,40,-12,-2147483648,1,40,-4,-2147483648,1,40,-9,-2147483648,1,40,-5,-2147483648,1,22,-14,-2147483648,1,40,-9,-2147483648,3,46,47,48,-34,-2147483648,1,31,-826,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"ts_stonefloor","path":"tilesets/ts_stonefloor/ts_stonefloor.yy",},"userdefinedDepth":true,"visible":true,"x":0,"y":0,},
        {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"ground_grass","depth":900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":68,"SerialiseWidth":124,"TileCompressedData":[
-3746,0,2,962,963,-118,0,6,774,775,0,0,994,995,-17,0,2,896,897,-54,0,8,768,769,0,0,960,961,962,963,-23,0,2,768,769,-9,0,7,966,967,0,806,807,772,773,-19,0,2,928,929,-37,0,2,834,835,-15,0,8,800,801,0,0,992,993,994,995,-3,0,2,898,899,-18,0,2,800,801,-9,0,2,998,999,-3,0,2,804,805,-17,0,4,902,903,966,967,-11,0,2,896,897,-24,0,2,866,867,-23,0,5,900,901,0,930,931,-28,0,2,960,961,-23,0,4,934,935,998,999,-8,
0,7,838,839,0,928,929,960,961,-20,0,2,900,901,-25,0,2,932,933,-31,0,2,992,993,-35,0,7,870,871,966,967,0,992,993,-20,0,2,932,933,-15,0,2,838,839,-56,0,2,774,775,-22,0,2,998,999,-40,0,2,870,871,-56,0,2,806,807,-123,0,2,900,901,-122,0,2,932,933,-91,0,2,962,963,-16,0,2,962,963,-23,0,2,896,897,-31,0,2,770,771,-46,0,2,994,995,-16,0,2,994,995,-23,0,2,928,929,-24,0,2,774,775,-5,0,2,802,803,-7,0,2,836,837,
-14,0,2,836,837,-6,0,2,898,899,-82,0,2,806,807,-14,0,2,868,869,-14,0,2,868,869,-6,0,2,930,931,-3110,0,],"TileDataFormat":1,},"tilesetId":{"name":"ts_plants","path":"tilesets/ts_plants/ts_plants.yy",},"userdefinedDepth":true,"visible":true,"x":0,"y":0,},
        {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"ground_edge","depth":1000,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":34,"SerialiseWidth":62,"TileCompressedData":[
-930,0,62,18,30,70,29,70,28,71,18,30,70,29,70,28,71,18,30,70,29,70,28,71,18,30,70,29,70,28,71,18,30,70,29,70,28,71,18,30,70,29,70,28,71,18,30,70,29,70,28,71,18,30,70,29,70,28,71,18,30,70,
29,70,28,-310,0,124,97,98,99,100,97,98,99,100,97,98,99,100,97,98,99,100,97,98,99,100,97,98,99,100,97,98,99,100,97,98,99,100,97,98,99,100,97,98,99,100,97,98,99,100,97,98,99,100,97,98,99,100,97,98,99,100,
97,98,99,100,97,98,113,114,115,116,113,114,115,116,113,114,115,116,113,114,115,116,113,114,115,116,113,114,115,116,113,114,115,116,113,114,115,116,113,114,115,116,113,114,115,116,113,114,115,116,113,114,115,116,113,114,115,116,113,114,115,116,
113,114,115,116,113,114,-620,0,-2,-2147483648,-60,0,],"TileDataFormat":1,},"tilesetId":{"name":"ts_stonewall","path":"tilesets/ts_stonewall/ts_stonewall.yy",},"userdefinedDepth":true,"visible":true,"x":0,"y":0,},
        {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"ground","depth":1100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":34,"SerialiseWidth":62,"TileCompressedData":[
-930,0,372,53,51,52,50,53,71,52,50,53,51,70,70,25,31,52,50,53,51,52,50,53,51,24,71,53,51,52,50,53,51,52,50,53,51,52,50,53,51,52,50,53,70,71,50,53,51,52,50,53,51,70,71,52,53,71,50,53,51,52,
50,53,51,46,56,64,47,68,77,64,47,46,73,78,23,42,77,64,47,46,56,64,47,46,76,33,57,46,56,64,47,46,56,64,47,46,56,64,47,46,56,64,47,46,53,62,47,46,56,64,47,46,56,76,55,56,57,66,68,69,56,64,
47,46,56,65,47,56,55,77,47,56,55,65,67,77,55,65,47,56,55,65,47,56,55,65,78,70,77,65,47,56,55,60,42,15,62,65,47,56,55,65,47,56,55,65,68,77,55,65,47,56,55,65,77,74,55,65,74,76,77,78,47,56,
55,65,47,64,46,47,46,64,46,47,46,64,78,47,46,64,46,47,46,73,62,47,46,64,46,47,46,64,46,47,46,78,71,46,47,64,46,47,46,64,46,47,46,64,46,77,46,64,46,47,46,64,78,47,46,64,46,47,46,64,46,47,
46,64,46,55,536870968,65,47,55,536870968,65,47,55,536870968,65,47,55,536870968,65,47,78,16,65,47,55,536870968,65,47,55,536870968,65,47,55,536870968,55,56,64,65,65,47,55,536870968,65,47,55,536870968,65,47,55,536870968,65,47,55,536870968,65,47,55,536870968,65,47,55,536870968,65,
47,55,536870968,59,60,62,61,59,60,62,61,59,60,62,61,59,60,62,61,62,68,62,61,59,60,62,61,59,60,62,61,59,60,62,59,60,61,62,61,59,60,62,61,59,60,62,61,59,60,62,61,59,60,62,61,59,60,62,61,59,60,62,
61,59,60,-806,0,],"TileDataFormat":1,},"tilesetId":{"name":"ts_grass","path":"tilesets/ts_grass/ts_grass.yy",},"userdefinedDepth":true,"visible":true,"x":0,"y":0,},
        {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"background_grass","depth":1200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":34,"SerialiseWidth":62,"TileSerialiseData":[
10,11,12,13,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,
19,20,21,22,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,
28,29,30,31,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,
37,38,39,40,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,
29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,
38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,
11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,
20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,1073741844,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,
29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,
38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,
11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,
20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,
29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,
38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,
11,12,13,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,
20,21,22,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,
29,30,31,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,
38,39,40,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,
11,12,13,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,
20,21,22,19,20,21,22,19,20,21,22,38,39,40,37,38,39,40,37,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,
29,30,31,28,29,30,31,28,29,30,31,11,12,13,10,11,12,13,10,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,
38,39,40,37,38,39,40,37,38,39,40,20,21,22,19,20,21,22,19,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,
11,12,13,10,11,12,13,10,11,12,13,29,30,31,28,29,30,31,28,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,
20,21,22,19,20,21,22,19,20,21,22,38,39,40,37,38,39,40,37,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,
29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,
38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,10,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,
11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,
20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,
29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,
38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,
11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,13,10,11,12,
20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,22,19,20,21,
29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,31,28,29,30,
38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,40,37,38,39,
],},"tilesetId":{"name":"ts_darkgrass","path":"tilesets/ts_darkgrass/ts_darkgrass.yy",},"userdefinedDepth":true,"visible":true,"x":0,"y":0,},
      ],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"back","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":1300,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"bg","path":"sprites/bg/bg.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":true,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": {
    "name": "Room1",
    "path": "rooms/Room1/Room1.yy",
  },
  "physicsSettings": {
    "inheritPhysicsSettings": true,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 1080,
    "inheritRoomSettings": true,
    "persistent": false,
    "Width": 1980,
  },
  "sequenceId": null,
  "views": [
    {"hborder":200,"hport":1080,"hspeed":-1,"hview":480,"inherit":true,"objectId":null,"vborder":100,"visible":true,"vspeed":-1,"wport":1920,"wview":854,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": true,
    "inheritViewSettings": true,
  },
  "volume": 1.0,
}