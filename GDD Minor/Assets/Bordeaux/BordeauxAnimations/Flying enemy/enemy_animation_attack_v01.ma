//Maya ASCII 2022 scene
//Name: enemy_animation_attack_v01.ma
//Last modified: Wed, May 08, 2024 12:08:13 AM
//Codeset: 1252
file -rdi 1 -rpr "enemy_rig_v05" -rfn "enemy_rig_v05RN" -op "v=0;" -typ "mayaAscii"
		 "C:/uni/Project/enemy_rig_v05.ma";
file -rdi 2 -rpr "enemy_v03" -rfn "enemy_rig_v05_enemy_v03RN" -op "v=0;" -typ
		 "mayaAscii" "C:/uni/Project/enemy v03.ma";
file -r -rpr "enemy_rig_v05" -dr 1 -rfn "enemy_rig_v05RN" -op "v=0;" -typ "mayaAscii"
		 "C:/uni/Project/enemy_rig_v05.ma";
requires maya "2022";
requires "stereoCamera" "10.0";
requires "mtoa" "4.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202102181415-29bfc1879c";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "A8304756-4D50-7BB0-4D87-D390FB675CEB";
createNode transform -s -n "persp";
	rename -uid "89BDCF85-4E60-872D-8103-D69E20103CAD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 49.442131539782643 5.3964048002850014 59.701087556735544 ;
	setAttr ".r" -type "double3" -0.3383527295124148 37.400000000000908 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "72D433F8-46A0-5336-1235-768FE422C8D9";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 75.329925919112952;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "E9F4B811-4432-638B-FCB6-0FBC332F422F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E6B2EC6F-4E06-0BE4-04E3-4B990986C8F2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "935F9F64-4CE3-9324-A254-36AA1A868E8A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D76E57F5-455D-A9AF-11A6-5DB3079895A8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "4949D892-4B20-451B-19F5-EE8BF1B4305F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1C9F650A-40BC-9C66-4ABC-33BB0AF01CF1";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "35B5A06A-4F64-7937-177F-06B9FF26016A";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "0A03C219-45B2-A9C5-9A25-29A91D5F1E4A";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "24B6853C-4D88-6095-7C1F-6C8FA0F44CDE";
createNode displayLayerManager -n "layerManager";
	rename -uid "5932B9B2-4022-C300-9CE9-0DBBB036CB67";
	setAttr ".cdl" 2;
	setAttr -s 3 ".dli[1:2]"  1 2;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "77B55415-447A-18BF-874C-CBBD05235DFC";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5ABEC40B-4B44-4DC9-0684-0DB4FD857AE1";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "3EA3DB6E-438F-FD7B-EE56-629932339586";
	setAttr ".g" yes;
createNode reference -n "enemy_rig_v05RN";
	rename -uid "30D0B47E-42BF-E8EB-40E2-E59880B78B13";
	setAttr -s 434 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" 0;
	setAttr ".phl[383]" 0;
	setAttr ".phl[384]" 0;
	setAttr ".phl[385]" 0;
	setAttr ".phl[386]" 0;
	setAttr ".phl[387]" 0;
	setAttr ".phl[388]" 0;
	setAttr ".phl[389]" 0;
	setAttr ".phl[390]" 0;
	setAttr ".phl[391]" 0;
	setAttr ".phl[392]" 0;
	setAttr ".phl[393]" 0;
	setAttr ".phl[394]" 0;
	setAttr ".phl[395]" 0;
	setAttr ".phl[396]" 0;
	setAttr ".phl[397]" 0;
	setAttr ".phl[398]" 0;
	setAttr ".phl[399]" 0;
	setAttr ".phl[400]" 0;
	setAttr ".phl[401]" 0;
	setAttr ".phl[402]" 0;
	setAttr ".phl[403]" 0;
	setAttr ".phl[404]" 0;
	setAttr ".phl[405]" 0;
	setAttr ".phl[406]" 0;
	setAttr ".phl[407]" 0;
	setAttr ".phl[408]" 0;
	setAttr ".phl[409]" 0;
	setAttr ".phl[410]" 0;
	setAttr ".phl[411]" 0;
	setAttr ".phl[412]" 0;
	setAttr ".phl[413]" 0;
	setAttr ".phl[414]" 0;
	setAttr ".phl[415]" 0;
	setAttr ".phl[416]" 0;
	setAttr ".phl[417]" 0;
	setAttr ".phl[418]" 0;
	setAttr ".phl[419]" 0;
	setAttr ".phl[420]" 0;
	setAttr ".phl[421]" 0;
	setAttr ".phl[422]" 0;
	setAttr ".phl[423]" 0;
	setAttr ".phl[424]" 0;
	setAttr ".phl[425]" 0;
	setAttr ".phl[426]" 0;
	setAttr ".phl[427]" 0;
	setAttr ".phl[428]" 0;
	setAttr ".phl[429]" 0;
	setAttr ".phl[430]" 0;
	setAttr ".phl[431]" 0;
	setAttr ".phl[432]" 0;
	setAttr ".phl[433]" 0;
	setAttr ".phl[434]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"enemy_rig_v05RN"
		"enemy_rig_v05_enemy_v03RN" 0
		"enemy_rig_v05RN" 0
		"enemy_rig_v05RN" 434
		2 "enemy_rig_v05_Enemy_GEO" "visibility" " 1"
		2 "enemy_rig_v05_layer2" "visibility" " 1"
		2 "enemy_rig_v05_layer3" "displayType" " 2"
		2 "enemy_rig_v05_layer3" "visibility" " 1"
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[5]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[6]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[7]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[8]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[9]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[10]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[11]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[12]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[13]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[14]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[15]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[16]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[17]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[18]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[19]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[20]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[21]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[22]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[23]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[24]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[25]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[26]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[27]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[28]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[29]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[30]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[31]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[32]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[33]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[34]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[35]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[36]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[37]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[38]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[39]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[40]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[41]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[42]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[43]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[44]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_C_spine04_off|enemy_rig_v05_C_spine04_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[45]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_C_spine04_off|enemy_rig_v05_C_spine04_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[46]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_C_spine04_off|enemy_rig_v05_C_spine04_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[47]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_C_spine04_off|enemy_rig_v05_C_spine04_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[48]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_C_spine04_off|enemy_rig_v05_C_spine04_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[49]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_C_spine04_off|enemy_rig_v05_C_spine04_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[50]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_C_spine04_off|enemy_rig_v05_C_spine04_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[51]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_C_spine04_off|enemy_rig_v05_C_spine04_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[52]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_C_spine04_off|enemy_rig_v05_C_spine04_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[53]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_C_spine04_off|enemy_rig_v05_C_spine04_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[54]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[55]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[56]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[57]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[58]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[59]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[60]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[61]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[62]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[63]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[64]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[65]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[66]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[67]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[68]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[69]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[70]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[71]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[72]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[73]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[74]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl|enemy_rig_v05_R_low_paw03_off|enemy_rig_v05_R_low_paw03_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[75]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl|enemy_rig_v05_R_low_paw03_off|enemy_rig_v05_R_low_paw03_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[76]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl|enemy_rig_v05_R_low_paw03_off|enemy_rig_v05_R_low_paw03_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[77]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl|enemy_rig_v05_R_low_paw03_off|enemy_rig_v05_R_low_paw03_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[78]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl|enemy_rig_v05_R_low_paw03_off|enemy_rig_v05_R_low_paw03_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[79]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl|enemy_rig_v05_R_low_paw03_off|enemy_rig_v05_R_low_paw03_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[80]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl|enemy_rig_v05_R_low_paw03_off|enemy_rig_v05_R_low_paw03_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[81]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl|enemy_rig_v05_R_low_paw03_off|enemy_rig_v05_R_low_paw03_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[82]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl|enemy_rig_v05_R_low_paw03_off|enemy_rig_v05_R_low_paw03_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[83]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl|enemy_rig_v05_R_low_paw03_off|enemy_rig_v05_R_low_paw03_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[84]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[85]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[86]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[87]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[88]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[89]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[90]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[91]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[92]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[93]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[94]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[95]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[96]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[97]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[98]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[99]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[100]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[101]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[102]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[103]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[104]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl|enemy_rig_v05_L_low_paw03_off|enemy_rig_v05_L_low_paw03_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[105]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl|enemy_rig_v05_L_low_paw03_off|enemy_rig_v05_L_low_paw03_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[106]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl|enemy_rig_v05_L_low_paw03_off|enemy_rig_v05_L_low_paw03_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[107]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl|enemy_rig_v05_L_low_paw03_off|enemy_rig_v05_L_low_paw03_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[108]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl|enemy_rig_v05_L_low_paw03_off|enemy_rig_v05_L_low_paw03_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[109]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl|enemy_rig_v05_L_low_paw03_off|enemy_rig_v05_L_low_paw03_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[110]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl|enemy_rig_v05_L_low_paw03_off|enemy_rig_v05_L_low_paw03_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[111]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl|enemy_rig_v05_L_low_paw03_off|enemy_rig_v05_L_low_paw03_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[112]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl|enemy_rig_v05_L_low_paw03_off|enemy_rig_v05_L_low_paw03_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[113]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl|enemy_rig_v05_L_low_paw03_off|enemy_rig_v05_L_low_paw03_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[114]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[115]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[116]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[117]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[118]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[119]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[120]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[121]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[122]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[123]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[124]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[125]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[126]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[127]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[128]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[129]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[130]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[131]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[132]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[133]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[134]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl|enemy_rig_v05_L_mid_paw03_off|enemy_rig_v05_L_mid_paw03_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[135]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl|enemy_rig_v05_L_mid_paw03_off|enemy_rig_v05_L_mid_paw03_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[136]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl|enemy_rig_v05_L_mid_paw03_off|enemy_rig_v05_L_mid_paw03_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[137]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl|enemy_rig_v05_L_mid_paw03_off|enemy_rig_v05_L_mid_paw03_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[138]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl|enemy_rig_v05_L_mid_paw03_off|enemy_rig_v05_L_mid_paw03_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[139]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl|enemy_rig_v05_L_mid_paw03_off|enemy_rig_v05_L_mid_paw03_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[140]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl|enemy_rig_v05_L_mid_paw03_off|enemy_rig_v05_L_mid_paw03_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[141]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl|enemy_rig_v05_L_mid_paw03_off|enemy_rig_v05_L_mid_paw03_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[142]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl|enemy_rig_v05_L_mid_paw03_off|enemy_rig_v05_L_mid_paw03_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[143]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl|enemy_rig_v05_L_mid_paw03_off|enemy_rig_v05_L_mid_paw03_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[144]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[145]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[146]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[147]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[148]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[149]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[150]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[151]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[152]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[153]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[154]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[155]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[156]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[157]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[158]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[159]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[160]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[161]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[162]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[163]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[164]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl|enemy_rig_v05_R_mid_paw03_off|enemy_rig_v05_R_mid_paw03_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[165]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl|enemy_rig_v05_R_mid_paw03_off|enemy_rig_v05_R_mid_paw03_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[166]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl|enemy_rig_v05_R_mid_paw03_off|enemy_rig_v05_R_mid_paw03_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[167]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl|enemy_rig_v05_R_mid_paw03_off|enemy_rig_v05_R_mid_paw03_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[168]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl|enemy_rig_v05_R_mid_paw03_off|enemy_rig_v05_R_mid_paw03_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[169]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl|enemy_rig_v05_R_mid_paw03_off|enemy_rig_v05_R_mid_paw03_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[170]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl|enemy_rig_v05_R_mid_paw03_off|enemy_rig_v05_R_mid_paw03_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[171]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl|enemy_rig_v05_R_mid_paw03_off|enemy_rig_v05_R_mid_paw03_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[172]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl|enemy_rig_v05_R_mid_paw03_off|enemy_rig_v05_R_mid_paw03_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[173]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl|enemy_rig_v05_R_mid_paw03_off|enemy_rig_v05_R_mid_paw03_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[174]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[175]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[176]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[177]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[178]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[179]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[180]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[181]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[182]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[183]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[184]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[185]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[186]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[187]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[188]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[189]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[190]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[191]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[192]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[193]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[194]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl|enemy_rig_v05_L_up_paw03_off|enemy_rig_v05_L_up_paw03_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[195]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl|enemy_rig_v05_L_up_paw03_off|enemy_rig_v05_L_up_paw03_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[196]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl|enemy_rig_v05_L_up_paw03_off|enemy_rig_v05_L_up_paw03_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[197]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl|enemy_rig_v05_L_up_paw03_off|enemy_rig_v05_L_up_paw03_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[198]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl|enemy_rig_v05_L_up_paw03_off|enemy_rig_v05_L_up_paw03_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[199]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl|enemy_rig_v05_L_up_paw03_off|enemy_rig_v05_L_up_paw03_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[200]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl|enemy_rig_v05_L_up_paw03_off|enemy_rig_v05_L_up_paw03_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[201]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl|enemy_rig_v05_L_up_paw03_off|enemy_rig_v05_L_up_paw03_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[202]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl|enemy_rig_v05_L_up_paw03_off|enemy_rig_v05_L_up_paw03_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[203]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl|enemy_rig_v05_L_up_paw03_off|enemy_rig_v05_L_up_paw03_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[204]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[205]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[206]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[207]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[208]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[209]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[210]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[211]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[212]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[213]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[214]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[215]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[216]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[217]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[218]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[219]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[220]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[221]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[222]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[223]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[224]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl|enemy_rig_v05_R_up_paw03_off|enemy_rig_v05_R_up_paw03_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[225]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl|enemy_rig_v05_R_up_paw03_off|enemy_rig_v05_R_up_paw03_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[226]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl|enemy_rig_v05_R_up_paw03_off|enemy_rig_v05_R_up_paw03_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[227]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl|enemy_rig_v05_R_up_paw03_off|enemy_rig_v05_R_up_paw03_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[228]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl|enemy_rig_v05_R_up_paw03_off|enemy_rig_v05_R_up_paw03_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[229]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl|enemy_rig_v05_R_up_paw03_off|enemy_rig_v05_R_up_paw03_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[230]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl|enemy_rig_v05_R_up_paw03_off|enemy_rig_v05_R_up_paw03_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[231]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl|enemy_rig_v05_R_up_paw03_off|enemy_rig_v05_R_up_paw03_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[232]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl|enemy_rig_v05_R_up_paw03_off|enemy_rig_v05_R_up_paw03_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[233]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl|enemy_rig_v05_R_up_paw03_off|enemy_rig_v05_R_up_paw03_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[234]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[235]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[236]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[237]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[238]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[239]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[240]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[241]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[242]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[243]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[244]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[245]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[246]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[247]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[248]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[249]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[250]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[251]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[252]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[253]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[254]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl|enemy_rig_v05_R_up_endwing_off|enemy_rig_v05_R_up_endwing_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[255]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl|enemy_rig_v05_R_up_endwing_off|enemy_rig_v05_R_up_endwing_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[256]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl|enemy_rig_v05_R_up_endwing_off|enemy_rig_v05_R_up_endwing_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[257]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl|enemy_rig_v05_R_up_endwing_off|enemy_rig_v05_R_up_endwing_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[258]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl|enemy_rig_v05_R_up_endwing_off|enemy_rig_v05_R_up_endwing_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[259]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl|enemy_rig_v05_R_up_endwing_off|enemy_rig_v05_R_up_endwing_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[260]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl|enemy_rig_v05_R_up_endwing_off|enemy_rig_v05_R_up_endwing_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[261]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl|enemy_rig_v05_R_up_endwing_off|enemy_rig_v05_R_up_endwing_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[262]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl|enemy_rig_v05_R_up_endwing_off|enemy_rig_v05_R_up_endwing_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[263]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl|enemy_rig_v05_R_up_endwing_off|enemy_rig_v05_R_up_endwing_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[264]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[265]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[266]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[267]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[268]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[269]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[270]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[271]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[272]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[273]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[274]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl|enemy_rig_v05_R_low_endwing_off|enemy_rig_v05_R_low_endwing_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[275]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl|enemy_rig_v05_R_low_endwing_off|enemy_rig_v05_R_low_endwing_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[276]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl|enemy_rig_v05_R_low_endwing_off|enemy_rig_v05_R_low_endwing_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[277]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl|enemy_rig_v05_R_low_endwing_off|enemy_rig_v05_R_low_endwing_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[278]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl|enemy_rig_v05_R_low_endwing_off|enemy_rig_v05_R_low_endwing_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[279]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl|enemy_rig_v05_R_low_endwing_off|enemy_rig_v05_R_low_endwing_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[280]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl|enemy_rig_v05_R_low_endwing_off|enemy_rig_v05_R_low_endwing_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[281]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl|enemy_rig_v05_R_low_endwing_off|enemy_rig_v05_R_low_endwing_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[282]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl|enemy_rig_v05_R_low_endwing_off|enemy_rig_v05_R_low_endwing_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[283]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl|enemy_rig_v05_R_low_endwing_off|enemy_rig_v05_R_low_endwing_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[284]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[285]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[286]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[287]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[288]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[289]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[290]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[291]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[292]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[293]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[294]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[295]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[296]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[297]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[298]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[299]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[300]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[301]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[302]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[303]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[304]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_low_mouth_off|enemy_rig_v05_low_mouth_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[305]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_low_mouth_off|enemy_rig_v05_low_mouth_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[306]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_low_mouth_off|enemy_rig_v05_low_mouth_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[307]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_low_mouth_off|enemy_rig_v05_low_mouth_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[308]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_low_mouth_off|enemy_rig_v05_low_mouth_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[309]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_low_mouth_off|enemy_rig_v05_low_mouth_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[310]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_low_mouth_off|enemy_rig_v05_low_mouth_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[311]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_low_mouth_off|enemy_rig_v05_low_mouth_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[312]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_low_mouth_off|enemy_rig_v05_low_mouth_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[313]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_low_mouth_off|enemy_rig_v05_low_mouth_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[314]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_up_mouth_off|enemy_rig_v05_up_mouth_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[315]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_up_mouth_off|enemy_rig_v05_up_mouth_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[316]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_up_mouth_off|enemy_rig_v05_up_mouth_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[317]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_up_mouth_off|enemy_rig_v05_up_mouth_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[318]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_up_mouth_off|enemy_rig_v05_up_mouth_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[319]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_up_mouth_off|enemy_rig_v05_up_mouth_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[320]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_up_mouth_off|enemy_rig_v05_up_mouth_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[321]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_up_mouth_off|enemy_rig_v05_up_mouth_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[322]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_up_mouth_off|enemy_rig_v05_up_mouth_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[323]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_up_mouth_off|enemy_rig_v05_up_mouth_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[324]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[325]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[326]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[327]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[328]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[329]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[330]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[331]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[332]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[333]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[334]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[335]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[336]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[337]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[338]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[339]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[340]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[341]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[342]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[343]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[344]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl|enemy_rig_v05_L_antenna03_off|enemy_rig_v05_L_antenna03_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[345]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl|enemy_rig_v05_L_antenna03_off|enemy_rig_v05_L_antenna03_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[346]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl|enemy_rig_v05_L_antenna03_off|enemy_rig_v05_L_antenna03_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[347]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl|enemy_rig_v05_L_antenna03_off|enemy_rig_v05_L_antenna03_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[348]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl|enemy_rig_v05_L_antenna03_off|enemy_rig_v05_L_antenna03_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[349]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl|enemy_rig_v05_L_antenna03_off|enemy_rig_v05_L_antenna03_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[350]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl|enemy_rig_v05_L_antenna03_off|enemy_rig_v05_L_antenna03_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[351]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl|enemy_rig_v05_L_antenna03_off|enemy_rig_v05_L_antenna03_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[352]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl|enemy_rig_v05_L_antenna03_off|enemy_rig_v05_L_antenna03_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[353]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl|enemy_rig_v05_L_antenna03_off|enemy_rig_v05_L_antenna03_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[354]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[355]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[356]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[357]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[358]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[359]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[360]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[361]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[362]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[363]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[364]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[365]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[366]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[367]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[368]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[369]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[370]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[371]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[372]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[373]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[374]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl|enemy_rig_v05_R_antenna03_off|enemy_rig_v05_R_antenna03_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[375]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl|enemy_rig_v05_R_antenna03_off|enemy_rig_v05_R_antenna03_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[376]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl|enemy_rig_v05_R_antenna03_off|enemy_rig_v05_R_antenna03_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[377]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl|enemy_rig_v05_R_antenna03_off|enemy_rig_v05_R_antenna03_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[378]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl|enemy_rig_v05_R_antenna03_off|enemy_rig_v05_R_antenna03_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[379]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl|enemy_rig_v05_R_antenna03_off|enemy_rig_v05_R_antenna03_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[380]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl|enemy_rig_v05_R_antenna03_off|enemy_rig_v05_R_antenna03_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[381]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl|enemy_rig_v05_R_antenna03_off|enemy_rig_v05_R_antenna03_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[382]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl|enemy_rig_v05_R_antenna03_off|enemy_rig_v05_R_antenna03_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[383]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl|enemy_rig_v05_R_antenna03_off|enemy_rig_v05_R_antenna03_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[384]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[385]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[386]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[387]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[388]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[389]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[390]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[391]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[392]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[393]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[394]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[395]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[396]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[397]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[398]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[399]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[400]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[401]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[402]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[403]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[404]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl|enemy_rig_v05_L_up_endwing_off|enemy_rig_v05_L_up_endwing_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[405]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl|enemy_rig_v05_L_up_endwing_off|enemy_rig_v05_L_up_endwing_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[406]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl|enemy_rig_v05_L_up_endwing_off|enemy_rig_v05_L_up_endwing_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[407]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl|enemy_rig_v05_L_up_endwing_off|enemy_rig_v05_L_up_endwing_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[408]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl|enemy_rig_v05_L_up_endwing_off|enemy_rig_v05_L_up_endwing_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[409]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl|enemy_rig_v05_L_up_endwing_off|enemy_rig_v05_L_up_endwing_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[410]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl|enemy_rig_v05_L_up_endwing_off|enemy_rig_v05_L_up_endwing_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[411]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl|enemy_rig_v05_L_up_endwing_off|enemy_rig_v05_L_up_endwing_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[412]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl|enemy_rig_v05_L_up_endwing_off|enemy_rig_v05_L_up_endwing_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[413]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl|enemy_rig_v05_L_up_endwing_off|enemy_rig_v05_L_up_endwing_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[414]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[415]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[416]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[417]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[418]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[419]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[420]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[421]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[422]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[423]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[424]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl|enemy_rig_v05_L_low_endwing_off|enemy_rig_v05_L_low_endwing_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[425]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl|enemy_rig_v05_L_low_endwing_off|enemy_rig_v05_L_low_endwing_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[426]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl|enemy_rig_v05_L_low_endwing_off|enemy_rig_v05_L_low_endwing_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[427]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl|enemy_rig_v05_L_low_endwing_off|enemy_rig_v05_L_low_endwing_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[428]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl|enemy_rig_v05_L_low_endwing_off|enemy_rig_v05_L_low_endwing_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[429]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl|enemy_rig_v05_L_low_endwing_off|enemy_rig_v05_L_low_endwing_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[430]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl|enemy_rig_v05_L_low_endwing_off|enemy_rig_v05_L_low_endwing_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[431]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl|enemy_rig_v05_L_low_endwing_off|enemy_rig_v05_L_low_endwing_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[432]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl|enemy_rig_v05_L_low_endwing_off|enemy_rig_v05_L_low_endwing_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[433]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl|enemy_rig_v05_L_low_endwing_off|enemy_rig_v05_L_low_endwing_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[434]" ""
		"enemy_rig_v05_enemy_v03RN" 6
		2 "enemy_v03_Joints" "visibility" " 1"
		2 "enemy_v03_layer2" "visibility" " 1"
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_geometry|enemy_v03_L_eye_GEO.drawOverride" 
		"enemy_rig_v05RN.placeHolderList[1]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_geometry|enemy_v03_R_eye_GEO.drawOverride" 
		"enemy_rig_v05RN.placeHolderList[2]" ""
		5 4 "enemy_rig_v05RN" "|enemy_v03_upperteeth.drawOverride" "enemy_rig_v05RN.placeHolderList[3]" 
		""
		5 4 "enemy_rig_v05RN" "|enemy_v03_lowerteeth.drawOverride" "enemy_rig_v05RN.placeHolderList[4]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "1897F06F-4664-A7AF-8D3D-21895E2AD2A8";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1316\n            -height 663\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1316\\n    -height 663\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1316\\n    -height 663\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F470436D-4CFF-F1DF-CAE0-0290E9C03818";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 37 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "EYES";
	rename -uid "73E7CDE9-4A2E-E51F-817B-DF9B5F75D4D3";
	setAttr ".dt" 2;
	setAttr ".c" 5;
	setAttr ".do" 1;
createNode animCurveTU -n "enemy_rig_v05_C_body_ctrl_visibility";
	rename -uid "90FB2BCF-4518-176F-6B8F-8480F2642AFF";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_C_body_ctrl_translateX";
	rename -uid "C0C91152-451D-29B8-E579-01A815180794";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 -3.0523139018046601 25 -3.0523139018046601
		 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  -3.0523139018046601;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  -3.0523139018046601;
createNode animCurveTL -n "enemy_rig_v05_C_body_ctrl_translateY";
	rename -uid "364EE8D5-40A8-356E-BFE5-D6BDF78B7BE6";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 2.049293776296619 25 2.049293776296619
		 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  2.049293776296619;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  2.049293776296619;
createNode animCurveTL -n "enemy_rig_v05_C_body_ctrl_translateZ";
	rename -uid "9265F59E-46D9-F86A-BA15-16903A1A8DE8";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_C_body_ctrl_rotateX";
	rename -uid "D8AD7E7B-4CDA-B231-5AB5-D4B16411600C";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_C_body_ctrl_rotateY";
	rename -uid "069A1D2A-47BB-23EB-D8E1-47A9490B6072";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_C_body_ctrl_rotateZ";
	rename -uid "A5E05D2A-43E8-CB11-694E-3EB33AA44F08";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 -30.090347032705232 25 4.1512638710529117
		 30 -6.1984063086044099 35 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  0.58333333333333337;
	setAttr -s 5 ".kiy[4]"  -0.52517562878841217;
	setAttr -s 5 ".kox[4]"  0.58333333333333337;
	setAttr -s 5 ".koy[4]"  -0.52517562878841217;
createNode animCurveTU -n "enemy_rig_v05_C_body_ctrl_scaleX";
	rename -uid "A3011F52-406A-9E38-2D10-29AF7215406D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.3781635979720723 15 1.3781635979720723
		 25 1.3781635979720723 35 1.3781635979720723;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_body_ctrl_scaleY";
	rename -uid "8FC02E43-44E4-A239-CF85-479D9A9BBD7F";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.3781635979720723 15 1.3781635979720723
		 25 1.3781635979720723 35 1.3781635979720723;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_body_ctrl_scaleZ";
	rename -uid "79C12E38-42FC-70A8-CDCA-EF8C62768DC4";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.3781635979720723 15 1.3781635979720723
		 25 1.3781635979720723 35 1.3781635979720723;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_C_neck_ctrl_rotateX";
	rename -uid "7F1B3B04-48D2-F1A2-40B7-03B776E39055";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_C_neck_ctrl_rotateY";
	rename -uid "18C3CEAA-46B9-6780-B699-26B829DC37A2";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_C_neck_ctrl_rotateZ";
	rename -uid "DA861E23-4027-2A6F-BDB3-69A486A80349";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_C_head_ctrl_rotateX";
	rename -uid "15B3C370-4959-B5C8-A333-AA9D039B5580";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_C_head_ctrl_rotateY";
	rename -uid "F99B417A-4447-33FD-FDAD-10B70B80B168";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_C_head_ctrl_rotateZ";
	rename -uid "7FD183C4-4D17-A257-9CC6-0B8922D3A644";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_antenna01_ctrl_rotateX";
	rename -uid "D2EBFCAD-4D72-B567-F1DF-16B7B1F8996A";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_antenna01_ctrl_rotateY";
	rename -uid "2CEBAB1E-4B6A-5CA9-DD6C-68A37C5BDEB4";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_antenna01_ctrl_rotateZ";
	rename -uid "723085E3-4836-B399-C65F-14A38B14E259";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_antenna02_ctrl_rotateX";
	rename -uid "0FB7AD6F-4AB6-2750-56B2-919B054D0DAB";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_antenna02_ctrl_rotateY";
	rename -uid "DABE8C15-4BEC-DA4D-156C-0E869B0465C1";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_antenna02_ctrl_rotateZ";
	rename -uid "C2FF409E-4739-F117-D889-CAB7BFFAEC68";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_antenna03_ctrl_rotateX";
	rename -uid "DB9272BE-4639-C57E-934F-91BAD4D34A2B";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_antenna03_ctrl_rotateY";
	rename -uid "9634B664-4BB8-7FCC-A9A4-18AAF1544159";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_antenna03_ctrl_rotateZ";
	rename -uid "DB0C36B5-43B6-1F5E-581C-48BF5E84B89C";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_antenna01_ctrl_rotateX";
	rename -uid "4F78AA3B-44AA-CB04-0EBD-D78FF8FD2897";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_antenna01_ctrl_rotateY";
	rename -uid "8A463C11-4D98-E1FB-D5A4-3D8C6226BBCD";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_antenna01_ctrl_rotateZ";
	rename -uid "68B7B2A4-41DE-87B8-3A15-AEA6D64BB341";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_antenna02_ctrl_rotateX";
	rename -uid "75B0B60F-463A-CB4C-E848-0E9F92D50F54";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_antenna02_ctrl_rotateY";
	rename -uid "556972E1-426B-4228-7E48-02B5FBFF104F";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_antenna02_ctrl_rotateZ";
	rename -uid "202F68E0-4C1E-C488-AD4E-08BAB50B6DF5";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_antenna03_ctrl_rotateX";
	rename -uid "6D6D82F4-4E7C-427A-CC26-D79BF6DA27AE";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_antenna03_ctrl_rotateY";
	rename -uid "50CFDBE4-47DA-B433-5F1A-0A8C45022C7D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_antenna03_ctrl_rotateZ";
	rename -uid "E06CCC36-4888-F978-4ED5-40B717485F10";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_low_mouth_ctrl_rotateX";
	rename -uid "30ED5569-491C-E1C0-930F-3FBF09B7C86E";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 30 0 35 0;
	setAttr -s 5 ".kit[3:4]"  1 1;
	setAttr -s 5 ".kot[3:4]"  1 1;
	setAttr -s 5 ".kix[3:4]"  0.58333333333333337 0.58333333333333337;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  0.41666666666666674 0.58333333333333337;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "enemy_rig_v05_low_mouth_ctrl_rotateY";
	rename -uid "24F5EB3D-49EF-0576-0ADF-188A1112C93E";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 30 0 35 0;
	setAttr -s 5 ".kit[3:4]"  1 1;
	setAttr -s 5 ".kot[3:4]"  1 1;
	setAttr -s 5 ".kix[3:4]"  0.58333333333333337 0.58333333333333337;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  0.41666666666666674 0.58333333333333337;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "enemy_rig_v05_low_mouth_ctrl_rotateZ";
	rename -uid "6D4BC852-47BD-AB1D-54FD-2D9846F93D29";
	setAttr ".tan" 9;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 0 20 41.602824002709013 25 41.602824002709013
		 30 0 35 0;
	setAttr -s 6 ".kit[3:5]"  1 1 1;
	setAttr -s 6 ".kot[3:5]"  1 1 1;
	setAttr -s 6 ".kix[3:5]"  0.20833333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 6 ".kiy[3:5]"  0 0.53502566303420951 0;
	setAttr -s 6 ".kox[3:5]"  0.20833333333333337 0.20833333333333337 
		0.58333333333333337;
	setAttr -s 6 ".koy[3:5]"  0 0.19108059394078913 0;
createNode animCurveTA -n "enemy_rig_v05_up_mouth_ctrl_rotateX";
	rename -uid "3E4381F4-4333-00FA-DF80-59B927944311";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 30 0 35 0;
	setAttr -s 5 ".kit[3:4]"  1 1;
	setAttr -s 5 ".kot[3:4]"  1 1;
	setAttr -s 5 ".kix[3:4]"  0.58333333333333337 0.58333333333333337;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  0.41666666666666674 0.58333333333333337;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "enemy_rig_v05_up_mouth_ctrl_rotateY";
	rename -uid "CC9C1E17-4D3C-7AB3-4AA5-EC988DBA3F1F";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 30 0 35 0;
	setAttr -s 5 ".kit[3:4]"  1 1;
	setAttr -s 5 ".kot[3:4]"  1 1;
	setAttr -s 5 ".kix[3:4]"  0.58333333333333337 0.58333333333333337;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  0.41666666666666674 0.58333333333333337;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "enemy_rig_v05_up_mouth_ctrl_rotateZ";
	rename -uid "F238DB45-4F4E-3B2E-AE13-3393FBCD8B2C";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 -37.17044667853942 30 0 35 0;
	setAttr -s 5 ".kit[3:4]"  1 1;
	setAttr -s 5 ".kot[3:4]"  1 1;
	setAttr -s 5 ".kix[3:4]"  0.58333333333333337 0.58333333333333337;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  0.41666666666666674 0.58333333333333337;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "enemy_rig_v05_C_spine01_ctrl_rotateX";
	rename -uid "7B47E25E-4B92-0AA5-CA2D-F5B16E26604D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_C_spine01_ctrl_rotateY";
	rename -uid "E0DB5C42-41B1-9BD5-D3A8-C0BF7045BA91";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_C_spine01_ctrl_rotateZ";
	rename -uid "4669AEBE-40F0-B1D2-067C-04A66EFFA498";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 -16.785710047610152 30 1.88366210863007
		 35 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  0.58333333333333337;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  0.58333333333333337;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "enemy_rig_v05_C_spine02_ctrl_rotateX";
	rename -uid "390CD893-41D2-E8EF-57EB-7AB52551857E";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_C_spine02_ctrl_rotateY";
	rename -uid "845E7955-4FAE-1B32-4905-528199F2E2F5";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_C_spine02_ctrl_rotateZ";
	rename -uid "010C607F-47FB-2A47-502E-0B90768E2D71";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 7.075709890478854 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0.12349443450478338;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0.12349443450478338;
createNode animCurveTA -n "enemy_rig_v05_C_spine03_ctrl_rotateX";
	rename -uid "4945A174-473E-B77C-D61B-43AB57FDD283";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 -5.1733652658256375 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  -0.090292257296969061;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  -0.090292257296969061;
createNode animCurveTA -n "enemy_rig_v05_C_spine03_ctrl_rotateY";
	rename -uid "8161B213-42C0-83A2-5E1D-B187CF0F0E38";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 -6.8821393007397074 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  -0.12011599037880812;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  -0.12011599037880812;
createNode animCurveTA -n "enemy_rig_v05_C_spine03_ctrl_rotateZ";
	rename -uid "9211E134-48E7-D50D-E79B-B98BDD1E6FA7";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 16.79791873696994 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0.29317898944257281;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0.29317898944257281;
createNode animCurveTA -n "enemy_rig_v05_C_spine04_ctrl_rotateX";
	rename -uid "B76994D9-4517-C49E-A3C8-738107FD9C3B";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_C_spine04_ctrl_rotateY";
	rename -uid "FF8800BD-428E-1CD5-7188-C5893DFC3EC7";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_C_spine04_ctrl_rotateZ";
	rename -uid "0E553549-45A5-4FB0-0DE3-4DB78CF53804";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_low_paw01_ctrl_rotateX";
	rename -uid "C148D317-440F-844D-1770-02A97D978034";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_low_paw01_ctrl_rotateY";
	rename -uid "ED139110-411D-2DF7-32FD-01AF4866DB01";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_low_paw01_ctrl_rotateZ";
	rename -uid "D6A270BA-4A98-61C1-41BD-5394BF3A80D1";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_low_paw02_ctrl_rotateX";
	rename -uid "40E09FA3-470A-12C1-5AE7-9B953B952959";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_low_paw02_ctrl_rotateY";
	rename -uid "81C939E1-42A2-B0C4-8B5D-C08D3ABB18FF";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_low_paw02_ctrl_rotateZ";
	rename -uid "BCB9057A-4325-31D4-AE89-CEBA70C51E8B";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_low_paw03_ctrl_rotateX";
	rename -uid "14AA7D90-4651-FCEF-5E02-099DC52B686D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_low_paw03_ctrl_rotateY";
	rename -uid "D95FAD67-4F9B-BB82-7D8E-1EAB3D34EC1A";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_low_paw03_ctrl_rotateZ";
	rename -uid "1E1CB2EB-4E6A-40FC-BA68-D996FC3AE21D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_low_paw01_ctrl_rotateX";
	rename -uid "293A3D96-40D6-C6AF-1162-BDAA41B3FDA1";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_low_paw01_ctrl_rotateY";
	rename -uid "17C60181-45F2-A721-082C-8287C0C43996";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_low_paw01_ctrl_rotateZ";
	rename -uid "C639B2C5-430E-A35E-FD0E-30B678E06959";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_low_paw02_ctrl_rotateX";
	rename -uid "0A3B155D-45A1-320C-6F50-FA8F985B7B87";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_low_paw02_ctrl_rotateY";
	rename -uid "23FEF914-4BE1-C46C-F77A-F299DBDE7DE9";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_low_paw02_ctrl_rotateZ";
	rename -uid "45E6151F-4356-6487-A171-B3A118DFCDB7";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_low_paw03_ctrl_rotateX";
	rename -uid "6E6666CE-47D3-F913-65AA-719FED42D874";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_low_paw03_ctrl_rotateY";
	rename -uid "FC3ABC15-4D53-6C29-BB3B-B5899175044C";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_low_paw03_ctrl_rotateZ";
	rename -uid "2C73248A-40F2-8823-D5F1-E9B7CD34478F";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_mid_paw01_ctrl_rotateX";
	rename -uid "63E6FA80-4060-02EF-1E72-DCADA4B1FD01";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_mid_paw01_ctrl_rotateY";
	rename -uid "09792E8C-4681-CC80-EAD4-2CA59CA657C6";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_mid_paw01_ctrl_rotateZ";
	rename -uid "FC52978E-4A65-7655-2399-6BA5D5C651D9";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_mid_paw02_ctrl_rotateX";
	rename -uid "E8199C3C-43C2-FCDB-669B-F6BEE6C8D29B";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_mid_paw02_ctrl_rotateY";
	rename -uid "DB8CE255-4471-7B0F-1B93-04AC8D94CE1D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_mid_paw02_ctrl_rotateZ";
	rename -uid "261BA4EC-4A8F-700E-F672-E3A9EA8AD549";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_mid_paw03_ctrl_rotateX";
	rename -uid "92040E25-433E-960A-E806-2281047B4884";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_mid_paw03_ctrl_rotateY";
	rename -uid "6D27C5BC-43B1-1B85-9371-73B8C17F59F0";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_mid_paw03_ctrl_rotateZ";
	rename -uid "C50E1EC7-4B95-0765-3E2F-85B74C2FA0E4";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_mid_paw01_ctrl_rotateX";
	rename -uid "E2D402B2-4E56-CCBA-898E-48862CA19D15";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_mid_paw01_ctrl_rotateY";
	rename -uid "E7B20DE3-4550-7F67-80AB-A4929F102DF7";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_mid_paw01_ctrl_rotateZ";
	rename -uid "CA7620CC-469B-30DF-DF3B-C19A81E70977";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_mid_paw02_ctrl_rotateX";
	rename -uid "3E64DB50-4485-CCC7-DCF9-339A5A2CF9A5";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_mid_paw02_ctrl_rotateY";
	rename -uid "538DDDC2-49F2-82E1-A8F8-09915E1DA4BA";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_mid_paw02_ctrl_rotateZ";
	rename -uid "EBE4059F-4FA1-C7BA-901B-08891EA6615C";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_mid_paw03_ctrl_rotateX";
	rename -uid "FCAF66AD-47FD-F974-7BF5-F4830AA79BD6";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_mid_paw03_ctrl_rotateY";
	rename -uid "6A9CFF26-4E18-CBA0-3213-49B6259B8EBC";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_mid_paw03_ctrl_rotateZ";
	rename -uid "74F18271-4470-A28D-8267-99A5BE0253B6";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_up_paw01_ctrl_rotateX";
	rename -uid "841F26C2-4F65-E89B-3A93-5DB5AA2FA692";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_up_paw01_ctrl_rotateY";
	rename -uid "71274002-448E-D565-68C0-83AB1AD6D2C8";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_up_paw01_ctrl_rotateZ";
	rename -uid "8D80C2DB-4C69-2665-08F2-F3BE64C95108";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_up_paw02_ctrl_rotateX";
	rename -uid "C91D5897-408F-763F-90D6-5B9C6E59D97F";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_up_paw02_ctrl_rotateY";
	rename -uid "6F353FBA-494C-1521-D849-86BE9F38D9D5";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_up_paw02_ctrl_rotateZ";
	rename -uid "19EB49B1-418E-6AB0-EEBC-03985AC216F3";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_up_paw03_ctrl_rotateX";
	rename -uid "FA292372-4CD8-0F08-BECA-B09AE38D7AC9";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_up_paw03_ctrl_rotateY";
	rename -uid "CC06DF80-4D5E-E321-E896-CB97F7EB12E6";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_up_paw03_ctrl_rotateZ";
	rename -uid "94CC4481-4C4D-F39A-2C1C-0CB9C2F46111";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_up_paw01_ctrl_rotateX";
	rename -uid "32FFDD17-4E15-3BAE-D263-0AA3D76ABF05";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_up_paw01_ctrl_rotateY";
	rename -uid "6354C693-48E9-5B32-B950-72826DC7B6E4";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_up_paw01_ctrl_rotateZ";
	rename -uid "E227E346-40CA-D6B8-8E50-A0A6EC7A1AD3";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_up_paw02_ctrl_rotateX";
	rename -uid "536C971B-44B6-F6EE-91AC-5990613B6C25";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_up_paw02_ctrl_rotateY";
	rename -uid "1590ECFC-4B35-5937-95EA-B386F0A37FF3";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_up_paw02_ctrl_rotateZ";
	rename -uid "00095CF2-4403-92CC-8900-858EA9886F97";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_up_paw03_ctrl_rotateX";
	rename -uid "C346860F-4852-FBC9-8129-B5A2EAA55D23";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_up_paw03_ctrl_rotateY";
	rename -uid "4710C978-47DD-B4CF-99B9-E7A7B7302A3D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_up_paw03_ctrl_rotateZ";
	rename -uid "A847ECA7-44E9-4C80-7837-36BD47FE9DA9";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_mainwing_ctrl_rotateX";
	rename -uid "F85BBC4E-4C37-398D-3073-A9970AB46FDB";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 30 33.100198413797891 35 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  0.58333333333333337;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  0.58333333333333337;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_mainwing_ctrl_rotateY";
	rename -uid "7B613185-4563-F9C6-B27E-A49B1C5E6326";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 45.308159272718385 15 0 25 -69.853747686532742
		 30 52.405775508717014 35 45.308159272718385;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  0.58333333333333337;
	setAttr -s 5 ".kiy[4]"  -0.79077655732693519;
	setAttr -s 5 ".kox[4]"  0.58333333333333337;
	setAttr -s 5 ".koy[4]"  -0.79077655732693519;
createNode animCurveTA -n "enemy_rig_v05_L_mainwing_ctrl_rotateZ";
	rename -uid "307AF92C-4C32-880A-0255-87BEDED5505C";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 30 39.445401091648655 35 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  0.58333333333333337;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  0.58333333333333337;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_low_midwing_ctrl_rotateX";
	rename -uid "DED7B52F-4EE0-E8FB-6947-B19E547B0871";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_low_midwing_ctrl_rotateY";
	rename -uid "69C117B0-439B-EE58-37E6-21B32375FBDC";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_low_midwing_ctrl_rotateZ";
	rename -uid "AA70045F-4969-3391-95AE-A6AC32ECC8D7";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_low_endwing_ctrl_rotateX";
	rename -uid "15FE9509-4E9A-550F-FE70-158445B3FF69";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_low_endwing_ctrl_rotateY";
	rename -uid "5A7026D5-4DBE-3886-D994-AFB625C9701C";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_low_endwing_ctrl_rotateZ";
	rename -uid "0AB88947-4ABC-1F12-BD9A-B6AF6CC56037";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_up_midwing_ctrl_rotateX";
	rename -uid "7C12C528-424A-F034-72D0-DEAB20F36275";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_up_midwing_ctrl_rotateY";
	rename -uid "5A0B513D-4E3F-4CC4-8311-EBB01BDF05C2";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_up_midwing_ctrl_rotateZ";
	rename -uid "619F6F8D-4990-DF2C-42CC-3F8B59495ECC";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_up_endwing_ctrl_rotateX";
	rename -uid "26BD28AE-4761-2B26-2924-3CA49306A727";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_up_endwing_ctrl_rotateY";
	rename -uid "F120B6FE-455E-17AB-51C3-0E81DE1C25FE";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_L_up_endwing_ctrl_rotateZ";
	rename -uid "4CA74E83-4C38-E535-B09D-14AA0178F8F8";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_mainwing_ctrl_rotateX";
	rename -uid "1BB06E5F-42C9-D751-EF45-50AC4C70A4FC";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 30 33.100198413797891 35 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  0.58333333333333337;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  0.58333333333333337;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_mainwing_ctrl_rotateY";
	rename -uid "3BA05DA3-42EA-02A0-AF24-049ECF0B2AB2";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 45.308159272718385 15 0 25 -69.853747686532742
		 30 52.405775508717014 35 45.308159272718385;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  0.58333333333333337;
	setAttr -s 5 ".kiy[4]"  -0.79077655732693519;
	setAttr -s 5 ".kox[4]"  0.58333333333333337;
	setAttr -s 5 ".koy[4]"  -0.79077655732693519;
createNode animCurveTA -n "enemy_rig_v05_R_mainwing_ctrl_rotateZ";
	rename -uid "B27DBD63-440E-5858-2227-C8A67FFE0CED";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 30 39.445401091648655 35 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  0.58333333333333337;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  0.58333333333333337;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_low_midwing_ctrl_rotateX";
	rename -uid "0CD85B00-4214-B781-B267-CD90F17D4016";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_low_midwing_ctrl_rotateY";
	rename -uid "194F2738-4BE2-87A9-57DF-919ED45A14F7";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_low_midwing_ctrl_rotateZ";
	rename -uid "19C0EDB0-4BDE-34EB-9DF6-ACB21BA5674F";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_low_endwing_ctrl_rotateX";
	rename -uid "0F1DEB54-4D53-0793-91E1-4FB894E5790D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_low_endwing_ctrl_rotateY";
	rename -uid "2174774C-4346-C8D9-5EB8-77B5BE732A0A";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_low_endwing_ctrl_rotateZ";
	rename -uid "A00E6AA4-405A-D76C-EF5A-D887535C7B73";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_up_midwing_ctrl_rotateX";
	rename -uid "484A4B16-45AE-A201-D34D-56B6C43532F5";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_up_midwing_ctrl_rotateY";
	rename -uid "A5958EC8-4C52-1D40-24B7-388FEEB87872";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_up_midwing_ctrl_rotateZ";
	rename -uid "93AACC36-4351-937C-EACB-AB88B3AA6C95";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_up_endwing_ctrl_rotateX";
	rename -uid "A585944D-47B5-FD3D-5032-DEB5E3742340";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_up_endwing_ctrl_rotateY";
	rename -uid "F8244CB7-4450-2D6C-1237-68A3492A56F7";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "enemy_rig_v05_R_up_endwing_ctrl_rotateZ";
	rename -uid "12F69882-4AE6-9DFA-2CC1-B9B9FAAEC08B";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna03_ctrl_visibility";
	rename -uid "C496974E-469E-2DB8-2C62-2D89A068D3FF";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_antenna03_ctrl_translateX";
	rename -uid "09638CE6-4ECB-5816-55B9-2498253D5E72";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_antenna03_ctrl_translateY";
	rename -uid "A1B52E10-4D37-CABB-4526-F485F2279F7B";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_antenna03_ctrl_translateZ";
	rename -uid "E52DC5B3-4971-AE4E-6D9E-59B138AC2461";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna03_ctrl_scaleX";
	rename -uid "6077ACEF-4025-8031-B850-508E3C298476";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna03_ctrl_scaleY";
	rename -uid "36F4D161-4B64-D15E-5686-5CA48328134D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999967 15 0.99999999999999967
		 25 0.99999999999999967 35 0.99999999999999967;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna03_ctrl_scaleZ";
	rename -uid "6FE4E043-4DAD-30FA-9E7A-BABF9DFFED8D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw01_ctrl_visibility";
	rename -uid "225694EF-4E51-0205-71B8-D2B113406309";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_up_paw01_ctrl_translateX";
	rename -uid "CBC1E226-4865-1069-955A-0DA5F3C3FC8D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_up_paw01_ctrl_translateY";
	rename -uid "3EF04462-41DE-36E7-7279-9B9C43DFE1A8";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_up_paw01_ctrl_translateZ";
	rename -uid "85E40466-4166-6177-1114-7FAA29F5954B";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw01_ctrl_scaleX";
	rename -uid "F02B8FD7-4E16-F489-D768-E7A0178A8CA3";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw01_ctrl_scaleY";
	rename -uid "DE0D3E12-4D95-847D-86B0-27AE36C2F8CC";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw01_ctrl_scaleZ";
	rename -uid "E9167A6A-47D4-DA1F-4EF6-B68FE2BD94C0";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_neck_ctrl_visibility";
	rename -uid "89FF2BD0-42BB-674D-58B0-91935622F5B9";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_C_neck_ctrl_translateX";
	rename -uid "52E5FFCF-4563-6CEB-E9CB-349A5EA725B5";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_C_neck_ctrl_translateY";
	rename -uid "EDD6F057-4853-3A20-EC46-F581F2053164";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_C_neck_ctrl_translateZ";
	rename -uid "1DF3C618-4CB3-5787-E273-E9AF89A88E09";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_neck_ctrl_scaleX";
	rename -uid "2AFA95D9-4825-CC39-A547-1D80943A1779";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_neck_ctrl_scaleY";
	rename -uid "0AE98EB0-4381-399B-ECF7-2490848D92AF";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_neck_ctrl_scaleZ";
	rename -uid "E356DAB4-48E5-9FB9-A8F3-929763705B52";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw02_ctrl_visibility";
	rename -uid "A00C5690-450E-AD09-6BA9-E9BC6E8A107E";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_up_paw02_ctrl_translateX";
	rename -uid "25E9DBE5-4224-033B-1EE9-A7B36F3E6859";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_up_paw02_ctrl_translateY";
	rename -uid "A53C1763-449B-B658-077E-09A3B5F2E1EC";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_up_paw02_ctrl_translateZ";
	rename -uid "4028E2E2-4047-F608-05D5-568808C1D92D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw02_ctrl_scaleX";
	rename -uid "B853B18D-47E6-AB09-88A1-3F943A25B7F9";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw02_ctrl_scaleY";
	rename -uid "43DF0CF0-40C6-548E-F5F1-7D93086EE1A6";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw02_ctrl_scaleZ";
	rename -uid "9CA808BE-4C83-238C-D52B-A5A3B3AB051D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw01_ctrl_visibility";
	rename -uid "DE24EBDA-4542-9410-4265-CB80E9518407";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_up_paw01_ctrl_translateX";
	rename -uid "533F6577-4977-2288-F8AA-D5A61B9B473B";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_up_paw01_ctrl_translateY";
	rename -uid "3C643CEA-46CD-2830-00AB-9CBD07EA8AA0";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_up_paw01_ctrl_translateZ";
	rename -uid "06078F76-4EC7-C6D1-9B81-87A5E90400B7";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw01_ctrl_scaleX";
	rename -uid "69EEB69F-48C4-EF28-A290-44AB23D657FD";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999967 15 0.99999999999999967
		 25 0.99999999999999967 35 0.99999999999999967;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw01_ctrl_scaleY";
	rename -uid "4D5CB43D-4973-4AA1-DE1A-4BB780A61A06";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw01_ctrl_scaleZ";
	rename -uid "3170F1DB-46B2-0BC8-4723-3CA1BB599DC0";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_low_midwing_ctrl_visibility";
	rename -uid "03BB920C-4B61-FDEA-E591-8298A8CBD0CE";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_low_midwing_ctrl_translateX";
	rename -uid "3D7EB98C-46D1-32E6-6872-30910C87C9E5";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_low_midwing_ctrl_translateY";
	rename -uid "E15ECFC0-4451-C960-5306-48A7646876D4";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_low_midwing_ctrl_translateZ";
	rename -uid "433AF633-4D4B-788C-7C43-488FE75E18B8";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_low_midwing_ctrl_scaleX";
	rename -uid "03BE26B3-4733-A0C4-A3B8-34AD2F30E9E4";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_low_midwing_ctrl_scaleY";
	rename -uid "21B97F95-4D6F-51EB-953F-56B24D1EE990";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_low_midwing_ctrl_scaleZ";
	rename -uid "AAECD73A-4FD3-F561-4823-8CA34C1D83CD";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw03_ctrl_visibility";
	rename -uid "FA049D95-4A27-C9E8-4DB5-338D0ADF495B";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_mid_paw03_ctrl_translateX";
	rename -uid "020F0BB7-4932-7C24-71F3-A08F0D0E01E6";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_mid_paw03_ctrl_translateY";
	rename -uid "435BDD7A-4C0E-FB21-F8E7-1284272130EF";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_mid_paw03_ctrl_translateZ";
	rename -uid "966A63B0-41DF-7619-C845-1A981EB32032";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw03_ctrl_scaleX";
	rename -uid "4A38AD7E-4A2E-6D24-5332-2A837A74A2FA";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw03_ctrl_scaleY";
	rename -uid "54484A1F-4C95-90B7-EDEF-19989DA69EF0";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw03_ctrl_scaleZ";
	rename -uid "77134645-4FD2-95A9-33F6-15BE59D5697A";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw02_ctrl_visibility";
	rename -uid "B7C672EA-4C7D-7214-AC93-D9BC5E1BB077";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_mid_paw02_ctrl_translateX";
	rename -uid "6FEB6421-40EF-EE12-FDE4-EB96FBABCC41";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_mid_paw02_ctrl_translateY";
	rename -uid "B3A17E11-4B62-969C-DE5D-5A9BB945ADD5";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_mid_paw02_ctrl_translateZ";
	rename -uid "297FC7AE-4DBC-2339-4701-2E9E62F6F0C3";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw02_ctrl_scaleX";
	rename -uid "234D0BF0-40D0-D82F-58EB-7AA194391E06";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw02_ctrl_scaleY";
	rename -uid "BF1A0AE1-4832-8B58-DC0F-EF884510F51F";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw02_ctrl_scaleZ";
	rename -uid "4181211D-470C-95B6-248E-758B336D010A";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_up_endwing_ctrl_visibility";
	rename -uid "DA09AFD6-482F-F4A3-64E2-498B25B2D863";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_up_endwing_ctrl_translateX";
	rename -uid "37B93EFE-4811-64AC-E4D3-629BBDC9FCE5";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_up_endwing_ctrl_translateY";
	rename -uid "984F5DB7-4F3E-762D-6D39-9E980E8BAEB0";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_up_endwing_ctrl_translateZ";
	rename -uid "37C80BF8-46A0-FB7D-9EC7-D78FC3883AB4";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_up_endwing_ctrl_scaleX";
	rename -uid "3D28CB54-4445-4D98-25C2-C888E73D0BE5";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_up_endwing_ctrl_scaleY";
	rename -uid "CE8B3062-4A23-6D9F-EF44-6495C7470342";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_up_endwing_ctrl_scaleZ";
	rename -uid "43DB3E23-4DB1-9692-4A59-00A19EFC1781";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_low_endwing_ctrl_visibility";
	rename -uid "1F13653B-425B-71D6-7F33-BBB4B43177E7";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_low_endwing_ctrl_translateX";
	rename -uid "F889EF0B-4127-405F-192D-A183FA8771D3";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_low_endwing_ctrl_translateY";
	rename -uid "E2442A2B-4058-7A11-A4EE-0EA1BC4E18ED";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_low_endwing_ctrl_translateZ";
	rename -uid "3ACEA84B-46F8-538B-44C2-7189239701D5";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_low_endwing_ctrl_scaleX";
	rename -uid "B6438353-4777-5BE2-68D5-EC8685D00B7D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_low_endwing_ctrl_scaleY";
	rename -uid "9E250DF8-4F4B-A611-F3A5-9DAF97AB1637";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_low_endwing_ctrl_scaleZ";
	rename -uid "E7EBAF1C-44AA-3871-1037-E1AB7A25508B";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw01_ctrl_visibility";
	rename -uid "22B5BE5F-44AF-A747-D8B7-EF846AA42D81";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_low_paw01_ctrl_translateX";
	rename -uid "CDEB145F-4D43-AD73-A303-63BC9DB18BCF";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_low_paw01_ctrl_translateY";
	rename -uid "6D68F016-4E62-517E-F998-529E2D6EA4AE";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_low_paw01_ctrl_translateZ";
	rename -uid "B0AB8AEE-4054-14D0-4869-619E5E4BA01C";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw01_ctrl_scaleX";
	rename -uid "CBD049E3-4217-98E4-42AB-6C8682484267";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw01_ctrl_scaleY";
	rename -uid "DB02DF95-44BE-8F8B-A6A8-5DB40BED6048";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw01_ctrl_scaleZ";
	rename -uid "C0D3E0EE-4193-6C6A-1467-1BB66F1FB187";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_up_mouth_ctrl_visibility";
	rename -uid "266436F6-42C2-6201-68F8-869E0D2D1C53";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 30 1 35 1;
	setAttr -s 5 ".kit[0:4]"  9 9 9 1 1;
	setAttr -s 5 ".kix[3:4]"  0.58333333333333337 0.58333333333333337;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTL -n "enemy_rig_v05_up_mouth_ctrl_translateX";
	rename -uid "A3848A72-4EE4-FFE6-6420-9E88DDAD18E7";
	setAttr ".tan" 9;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 0 20 -0.74355469742735336 25 -1.0209299760612141
		 30 0 35 0;
	setAttr -s 6 ".kit[3:5]"  1 1 1;
	setAttr -s 6 ".kot[3:5]"  1 1 1;
	setAttr -s 6 ".kix[3:5]"  0.20833333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 6 ".kiy[3:5]"  0 -0.54788240863068138 0;
	setAttr -s 6 ".kox[3:5]"  0.20833333333333337 0.20833333333333337 
		0.58333333333333337;
	setAttr -s 6 ".koy[3:5]"  0 -0.19567228879667195 0;
createNode animCurveTL -n "enemy_rig_v05_up_mouth_ctrl_translateY";
	rename -uid "740F3814-4226-299B-5F06-BEA01442A62E";
	setAttr ".tan" 9;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 0 20 -0.52477872948653603 25 -0.41122471129248589
		 30 0 35 0;
	setAttr -s 6 ".kit[3:5]"  1 1 1;
	setAttr -s 6 ".kot[3:5]"  1 1 1;
	setAttr -s 6 ".kix[3:5]"  0.20833333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 6 ".kiy[3:5]"  0 -0.38667906383218442 0;
	setAttr -s 6 ".kox[3:5]"  0.20833333333333337 0.20833333333333337 
		0.58333333333333337;
	setAttr -s 6 ".koy[3:5]"  0 -0.13809966565435158 0;
createNode animCurveTL -n "enemy_rig_v05_up_mouth_ctrl_translateZ";
	rename -uid "0DC5066E-4A24-78FE-35E3-78832AECAB6B";
	setAttr ".tan" 9;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 0 20 -0.13134377875520442 25 -0.13134377875520442
		 30 0 35 0;
	setAttr -s 6 ".kit[3:5]"  1 1 1;
	setAttr -s 6 ".kot[3:5]"  1 1 1;
	setAttr -s 6 ".kix[3:5]"  0.20833333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 6 ".kiy[3:5]"  0 -0.096779626451203249 0;
	setAttr -s 6 ".kox[3:5]"  0.20833333333333337 0.20833333333333337 
		0.58333333333333337;
	setAttr -s 6 ".koy[3:5]"  0 -0.034564152304001165 0;
createNode animCurveTU -n "enemy_rig_v05_up_mouth_ctrl_scaleX";
	rename -uid "15D67623-43F1-DD5E-78E1-A1801E095104";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 30 1 35 1;
	setAttr -s 5 ".kit[3:4]"  1 1;
	setAttr -s 5 ".kot[3:4]"  1 1;
	setAttr -s 5 ".kix[3:4]"  0.58333333333333337 0.58333333333333337;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  0.41666666666666674 0.58333333333333337;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "enemy_rig_v05_up_mouth_ctrl_scaleY";
	rename -uid "FCC77A6B-412E-8596-D1A1-F8AC80683ED8";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 30 1 35 1;
	setAttr -s 5 ".kit[3:4]"  1 1;
	setAttr -s 5 ".kot[3:4]"  1 1;
	setAttr -s 5 ".kix[3:4]"  0.58333333333333337 0.58333333333333337;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  0.41666666666666674 0.58333333333333337;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "enemy_rig_v05_up_mouth_ctrl_scaleZ";
	rename -uid "12A6A862-499A-E710-C312-189A99343DDF";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 30 1 35 1;
	setAttr -s 5 ".kit[3:4]"  1 1;
	setAttr -s 5 ".kot[3:4]"  1 1;
	setAttr -s 5 ".kix[3:4]"  0.58333333333333337 0.58333333333333337;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  0.41666666666666674 0.58333333333333337;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "enemy_rig_v05_R_low_midwing_ctrl_visibility";
	rename -uid "EB62017C-44C9-4AC2-9A89-F9ABBB083CE4";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_low_midwing_ctrl_translateX";
	rename -uid "ED6D3867-4F32-C6F5-BB09-6F8AF2991637";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_low_midwing_ctrl_translateY";
	rename -uid "204A2486-4BE3-1C5E-F379-9FB4DB35648C";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_low_midwing_ctrl_translateZ";
	rename -uid "923F57EB-433B-0EF7-9E75-6297FF7E36E8";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_low_midwing_ctrl_scaleX";
	rename -uid "FA85A2B0-4BD4-A767-487F-76896EAD60CC";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_low_midwing_ctrl_scaleY";
	rename -uid "947A1BFF-4634-2A1C-E38F-41B55E080C88";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_low_midwing_ctrl_scaleZ";
	rename -uid "3E682594-4EFD-74D7-DF8E-14BC65E09FD1";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw03_ctrl_visibility";
	rename -uid "FFC9772B-4066-CCDA-7E10-4BBF35AC26D2";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_low_paw03_ctrl_translateX";
	rename -uid "BA68C051-4360-38CB-AAFB-4EBB13AFBEAE";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_low_paw03_ctrl_translateY";
	rename -uid "9E508535-47BE-B506-5D41-6A8323FDC9BD";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_low_paw03_ctrl_translateZ";
	rename -uid "D4D5030A-4BEE-7978-339C-D0B50520BF85";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw03_ctrl_scaleX";
	rename -uid "C83EF449-4D7B-7925-DBCD-88B21FA825E3";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw03_ctrl_scaleY";
	rename -uid "8BF13C4E-49A9-654C-5C9D-ADA6F3BFF65A";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw03_ctrl_scaleZ";
	rename -uid "13836792-49D0-8E5E-BA51-029C091342E4";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_mainwing_ctrl_visibility";
	rename -uid "95273729-4E1D-BB21-B050-57B74992BAD1";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_mainwing_ctrl_translateX";
	rename -uid "E7F2831B-4D24-337E-46CC-9882311828BD";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_mainwing_ctrl_translateY";
	rename -uid "965B099C-4B66-4DCC-0E26-EEB9CEA1AD3E";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_mainwing_ctrl_translateZ";
	rename -uid "994A9332-4270-B601-CEA8-6481ED4B7062";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_mainwing_ctrl_scaleX";
	rename -uid "443A8A5B-48AA-61F3-54EC-F1A199E83B5C";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_mainwing_ctrl_scaleY";
	rename -uid "27840046-4EE2-F83C-E1BD-EA8E7F5BAD46";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_mainwing_ctrl_scaleZ";
	rename -uid "F8CCD789-4F44-B0CA-4DD9-4AAB1842192D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw02_ctrl_visibility";
	rename -uid "44E35FAD-4801-466A-964F-52A6471EF9FB";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_low_paw02_ctrl_translateX";
	rename -uid "FD0F24CD-485B-58A1-2902-B6A36269C220";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_low_paw02_ctrl_translateY";
	rename -uid "D0E30AB5-4904-0742-4F08-45A52E288719";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_low_paw02_ctrl_translateZ";
	rename -uid "1131E998-4EC5-BCBC-6F0A-69B48ECD32C9";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw02_ctrl_scaleX";
	rename -uid "0D555A4E-458E-8D55-30D6-328510E9C788";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw02_ctrl_scaleY";
	rename -uid "58C457AA-4A1C-49C7-9A10-6EB5356F88C2";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.0000000000000004 15 1.0000000000000004
		 25 1.0000000000000004 35 1.0000000000000004;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw02_ctrl_scaleZ";
	rename -uid "974706EB-4692-C3C3-C903-F3AA6DA40398";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999933 15 0.99999999999999933
		 25 0.99999999999999933 35 0.99999999999999933;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_low_mouth_ctrl_visibility";
	rename -uid "48649A72-44F3-995F-DFF5-6081DA5C3178";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 30 1 35 1;
	setAttr -s 5 ".kit[0:4]"  9 9 9 1 1;
	setAttr -s 5 ".kix[3:4]"  0.58333333333333337 0.58333333333333337;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTL -n "enemy_rig_v05_low_mouth_ctrl_translateX";
	rename -uid "1CB97D0F-4CC6-5B6F-2B56-10B710DD9147";
	setAttr ".tan" 9;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 0 20 0.05439922224291073 25 0.05439922224291073
		 30 0 35 0;
	setAttr -s 6 ".kit[3:5]"  1 1 1;
	setAttr -s 6 ".kot[3:5]"  1 1 1;
	setAttr -s 6 ".kix[3:5]"  0.20833333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 6 ".kiy[3:5]"  0 0.04008363744214475 0;
	setAttr -s 6 ".kox[3:5]"  0.20833333333333337 0.20833333333333337 
		0.58333333333333337;
	setAttr -s 6 ".koy[3:5]"  0 0.014315584800765982 0;
createNode animCurveTL -n "enemy_rig_v05_low_mouth_ctrl_translateY";
	rename -uid "CB6F7610-4F43-6F30-31DA-7290DB882825";
	setAttr ".tan" 9;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 0 20 -0.72930320568920948 25 -0.72930320568920948
		 30 0 35 0;
	setAttr -s 6 ".kit[3:5]"  1 1 1;
	setAttr -s 6 ".kot[3:5]"  1 1 1;
	setAttr -s 6 ".kix[3:5]"  0.20833333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 6 ".kiy[3:5]"  0 -0.5373813094552069 0;
	setAttr -s 6 ".kox[3:5]"  0.20833333333333337 0.20833333333333337 
		0.58333333333333337;
	setAttr -s 6 ".koy[3:5]"  0 -0.19192189623400249 0;
createNode animCurveTL -n "enemy_rig_v05_low_mouth_ctrl_translateZ";
	rename -uid "EEDB1EF5-4B5E-2520-9CBE-E6844438E342";
	setAttr ".tan" 9;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 0 20 -0.060168729918384838 25 -0.060168729918384838
		 30 0 35 0;
	setAttr -s 6 ".kit[3:5]"  1 1 1;
	setAttr -s 6 ".kot[3:5]"  1 1 1;
	setAttr -s 6 ".kix[3:5]"  0.20833333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 6 ".kiy[3:5]"  0 -0.044334853624073037 0;
	setAttr -s 6 ".kox[3:5]"  0.20833333333333337 0.20833333333333337 
		0.58333333333333337;
	setAttr -s 6 ".koy[3:5]"  0 -0.015833876294311801 0;
createNode animCurveTU -n "enemy_rig_v05_low_mouth_ctrl_scaleX";
	rename -uid "23B34C1E-48A9-B7EB-A073-01AFB7BFFBB6";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 30 1 35 1;
	setAttr -s 5 ".kit[3:4]"  1 1;
	setAttr -s 5 ".kot[3:4]"  1 1;
	setAttr -s 5 ".kix[3:4]"  0.58333333333333337 0.58333333333333337;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  0.41666666666666674 0.58333333333333337;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "enemy_rig_v05_low_mouth_ctrl_scaleY";
	rename -uid "E0A6352F-4976-0F60-AFC6-76BD6CFE79AA";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 30 1 35 1;
	setAttr -s 5 ".kit[3:4]"  1 1;
	setAttr -s 5 ".kot[3:4]"  1 1;
	setAttr -s 5 ".kix[3:4]"  0.58333333333333337 0.58333333333333337;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  0.41666666666666674 0.58333333333333337;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "enemy_rig_v05_low_mouth_ctrl_scaleZ";
	rename -uid "3716E9F1-4910-B9F2-151C-E0B30D0505A6";
	setAttr ".tan" 9;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 30 1 35 1;
	setAttr -s 5 ".kit[3:4]"  1 1;
	setAttr -s 5 ".kot[3:4]"  1 1;
	setAttr -s 5 ".kix[3:4]"  0.58333333333333337 0.58333333333333337;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  0.41666666666666674 0.58333333333333337;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "enemy_rig_v05_C_spine04_ctrl_visibility";
	rename -uid "59FC9A35-4FB1-0D4C-4B02-7DA016172653";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_C_spine04_ctrl_translateX";
	rename -uid "23EF8F5C-45D8-11D0-A943-398723F51203";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_C_spine04_ctrl_translateY";
	rename -uid "9E705BE0-423D-DDC3-FB48-EEB1E57CECA2";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_C_spine04_ctrl_translateZ";
	rename -uid "8A0DD7D9-47AE-65E2-F069-FBB115FB1136";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_spine04_ctrl_scaleX";
	rename -uid "0408AA07-44C1-69F1-EF6F-86BCB8D759EC";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_spine04_ctrl_scaleY";
	rename -uid "33B386E4-4189-5050-D961-13A14C35A227";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_spine04_ctrl_scaleZ";
	rename -uid "AD3D5DE0-40BB-39A7-A930-27B54C40C6E0";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw03_ctrl_visibility";
	rename -uid "F7100003-4603-4C2C-6AFF-3B8408EEAB76";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_up_paw03_ctrl_translateX";
	rename -uid "1F000EEC-47D5-C737-1785-BBA8B39225BA";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_up_paw03_ctrl_translateY";
	rename -uid "D3C3B19D-4707-62C0-1E94-7DB384C894B4";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_up_paw03_ctrl_translateZ";
	rename -uid "EEA51A23-4CA3-35E5-9587-9EB36F4920B8";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw03_ctrl_scaleX";
	rename -uid "5B608314-40FC-85EF-8831-44BC0887F61B";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw03_ctrl_scaleY";
	rename -uid "8B62A0F2-4380-D5A3-6578-6AA82DEBA51D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw03_ctrl_scaleZ";
	rename -uid "E18C2D97-48A4-0965-247A-A495906902C1";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw01_ctrl_visibility";
	rename -uid "AB17949C-4F98-3C4F-E12B-75A07B43ACD7";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_mid_paw01_ctrl_translateX";
	rename -uid "AD4195EF-4F14-6B95-227C-3BBE4D89DAD7";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_mid_paw01_ctrl_translateY";
	rename -uid "3716D41F-402B-6270-B2E6-5CB99C820D92";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_mid_paw01_ctrl_translateZ";
	rename -uid "627A7DF8-4B2C-D298-6A3A-7BAB1F2C9702";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw01_ctrl_scaleX";
	rename -uid "89BF7F90-4F05-BA23-5708-A08C981F1035";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw01_ctrl_scaleY";
	rename -uid "5D34D298-401C-4F45-17DF-DABDFE5AD621";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.0000000000000004 15 1.0000000000000004
		 25 1.0000000000000004 35 1.0000000000000004;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw01_ctrl_scaleZ";
	rename -uid "7242AC5F-42AF-319C-369C-34A62B7748E0";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_up_midwing_ctrl_visibility";
	rename -uid "5FFBC1B1-4594-E4F5-6075-67B3879DD068";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_up_midwing_ctrl_translateX";
	rename -uid "1C83B2D8-4D76-6395-D819-39BB4CD16C72";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_up_midwing_ctrl_translateY";
	rename -uid "7E396594-4009-5579-E732-CB9571E7EE03";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_up_midwing_ctrl_translateZ";
	rename -uid "0A132619-4E68-0C15-393D-2DACF05F4E1F";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_up_midwing_ctrl_scaleX";
	rename -uid "3810FBC4-46E6-BB81-81DE-C89C242EA443";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_up_midwing_ctrl_scaleY";
	rename -uid "17E7A00A-4697-DE67-F320-5E86FF2BAEC5";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_up_midwing_ctrl_scaleZ";
	rename -uid "EDB4E848-4038-10E1-84E8-B18B1192D6E6";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw03_ctrl_visibility";
	rename -uid "BA24EE48-42D8-36C1-1974-CDB3AA3FDF08";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_low_paw03_ctrl_translateX";
	rename -uid "A86AE398-4711-BFC0-11E1-A78A19D2CEF4";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_low_paw03_ctrl_translateY";
	rename -uid "0E63A59A-4B90-7E17-0134-0C9AD5A3D32A";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_low_paw03_ctrl_translateZ";
	rename -uid "9D191222-482C-D753-44B2-2DA4158DE630";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw03_ctrl_scaleX";
	rename -uid "E2DD6BED-4678-AF7F-2E52-A38E7FDC14D7";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.0000000000000007 15 1.0000000000000007
		 25 1.0000000000000007 35 1.0000000000000007;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw03_ctrl_scaleY";
	rename -uid "A2A87C3B-42BD-3C91-CB86-7896A6C3BEEA";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw03_ctrl_scaleZ";
	rename -uid "EE069732-4AE9-6B95-A189-A886C3B59017";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999822 15 0.99999999999999822
		 25 0.99999999999999822 35 0.99999999999999822;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_spine01_ctrl_visibility";
	rename -uid "8EF049C9-42FE-FF8C-19B2-FA97058E50B5";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_C_spine01_ctrl_translateX";
	rename -uid "8CB2DFBB-47D2-D2C1-3159-0AAFAE93BCB9";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_C_spine01_ctrl_translateY";
	rename -uid "A6AC4E70-4A1A-E359-1D5C-7688D8AA0A1D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_C_spine01_ctrl_translateZ";
	rename -uid "233F903F-4CC8-48C0-D2F3-A284D64343B6";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_spine01_ctrl_scaleX";
	rename -uid "80294594-4F8A-0385-4EEE-4E8632E1F90B";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_spine01_ctrl_scaleY";
	rename -uid "3EB5B11A-4BE9-6AA2-9EC3-298CA2BC96C9";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_spine01_ctrl_scaleZ";
	rename -uid "3F631D6E-4617-3AEC-2B69-FBB4DCC8947F";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_spine02_ctrl_visibility";
	rename -uid "3BDBEC0A-400D-ED6D-3CD5-25A83B800B7D";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_C_spine02_ctrl_translateX";
	rename -uid "9B7C82D2-479C-EA3D-9ACF-8D957CDF058C";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_C_spine02_ctrl_translateY";
	rename -uid "C0D67052-4BC9-13B7-EA26-9DAE1B5F71BF";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_C_spine02_ctrl_translateZ";
	rename -uid "192A1039-42A5-CDA5-2F3B-759C942D50D0";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_spine02_ctrl_scaleX";
	rename -uid "0E40A15C-4F11-A0BD-6648-1695BDD19FA4";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_spine02_ctrl_scaleY";
	rename -uid "E73AA7D8-47DE-323B-ADEB-B4BCC0648DD6";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_spine02_ctrl_scaleZ";
	rename -uid "9A031E3E-48A7-D376-37CE-BD960EF7372F";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_low_endwing_ctrl_visibility";
	rename -uid "183C69C6-42AD-1554-9C27-E7858FE5EA67";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_low_endwing_ctrl_translateX";
	rename -uid "4D1F5A0E-4A5F-106C-DE48-37989788460C";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_low_endwing_ctrl_translateY";
	rename -uid "BD62C23A-4FF9-3E48-1681-F78A4F4A876C";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_low_endwing_ctrl_translateZ";
	rename -uid "42B84738-4ABD-3C71-EDC8-D2BAF3E78E9C";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_low_endwing_ctrl_scaleX";
	rename -uid "50125816-4445-2D54-35DE-648F3118D64E";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_low_endwing_ctrl_scaleY";
	rename -uid "503E4A88-4665-8B14-3809-5B849EC6110E";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_low_endwing_ctrl_scaleZ";
	rename -uid "6313EF85-411A-2227-3B17-8EA2B4DF0124";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw03_ctrl_visibility";
	rename -uid "0720E6AB-4B95-EEF1-9B9B-E8BF904B966B";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_mid_paw03_ctrl_translateX";
	rename -uid "4930A880-4170-47AE-4F14-B4988855F66A";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_mid_paw03_ctrl_translateY";
	rename -uid "097741A6-4FBC-45F8-CEE5-2D9CF82B766E";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_mid_paw03_ctrl_translateZ";
	rename -uid "87704840-4D94-E0B8-B23B-D396C1A1CA70";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw03_ctrl_scaleX";
	rename -uid "01DD69EC-4375-7B57-348A-0DBD187ACAC4";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw03_ctrl_scaleY";
	rename -uid "347EF057-46B7-6487-DF24-74BF54503792";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw03_ctrl_scaleZ";
	rename -uid "1867B457-478D-BF36-1D2A-1298328410D8";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw02_ctrl_visibility";
	rename -uid "000E5A53-45BD-27FC-CAC4-2CA7C51ECB3D";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_mid_paw02_ctrl_translateX";
	rename -uid "A47AFC63-4E4D-13ED-47C6-22874103F19D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_mid_paw02_ctrl_translateY";
	rename -uid "8BF05F44-4A43-A9A4-41B3-7C8F62E54EAA";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_mid_paw02_ctrl_translateZ";
	rename -uid "B4F005E8-496D-0DEF-814D-79990E8B5FB9";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw02_ctrl_scaleX";
	rename -uid "E46D7AD0-4F6F-12E7-6D8A-3C81BC1E3C94";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw02_ctrl_scaleY";
	rename -uid "ABC9753A-4B1D-F73F-756D-9EB78EA0DCE0";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw02_ctrl_scaleZ";
	rename -uid "F6E05A8E-4285-B5FB-0C71-AEB43B183E02";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw03_ctrl_visibility";
	rename -uid "69442297-4447-B134-91BD-2F9E43953471";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_up_paw03_ctrl_translateX";
	rename -uid "F65BB7CB-4392-F544-E498-11BF46EDC5BC";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_up_paw03_ctrl_translateY";
	rename -uid "2D4B6113-43F8-A800-393A-6199E247A459";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_up_paw03_ctrl_translateZ";
	rename -uid "E0847CED-4379-241D-BA30-EFBBFC8B37F1";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw03_ctrl_scaleX";
	rename -uid "F8F3F715-4530-35E6-FDCE-08B6EBE038EC";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw03_ctrl_scaleY";
	rename -uid "001D5458-4046-55CD-7933-AE985D74FFE9";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw03_ctrl_scaleZ";
	rename -uid "50F40D4C-4BD4-8CAA-61D7-4CB99C3B5B63";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna01_ctrl_visibility";
	rename -uid "F3B4D729-4BB0-C32B-FF9D-05AB19A91A8B";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_antenna01_ctrl_translateX";
	rename -uid "341418CF-4588-D78F-D5FF-6280A391D8F8";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_antenna01_ctrl_translateY";
	rename -uid "A0657392-495E-612F-C556-329C0062CEBC";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_antenna01_ctrl_translateZ";
	rename -uid "8CAB062C-46B7-C27E-C1B0-EE9E220F9531";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna01_ctrl_scaleX";
	rename -uid "BC95B962-4921-6BD8-CBAA-C8B377FE2647";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna01_ctrl_scaleY";
	rename -uid "74DA155B-4DD4-EAC0-F909-7D8D0907C908";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna01_ctrl_scaleZ";
	rename -uid "B77FBD12-43BA-BE85-4FD4-4BB41F95DD89";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna03_ctrl_visibility";
	rename -uid "C93E6668-4E2B-3421-3A9C-AAB5D4C9FBE1";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_antenna03_ctrl_translateX";
	rename -uid "3600E0DC-4954-E05E-AAB6-C3BE3A6F49DC";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_antenna03_ctrl_translateY";
	rename -uid "6F14C777-434B-6472-51DD-E9A0B8210396";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_antenna03_ctrl_translateZ";
	rename -uid "8C5E63A0-4A3D-ED3A-959D-14BD09BA489E";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna03_ctrl_scaleX";
	rename -uid "DCE5D5CF-4C92-0BFD-03EF-8EBA792DA448";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna03_ctrl_scaleY";
	rename -uid "68416EF6-4D89-04A6-BD04-81A93746F1AB";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna03_ctrl_scaleZ";
	rename -uid "DABE1262-4B2C-6743-2B54-7FAA61617A16";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna02_ctrl_visibility";
	rename -uid "A9E64845-4133-3C02-7A25-CCAF1615587A";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_antenna02_ctrl_translateX";
	rename -uid "203CB997-460A-74DF-E063-E5917ED3C4ED";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_antenna02_ctrl_translateY";
	rename -uid "E79A53DC-4769-E4AC-5905-21B6F7701EE8";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_antenna02_ctrl_translateZ";
	rename -uid "55D4649E-4F0E-1277-E87B-688B2DA3E53D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna02_ctrl_scaleX";
	rename -uid "C9F8DA91-41D0-4E6A-D728-B9844F9D1F9A";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna02_ctrl_scaleY";
	rename -uid "CB231205-4A07-348B-6A26-0AA8EC5CDDE9";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna02_ctrl_scaleZ";
	rename -uid "42651C63-4F9D-8BE6-FF92-848A7F69E784";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_mainwing_ctrl_visibility";
	rename -uid "68063960-42A8-48EB-9D67-C3934FB20FC0";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_mainwing_ctrl_translateX";
	rename -uid "D30D6724-4B74-F578-9166-51BC2ACAFC8A";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_mainwing_ctrl_translateY";
	rename -uid "A7953B86-4FAC-FBB7-0AD7-B3AC0391277E";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_mainwing_ctrl_translateZ";
	rename -uid "4F7B1FA9-47ED-4DED-57AB-498BBB62D474";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_mainwing_ctrl_scaleX";
	rename -uid "5A3B60EA-4EB8-A0EB-0B49-9EAF1A0C52A4";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_mainwing_ctrl_scaleY";
	rename -uid "89863A20-4492-CDA2-7A74-508DCA131540";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_mainwing_ctrl_scaleZ";
	rename -uid "8F328149-4CC7-7B42-E76F-D4A80379F795";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_head_ctrl_visibility";
	rename -uid "3B865520-47C9-CD69-71C1-3F93EE7387E9";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_C_head_ctrl_translateX";
	rename -uid "8CCCDACA-4860-800A-2928-E1B34491EFAC";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_C_head_ctrl_translateY";
	rename -uid "0A7F0942-4A05-6037-882F-5498A4574AE4";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_C_head_ctrl_translateZ";
	rename -uid "8038DE68-4F6D-2FA8-E2AC-08875BBEECAB";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_head_ctrl_scaleX";
	rename -uid "EEFA5188-435E-81E5-7C2F-3BB7DEC46ABF";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_head_ctrl_scaleY";
	rename -uid "0634A9EB-404F-0DDA-DEC3-04ADB7B580F8";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_head_ctrl_scaleZ";
	rename -uid "3927D392-44A3-F121-06B4-12935704883E";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_up_endwing_ctrl_visibility";
	rename -uid "D6F9288C-41DE-E33B-3B37-B9A7F5BF989F";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_up_endwing_ctrl_translateX";
	rename -uid "CDFC3516-4245-B042-C4E0-3BBDE3900631";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_up_endwing_ctrl_translateY";
	rename -uid "91F9876B-42D8-0821-A89E-B6AB144B7E81";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_up_endwing_ctrl_translateZ";
	rename -uid "057F698C-4DE5-6975-6366-2F885E9242B5";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_up_endwing_ctrl_scaleX";
	rename -uid "B3C1673B-4984-B8F9-B16D-0E9D27BFD1F0";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_up_endwing_ctrl_scaleY";
	rename -uid "FEB81B63-4FF6-A30B-344B-149E23A8E30C";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_up_endwing_ctrl_scaleZ";
	rename -uid "5E37D9FE-46BB-A1B0-0232-3F9C8ED4B7F6";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna02_ctrl_visibility";
	rename -uid "DFC1C8FF-4A20-40AF-03F9-83B709096F30";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_antenna02_ctrl_translateX";
	rename -uid "13FC741C-4B22-8248-459B-709636981C7B";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_antenna02_ctrl_translateY";
	rename -uid "395A6C87-4860-B0CA-A1B9-9CBFB7DD2342";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_antenna02_ctrl_translateZ";
	rename -uid "5606EDCD-4F7F-2272-08DE-82B5E158E07C";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna02_ctrl_scaleX";
	rename -uid "C40B6A37-4C7B-ABC2-9D78-B7840FBDB2DD";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna02_ctrl_scaleY";
	rename -uid "CDEFF9C5-4924-3E47-AC89-F2B2D8E1D9DC";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna02_ctrl_scaleZ";
	rename -uid "CD28A64C-46CB-CAF2-B379-F68192126023";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna01_ctrl_visibility";
	rename -uid "1FD4D8B4-4E18-7A1D-8B0D-9A942140DC6A";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_antenna01_ctrl_translateX";
	rename -uid "61AACEF7-427C-D234-1F92-C08A84FE2C63";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_antenna01_ctrl_translateY";
	rename -uid "F9CA1398-48E7-9CA2-5C02-05B91F830A1C";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_antenna01_ctrl_translateZ";
	rename -uid "2EEF667A-4782-0CC2-CE50-8689395A9684";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna01_ctrl_scaleX";
	rename -uid "08EF62D0-45CD-7580-8887-039A456040BF";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna01_ctrl_scaleY";
	rename -uid "9870B205-4FF6-C9EF-0244-AD9A5ABD8FFA";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna01_ctrl_scaleZ";
	rename -uid "AA793585-44B0-EC74-237A-BBA63C348A76";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw02_ctrl_visibility";
	rename -uid "E4542FA3-4E0D-80FA-2CB9-2E8031AC3E87";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_low_paw02_ctrl_translateX";
	rename -uid "2DBA9D6E-4E79-E0DF-771F-279CB6FB73BA";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_low_paw02_ctrl_translateY";
	rename -uid "90E5DBF2-4686-0EDF-649F-3C9691B2FB65";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_low_paw02_ctrl_translateZ";
	rename -uid "714DFA02-41EE-FD0A-E8F1-9B888E24B424";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw02_ctrl_scaleX";
	rename -uid "9A5D7EC7-4FC0-BD52-566C-A6BA99628B00";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw02_ctrl_scaleY";
	rename -uid "A1AAD07D-4F64-7EE4-E4FF-4DB22E1C7276";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw02_ctrl_scaleZ";
	rename -uid "EEB13F73-4234-ED65-2014-A39064392E6F";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_spine03_ctrl_visibility";
	rename -uid "687B8A48-4B7E-0127-E53C-1895ED1DDC20";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_C_spine03_ctrl_translateX";
	rename -uid "1D412FA8-4F51-D45A-CF92-A7A843C582F1";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_C_spine03_ctrl_translateY";
	rename -uid "7FA6AE59-44B7-A815-70DF-8AB76F00241D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_C_spine03_ctrl_translateZ";
	rename -uid "F1EFC97B-47B1-0F8C-48F4-EE89B028E5A6";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_spine03_ctrl_scaleX";
	rename -uid "AAFFF27A-485B-4532-46DF-2EAED4AA51C9";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_spine03_ctrl_scaleY";
	rename -uid "7865F1A0-49A4-2A87-1E64-0DA68EC11F49";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_C_spine03_ctrl_scaleZ";
	rename -uid "8D5A463E-49B1-EA3A-C6EC-32A86C378BF0";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw01_ctrl_visibility";
	rename -uid "2A60B7DE-45DC-3957-144C-F9B63B499AF3";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_low_paw01_ctrl_translateX";
	rename -uid "62AB73BA-47E1-F534-698B-AE839F1257D5";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_low_paw01_ctrl_translateY";
	rename -uid "17F149E8-42AA-7ACE-0151-B1B8BB2C4FF8";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_low_paw01_ctrl_translateZ";
	rename -uid "AF66C754-4DEA-6A5C-50A6-B1A0AA0F9F7C";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw01_ctrl_scaleX";
	rename -uid "C87934F7-475A-F291-364D-DFB1238F80C2";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw01_ctrl_scaleY";
	rename -uid "C714FA6D-41BF-10BF-1AA4-8EBDD7E5ED9D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw01_ctrl_scaleZ";
	rename -uid "C9634AD9-455E-24AF-9181-D0B1FC2F6711";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw01_ctrl_visibility";
	rename -uid "DBD9BFFE-4DB4-7D5A-3504-F99F27DB4A11";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_mid_paw01_ctrl_translateX";
	rename -uid "B6F1EB0C-47B8-212D-34B7-81AE81BAB5B5";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_mid_paw01_ctrl_translateY";
	rename -uid "9599EDB2-4437-1592-E5C9-D08950EEEDD7";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_mid_paw01_ctrl_translateZ";
	rename -uid "A19EE87B-409C-AB67-98A9-2F8E32CC8837";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw01_ctrl_scaleX";
	rename -uid "F7069723-480A-D254-F274-C2B26D8E9FF6";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw01_ctrl_scaleY";
	rename -uid "C511D37A-4359-F5C3-E316-17A064DAE816";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw01_ctrl_scaleZ";
	rename -uid "B6DBBA38-49AE-F997-3332-CA8B2177F223";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw02_ctrl_visibility";
	rename -uid "E12EB36B-41B7-EA4F-451B-079BDE0972BC";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_up_paw02_ctrl_translateX";
	rename -uid "B03DB3A4-4F2D-0422-1E3D-6E9D691105DF";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_up_paw02_ctrl_translateY";
	rename -uid "2EEF6CF7-4AB9-78CD-4EF8-7DB6BFB4E64D";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_R_up_paw02_ctrl_translateZ";
	rename -uid "244F4E0F-430E-0561-5D09-D288CAEAE6FF";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw02_ctrl_scaleX";
	rename -uid "92028797-41CC-9C1E-E298-75A6844FF5E1";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.0000000000000004 15 1.0000000000000004
		 25 1.0000000000000004 35 1.0000000000000004;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw02_ctrl_scaleY";
	rename -uid "BFBBBAF7-4D0B-6930-C8D8-67A3C725EA59";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.0000000000000004 15 1.0000000000000004
		 25 1.0000000000000004 35 1.0000000000000004;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw02_ctrl_scaleZ";
	rename -uid "8D7F7BF7-431D-81E0-8D54-4383E00D5CFE";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_up_midwing_ctrl_visibility";
	rename -uid "1A24CB5A-4A87-F708-46C4-87BA93431B5E";
	setAttr ".tan" 5;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_up_midwing_ctrl_translateX";
	rename -uid "36F2739D-4818-62DE-26DA-4A86D8FF6A6B";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_up_midwing_ctrl_translateY";
	rename -uid "8DD861BC-4665-CD3A-5E06-EEA9304873D4";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "enemy_rig_v05_L_up_midwing_ctrl_translateZ";
	rename -uid "4635B60E-44CD-D4AC-5A90-C2A8A0654E97";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 0 15 0 25 0 35 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_up_midwing_ctrl_scaleX";
	rename -uid "0FF7C750-4914-006D-94CE-00AF8DA71C08";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_up_midwing_ctrl_scaleY";
	rename -uid "BDA66419-46D4-0BC8-8D8C-6AB45D25394B";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "enemy_rig_v05_L_up_midwing_ctrl_scaleZ";
	rename -uid "E70A74D5-4924-5024-27CE-FCBF10E4F60F";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 15 1 25 1 35 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.58333333333333337;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  0.58333333333333337;
	setAttr -s 4 ".koy[3]"  0;
createNode displayLayer -n "teeth";
	rename -uid "1964A5B6-46F7-73C0-3A2A-279B4D491511";
	setAttr ".dt" 2;
	setAttr ".do" 2;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr -av -k on ".unw" 1;
	setAttr -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -k on ".ihi";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -av ".aoam";
	setAttr -av ".aora";
	setAttr -av -k on ".mbsof";
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 8 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 11 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
	setAttr -s 3 ".r";
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".dsm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".macc";
	setAttr -k on ".macd";
	setAttr -k on ".macq";
	setAttr -k on ".mcfr";
	setAttr -k on ".ifg";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -k on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -k on ".imfkey";
	setAttr -k on ".gama";
	setAttr -k on ".an";
	setAttr -k on ".ar";
	setAttr -k on ".fs";
	setAttr -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -k on ".me";
	setAttr -k on ".se";
	setAttr -k on ".be";
	setAttr -k on ".ep";
	setAttr -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -k on ".ofe";
	setAttr -k on ".efe";
	setAttr -k on ".oft";
	setAttr -k on ".umfn";
	setAttr -k on ".ufe";
	setAttr -k on ".pff";
	setAttr -k on ".peie";
	setAttr -cb on ".ifp";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -k on ".gv";
	setAttr -k on ".sv";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -k on ".isp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".pram";
	setAttr -k on ".poam";
	setAttr -k on ".prlm";
	setAttr -k on ".polm";
	setAttr -k on ".prm";
	setAttr -k on ".pom";
	setAttr -k on ".pfrm";
	setAttr -k on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -k on ".mbt";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -k on ".isl";
	setAttr -k on ".ism";
	setAttr -k on ".imb";
	setAttr -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
	setAttr -k on ".rsb";
	setAttr -k on ".ope";
	setAttr -k on ".oppf";
	setAttr -k on ".hbl";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".wsn" -type "string" "ACEScg";
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -k off -cb on ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off -cb on ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
connectAttr "enemy_rig_v05_C_body_ctrl_translateX.o" "enemy_rig_v05RN.phl[5]";
connectAttr "enemy_rig_v05_C_body_ctrl_translateY.o" "enemy_rig_v05RN.phl[6]";
connectAttr "enemy_rig_v05_C_body_ctrl_translateZ.o" "enemy_rig_v05RN.phl[7]";
connectAttr "enemy_rig_v05_C_body_ctrl_rotateX.o" "enemy_rig_v05RN.phl[8]";
connectAttr "enemy_rig_v05_C_body_ctrl_rotateY.o" "enemy_rig_v05RN.phl[9]";
connectAttr "enemy_rig_v05_C_body_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[10]";
connectAttr "enemy_rig_v05_C_body_ctrl_scaleX.o" "enemy_rig_v05RN.phl[11]";
connectAttr "enemy_rig_v05_C_body_ctrl_scaleY.o" "enemy_rig_v05RN.phl[12]";
connectAttr "enemy_rig_v05_C_body_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[13]";
connectAttr "enemy_rig_v05_C_body_ctrl_visibility.o" "enemy_rig_v05RN.phl[14]";
connectAttr "enemy_rig_v05_C_spine01_ctrl_translateX.o" "enemy_rig_v05RN.phl[15]"
		;
connectAttr "enemy_rig_v05_C_spine01_ctrl_translateY.o" "enemy_rig_v05RN.phl[16]"
		;
connectAttr "enemy_rig_v05_C_spine01_ctrl_translateZ.o" "enemy_rig_v05RN.phl[17]"
		;
connectAttr "enemy_rig_v05_C_spine01_ctrl_rotateX.o" "enemy_rig_v05RN.phl[18]";
connectAttr "enemy_rig_v05_C_spine01_ctrl_rotateY.o" "enemy_rig_v05RN.phl[19]";
connectAttr "enemy_rig_v05_C_spine01_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[20]";
connectAttr "enemy_rig_v05_C_spine01_ctrl_scaleX.o" "enemy_rig_v05RN.phl[21]";
connectAttr "enemy_rig_v05_C_spine01_ctrl_scaleY.o" "enemy_rig_v05RN.phl[22]";
connectAttr "enemy_rig_v05_C_spine01_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[23]";
connectAttr "enemy_rig_v05_C_spine01_ctrl_visibility.o" "enemy_rig_v05RN.phl[24]"
		;
connectAttr "enemy_rig_v05_C_spine02_ctrl_translateX.o" "enemy_rig_v05RN.phl[25]"
		;
connectAttr "enemy_rig_v05_C_spine02_ctrl_translateY.o" "enemy_rig_v05RN.phl[26]"
		;
connectAttr "enemy_rig_v05_C_spine02_ctrl_translateZ.o" "enemy_rig_v05RN.phl[27]"
		;
connectAttr "enemy_rig_v05_C_spine02_ctrl_rotateX.o" "enemy_rig_v05RN.phl[28]";
connectAttr "enemy_rig_v05_C_spine02_ctrl_rotateY.o" "enemy_rig_v05RN.phl[29]";
connectAttr "enemy_rig_v05_C_spine02_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[30]";
connectAttr "enemy_rig_v05_C_spine02_ctrl_scaleX.o" "enemy_rig_v05RN.phl[31]";
connectAttr "enemy_rig_v05_C_spine02_ctrl_scaleY.o" "enemy_rig_v05RN.phl[32]";
connectAttr "enemy_rig_v05_C_spine02_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[33]";
connectAttr "enemy_rig_v05_C_spine02_ctrl_visibility.o" "enemy_rig_v05RN.phl[34]"
		;
connectAttr "enemy_rig_v05_C_spine03_ctrl_translateX.o" "enemy_rig_v05RN.phl[35]"
		;
connectAttr "enemy_rig_v05_C_spine03_ctrl_translateY.o" "enemy_rig_v05RN.phl[36]"
		;
connectAttr "enemy_rig_v05_C_spine03_ctrl_translateZ.o" "enemy_rig_v05RN.phl[37]"
		;
connectAttr "enemy_rig_v05_C_spine03_ctrl_rotateX.o" "enemy_rig_v05RN.phl[38]";
connectAttr "enemy_rig_v05_C_spine03_ctrl_rotateY.o" "enemy_rig_v05RN.phl[39]";
connectAttr "enemy_rig_v05_C_spine03_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[40]";
connectAttr "enemy_rig_v05_C_spine03_ctrl_scaleX.o" "enemy_rig_v05RN.phl[41]";
connectAttr "enemy_rig_v05_C_spine03_ctrl_scaleY.o" "enemy_rig_v05RN.phl[42]";
connectAttr "enemy_rig_v05_C_spine03_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[43]";
connectAttr "enemy_rig_v05_C_spine03_ctrl_visibility.o" "enemy_rig_v05RN.phl[44]"
		;
connectAttr "enemy_rig_v05_C_spine04_ctrl_translateX.o" "enemy_rig_v05RN.phl[45]"
		;
connectAttr "enemy_rig_v05_C_spine04_ctrl_translateY.o" "enemy_rig_v05RN.phl[46]"
		;
connectAttr "enemy_rig_v05_C_spine04_ctrl_translateZ.o" "enemy_rig_v05RN.phl[47]"
		;
connectAttr "enemy_rig_v05_C_spine04_ctrl_rotateX.o" "enemy_rig_v05RN.phl[48]";
connectAttr "enemy_rig_v05_C_spine04_ctrl_rotateY.o" "enemy_rig_v05RN.phl[49]";
connectAttr "enemy_rig_v05_C_spine04_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[50]";
connectAttr "enemy_rig_v05_C_spine04_ctrl_scaleX.o" "enemy_rig_v05RN.phl[51]";
connectAttr "enemy_rig_v05_C_spine04_ctrl_scaleY.o" "enemy_rig_v05RN.phl[52]";
connectAttr "enemy_rig_v05_C_spine04_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[53]";
connectAttr "enemy_rig_v05_C_spine04_ctrl_visibility.o" "enemy_rig_v05RN.phl[54]"
		;
connectAttr "enemy_rig_v05_R_low_paw01_ctrl_rotateX.o" "enemy_rig_v05RN.phl[55]"
		;
connectAttr "enemy_rig_v05_R_low_paw01_ctrl_rotateY.o" "enemy_rig_v05RN.phl[56]"
		;
connectAttr "enemy_rig_v05_R_low_paw01_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[57]"
		;
connectAttr "enemy_rig_v05_R_low_paw01_ctrl_visibility.o" "enemy_rig_v05RN.phl[58]"
		;
connectAttr "enemy_rig_v05_R_low_paw01_ctrl_translateX.o" "enemy_rig_v05RN.phl[59]"
		;
connectAttr "enemy_rig_v05_R_low_paw01_ctrl_translateY.o" "enemy_rig_v05RN.phl[60]"
		;
connectAttr "enemy_rig_v05_R_low_paw01_ctrl_translateZ.o" "enemy_rig_v05RN.phl[61]"
		;
connectAttr "enemy_rig_v05_R_low_paw01_ctrl_scaleX.o" "enemy_rig_v05RN.phl[62]";
connectAttr "enemy_rig_v05_R_low_paw01_ctrl_scaleY.o" "enemy_rig_v05RN.phl[63]";
connectAttr "enemy_rig_v05_R_low_paw01_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[64]";
connectAttr "enemy_rig_v05_R_low_paw02_ctrl_rotateX.o" "enemy_rig_v05RN.phl[65]"
		;
connectAttr "enemy_rig_v05_R_low_paw02_ctrl_rotateY.o" "enemy_rig_v05RN.phl[66]"
		;
connectAttr "enemy_rig_v05_R_low_paw02_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[67]"
		;
connectAttr "enemy_rig_v05_R_low_paw02_ctrl_visibility.o" "enemy_rig_v05RN.phl[68]"
		;
connectAttr "enemy_rig_v05_R_low_paw02_ctrl_translateX.o" "enemy_rig_v05RN.phl[69]"
		;
connectAttr "enemy_rig_v05_R_low_paw02_ctrl_translateY.o" "enemy_rig_v05RN.phl[70]"
		;
connectAttr "enemy_rig_v05_R_low_paw02_ctrl_translateZ.o" "enemy_rig_v05RN.phl[71]"
		;
connectAttr "enemy_rig_v05_R_low_paw02_ctrl_scaleX.o" "enemy_rig_v05RN.phl[72]";
connectAttr "enemy_rig_v05_R_low_paw02_ctrl_scaleY.o" "enemy_rig_v05RN.phl[73]";
connectAttr "enemy_rig_v05_R_low_paw02_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[74]";
connectAttr "enemy_rig_v05_R_low_paw03_ctrl_rotateX.o" "enemy_rig_v05RN.phl[75]"
		;
connectAttr "enemy_rig_v05_R_low_paw03_ctrl_rotateY.o" "enemy_rig_v05RN.phl[76]"
		;
connectAttr "enemy_rig_v05_R_low_paw03_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[77]"
		;
connectAttr "enemy_rig_v05_R_low_paw03_ctrl_visibility.o" "enemy_rig_v05RN.phl[78]"
		;
connectAttr "enemy_rig_v05_R_low_paw03_ctrl_translateX.o" "enemy_rig_v05RN.phl[79]"
		;
connectAttr "enemy_rig_v05_R_low_paw03_ctrl_translateY.o" "enemy_rig_v05RN.phl[80]"
		;
connectAttr "enemy_rig_v05_R_low_paw03_ctrl_translateZ.o" "enemy_rig_v05RN.phl[81]"
		;
connectAttr "enemy_rig_v05_R_low_paw03_ctrl_scaleX.o" "enemy_rig_v05RN.phl[82]";
connectAttr "enemy_rig_v05_R_low_paw03_ctrl_scaleY.o" "enemy_rig_v05RN.phl[83]";
connectAttr "enemy_rig_v05_R_low_paw03_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[84]";
connectAttr "enemy_rig_v05_L_low_paw01_ctrl_rotateX.o" "enemy_rig_v05RN.phl[85]"
		;
connectAttr "enemy_rig_v05_L_low_paw01_ctrl_rotateY.o" "enemy_rig_v05RN.phl[86]"
		;
connectAttr "enemy_rig_v05_L_low_paw01_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[87]"
		;
connectAttr "enemy_rig_v05_L_low_paw01_ctrl_visibility.o" "enemy_rig_v05RN.phl[88]"
		;
connectAttr "enemy_rig_v05_L_low_paw01_ctrl_translateX.o" "enemy_rig_v05RN.phl[89]"
		;
connectAttr "enemy_rig_v05_L_low_paw01_ctrl_translateY.o" "enemy_rig_v05RN.phl[90]"
		;
connectAttr "enemy_rig_v05_L_low_paw01_ctrl_translateZ.o" "enemy_rig_v05RN.phl[91]"
		;
connectAttr "enemy_rig_v05_L_low_paw01_ctrl_scaleX.o" "enemy_rig_v05RN.phl[92]";
connectAttr "enemy_rig_v05_L_low_paw01_ctrl_scaleY.o" "enemy_rig_v05RN.phl[93]";
connectAttr "enemy_rig_v05_L_low_paw01_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[94]";
connectAttr "enemy_rig_v05_L_low_paw02_ctrl_rotateX.o" "enemy_rig_v05RN.phl[95]"
		;
connectAttr "enemy_rig_v05_L_low_paw02_ctrl_rotateY.o" "enemy_rig_v05RN.phl[96]"
		;
connectAttr "enemy_rig_v05_L_low_paw02_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[97]"
		;
connectAttr "enemy_rig_v05_L_low_paw02_ctrl_visibility.o" "enemy_rig_v05RN.phl[98]"
		;
connectAttr "enemy_rig_v05_L_low_paw02_ctrl_translateX.o" "enemy_rig_v05RN.phl[99]"
		;
connectAttr "enemy_rig_v05_L_low_paw02_ctrl_translateY.o" "enemy_rig_v05RN.phl[100]"
		;
connectAttr "enemy_rig_v05_L_low_paw02_ctrl_translateZ.o" "enemy_rig_v05RN.phl[101]"
		;
connectAttr "enemy_rig_v05_L_low_paw02_ctrl_scaleX.o" "enemy_rig_v05RN.phl[102]"
		;
connectAttr "enemy_rig_v05_L_low_paw02_ctrl_scaleY.o" "enemy_rig_v05RN.phl[103]"
		;
connectAttr "enemy_rig_v05_L_low_paw02_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[104]"
		;
connectAttr "enemy_rig_v05_L_low_paw03_ctrl_rotateX.o" "enemy_rig_v05RN.phl[105]"
		;
connectAttr "enemy_rig_v05_L_low_paw03_ctrl_rotateY.o" "enemy_rig_v05RN.phl[106]"
		;
connectAttr "enemy_rig_v05_L_low_paw03_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[107]"
		;
connectAttr "enemy_rig_v05_L_low_paw03_ctrl_visibility.o" "enemy_rig_v05RN.phl[108]"
		;
connectAttr "enemy_rig_v05_L_low_paw03_ctrl_translateX.o" "enemy_rig_v05RN.phl[109]"
		;
connectAttr "enemy_rig_v05_L_low_paw03_ctrl_translateY.o" "enemy_rig_v05RN.phl[110]"
		;
connectAttr "enemy_rig_v05_L_low_paw03_ctrl_translateZ.o" "enemy_rig_v05RN.phl[111]"
		;
connectAttr "enemy_rig_v05_L_low_paw03_ctrl_scaleX.o" "enemy_rig_v05RN.phl[112]"
		;
connectAttr "enemy_rig_v05_L_low_paw03_ctrl_scaleY.o" "enemy_rig_v05RN.phl[113]"
		;
connectAttr "enemy_rig_v05_L_low_paw03_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[114]"
		;
connectAttr "enemy_rig_v05_L_mid_paw01_ctrl_rotateX.o" "enemy_rig_v05RN.phl[115]"
		;
connectAttr "enemy_rig_v05_L_mid_paw01_ctrl_rotateY.o" "enemy_rig_v05RN.phl[116]"
		;
connectAttr "enemy_rig_v05_L_mid_paw01_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[117]"
		;
connectAttr "enemy_rig_v05_L_mid_paw01_ctrl_visibility.o" "enemy_rig_v05RN.phl[118]"
		;
connectAttr "enemy_rig_v05_L_mid_paw01_ctrl_translateX.o" "enemy_rig_v05RN.phl[119]"
		;
connectAttr "enemy_rig_v05_L_mid_paw01_ctrl_translateY.o" "enemy_rig_v05RN.phl[120]"
		;
connectAttr "enemy_rig_v05_L_mid_paw01_ctrl_translateZ.o" "enemy_rig_v05RN.phl[121]"
		;
connectAttr "enemy_rig_v05_L_mid_paw01_ctrl_scaleX.o" "enemy_rig_v05RN.phl[122]"
		;
connectAttr "enemy_rig_v05_L_mid_paw01_ctrl_scaleY.o" "enemy_rig_v05RN.phl[123]"
		;
connectAttr "enemy_rig_v05_L_mid_paw01_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[124]"
		;
connectAttr "enemy_rig_v05_L_mid_paw02_ctrl_rotateX.o" "enemy_rig_v05RN.phl[125]"
		;
connectAttr "enemy_rig_v05_L_mid_paw02_ctrl_rotateY.o" "enemy_rig_v05RN.phl[126]"
		;
connectAttr "enemy_rig_v05_L_mid_paw02_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[127]"
		;
connectAttr "enemy_rig_v05_L_mid_paw02_ctrl_visibility.o" "enemy_rig_v05RN.phl[128]"
		;
connectAttr "enemy_rig_v05_L_mid_paw02_ctrl_translateX.o" "enemy_rig_v05RN.phl[129]"
		;
connectAttr "enemy_rig_v05_L_mid_paw02_ctrl_translateY.o" "enemy_rig_v05RN.phl[130]"
		;
connectAttr "enemy_rig_v05_L_mid_paw02_ctrl_translateZ.o" "enemy_rig_v05RN.phl[131]"
		;
connectAttr "enemy_rig_v05_L_mid_paw02_ctrl_scaleX.o" "enemy_rig_v05RN.phl[132]"
		;
connectAttr "enemy_rig_v05_L_mid_paw02_ctrl_scaleY.o" "enemy_rig_v05RN.phl[133]"
		;
connectAttr "enemy_rig_v05_L_mid_paw02_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[134]"
		;
connectAttr "enemy_rig_v05_L_mid_paw03_ctrl_rotateX.o" "enemy_rig_v05RN.phl[135]"
		;
connectAttr "enemy_rig_v05_L_mid_paw03_ctrl_rotateY.o" "enemy_rig_v05RN.phl[136]"
		;
connectAttr "enemy_rig_v05_L_mid_paw03_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[137]"
		;
connectAttr "enemy_rig_v05_L_mid_paw03_ctrl_visibility.o" "enemy_rig_v05RN.phl[138]"
		;
connectAttr "enemy_rig_v05_L_mid_paw03_ctrl_translateX.o" "enemy_rig_v05RN.phl[139]"
		;
connectAttr "enemy_rig_v05_L_mid_paw03_ctrl_translateY.o" "enemy_rig_v05RN.phl[140]"
		;
connectAttr "enemy_rig_v05_L_mid_paw03_ctrl_translateZ.o" "enemy_rig_v05RN.phl[141]"
		;
connectAttr "enemy_rig_v05_L_mid_paw03_ctrl_scaleX.o" "enemy_rig_v05RN.phl[142]"
		;
connectAttr "enemy_rig_v05_L_mid_paw03_ctrl_scaleY.o" "enemy_rig_v05RN.phl[143]"
		;
connectAttr "enemy_rig_v05_L_mid_paw03_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[144]"
		;
connectAttr "enemy_rig_v05_R_mid_paw01_ctrl_rotateX.o" "enemy_rig_v05RN.phl[145]"
		;
connectAttr "enemy_rig_v05_R_mid_paw01_ctrl_rotateY.o" "enemy_rig_v05RN.phl[146]"
		;
connectAttr "enemy_rig_v05_R_mid_paw01_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[147]"
		;
connectAttr "enemy_rig_v05_R_mid_paw01_ctrl_visibility.o" "enemy_rig_v05RN.phl[148]"
		;
connectAttr "enemy_rig_v05_R_mid_paw01_ctrl_translateX.o" "enemy_rig_v05RN.phl[149]"
		;
connectAttr "enemy_rig_v05_R_mid_paw01_ctrl_translateY.o" "enemy_rig_v05RN.phl[150]"
		;
connectAttr "enemy_rig_v05_R_mid_paw01_ctrl_translateZ.o" "enemy_rig_v05RN.phl[151]"
		;
connectAttr "enemy_rig_v05_R_mid_paw01_ctrl_scaleX.o" "enemy_rig_v05RN.phl[152]"
		;
connectAttr "enemy_rig_v05_R_mid_paw01_ctrl_scaleY.o" "enemy_rig_v05RN.phl[153]"
		;
connectAttr "enemy_rig_v05_R_mid_paw01_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[154]"
		;
connectAttr "enemy_rig_v05_R_mid_paw02_ctrl_rotateX.o" "enemy_rig_v05RN.phl[155]"
		;
connectAttr "enemy_rig_v05_R_mid_paw02_ctrl_rotateY.o" "enemy_rig_v05RN.phl[156]"
		;
connectAttr "enemy_rig_v05_R_mid_paw02_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[157]"
		;
connectAttr "enemy_rig_v05_R_mid_paw02_ctrl_visibility.o" "enemy_rig_v05RN.phl[158]"
		;
connectAttr "enemy_rig_v05_R_mid_paw02_ctrl_translateX.o" "enemy_rig_v05RN.phl[159]"
		;
connectAttr "enemy_rig_v05_R_mid_paw02_ctrl_translateY.o" "enemy_rig_v05RN.phl[160]"
		;
connectAttr "enemy_rig_v05_R_mid_paw02_ctrl_translateZ.o" "enemy_rig_v05RN.phl[161]"
		;
connectAttr "enemy_rig_v05_R_mid_paw02_ctrl_scaleX.o" "enemy_rig_v05RN.phl[162]"
		;
connectAttr "enemy_rig_v05_R_mid_paw02_ctrl_scaleY.o" "enemy_rig_v05RN.phl[163]"
		;
connectAttr "enemy_rig_v05_R_mid_paw02_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[164]"
		;
connectAttr "enemy_rig_v05_R_mid_paw03_ctrl_rotateX.o" "enemy_rig_v05RN.phl[165]"
		;
connectAttr "enemy_rig_v05_R_mid_paw03_ctrl_rotateY.o" "enemy_rig_v05RN.phl[166]"
		;
connectAttr "enemy_rig_v05_R_mid_paw03_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[167]"
		;
connectAttr "enemy_rig_v05_R_mid_paw03_ctrl_visibility.o" "enemy_rig_v05RN.phl[168]"
		;
connectAttr "enemy_rig_v05_R_mid_paw03_ctrl_translateX.o" "enemy_rig_v05RN.phl[169]"
		;
connectAttr "enemy_rig_v05_R_mid_paw03_ctrl_translateY.o" "enemy_rig_v05RN.phl[170]"
		;
connectAttr "enemy_rig_v05_R_mid_paw03_ctrl_translateZ.o" "enemy_rig_v05RN.phl[171]"
		;
connectAttr "enemy_rig_v05_R_mid_paw03_ctrl_scaleX.o" "enemy_rig_v05RN.phl[172]"
		;
connectAttr "enemy_rig_v05_R_mid_paw03_ctrl_scaleY.o" "enemy_rig_v05RN.phl[173]"
		;
connectAttr "enemy_rig_v05_R_mid_paw03_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[174]"
		;
connectAttr "enemy_rig_v05_L_up_paw01_ctrl_rotateX.o" "enemy_rig_v05RN.phl[175]"
		;
connectAttr "enemy_rig_v05_L_up_paw01_ctrl_rotateY.o" "enemy_rig_v05RN.phl[176]"
		;
connectAttr "enemy_rig_v05_L_up_paw01_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[177]"
		;
connectAttr "enemy_rig_v05_L_up_paw01_ctrl_visibility.o" "enemy_rig_v05RN.phl[178]"
		;
connectAttr "enemy_rig_v05_L_up_paw01_ctrl_translateX.o" "enemy_rig_v05RN.phl[179]"
		;
connectAttr "enemy_rig_v05_L_up_paw01_ctrl_translateY.o" "enemy_rig_v05RN.phl[180]"
		;
connectAttr "enemy_rig_v05_L_up_paw01_ctrl_translateZ.o" "enemy_rig_v05RN.phl[181]"
		;
connectAttr "enemy_rig_v05_L_up_paw01_ctrl_scaleX.o" "enemy_rig_v05RN.phl[182]";
connectAttr "enemy_rig_v05_L_up_paw01_ctrl_scaleY.o" "enemy_rig_v05RN.phl[183]";
connectAttr "enemy_rig_v05_L_up_paw01_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[184]";
connectAttr "enemy_rig_v05_L_up_paw02_ctrl_rotateX.o" "enemy_rig_v05RN.phl[185]"
		;
connectAttr "enemy_rig_v05_L_up_paw02_ctrl_rotateY.o" "enemy_rig_v05RN.phl[186]"
		;
connectAttr "enemy_rig_v05_L_up_paw02_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[187]"
		;
connectAttr "enemy_rig_v05_L_up_paw02_ctrl_visibility.o" "enemy_rig_v05RN.phl[188]"
		;
connectAttr "enemy_rig_v05_L_up_paw02_ctrl_translateX.o" "enemy_rig_v05RN.phl[189]"
		;
connectAttr "enemy_rig_v05_L_up_paw02_ctrl_translateY.o" "enemy_rig_v05RN.phl[190]"
		;
connectAttr "enemy_rig_v05_L_up_paw02_ctrl_translateZ.o" "enemy_rig_v05RN.phl[191]"
		;
connectAttr "enemy_rig_v05_L_up_paw02_ctrl_scaleX.o" "enemy_rig_v05RN.phl[192]";
connectAttr "enemy_rig_v05_L_up_paw02_ctrl_scaleY.o" "enemy_rig_v05RN.phl[193]";
connectAttr "enemy_rig_v05_L_up_paw02_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[194]";
connectAttr "enemy_rig_v05_L_up_paw03_ctrl_rotateX.o" "enemy_rig_v05RN.phl[195]"
		;
connectAttr "enemy_rig_v05_L_up_paw03_ctrl_rotateY.o" "enemy_rig_v05RN.phl[196]"
		;
connectAttr "enemy_rig_v05_L_up_paw03_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[197]"
		;
connectAttr "enemy_rig_v05_L_up_paw03_ctrl_visibility.o" "enemy_rig_v05RN.phl[198]"
		;
connectAttr "enemy_rig_v05_L_up_paw03_ctrl_translateX.o" "enemy_rig_v05RN.phl[199]"
		;
connectAttr "enemy_rig_v05_L_up_paw03_ctrl_translateY.o" "enemy_rig_v05RN.phl[200]"
		;
connectAttr "enemy_rig_v05_L_up_paw03_ctrl_translateZ.o" "enemy_rig_v05RN.phl[201]"
		;
connectAttr "enemy_rig_v05_L_up_paw03_ctrl_scaleX.o" "enemy_rig_v05RN.phl[202]";
connectAttr "enemy_rig_v05_L_up_paw03_ctrl_scaleY.o" "enemy_rig_v05RN.phl[203]";
connectAttr "enemy_rig_v05_L_up_paw03_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[204]";
connectAttr "enemy_rig_v05_R_up_paw01_ctrl_rotateX.o" "enemy_rig_v05RN.phl[205]"
		;
connectAttr "enemy_rig_v05_R_up_paw01_ctrl_rotateY.o" "enemy_rig_v05RN.phl[206]"
		;
connectAttr "enemy_rig_v05_R_up_paw01_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[207]"
		;
connectAttr "enemy_rig_v05_R_up_paw01_ctrl_visibility.o" "enemy_rig_v05RN.phl[208]"
		;
connectAttr "enemy_rig_v05_R_up_paw01_ctrl_translateX.o" "enemy_rig_v05RN.phl[209]"
		;
connectAttr "enemy_rig_v05_R_up_paw01_ctrl_translateY.o" "enemy_rig_v05RN.phl[210]"
		;
connectAttr "enemy_rig_v05_R_up_paw01_ctrl_translateZ.o" "enemy_rig_v05RN.phl[211]"
		;
connectAttr "enemy_rig_v05_R_up_paw01_ctrl_scaleX.o" "enemy_rig_v05RN.phl[212]";
connectAttr "enemy_rig_v05_R_up_paw01_ctrl_scaleY.o" "enemy_rig_v05RN.phl[213]";
connectAttr "enemy_rig_v05_R_up_paw01_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[214]";
connectAttr "enemy_rig_v05_R_up_paw02_ctrl_rotateX.o" "enemy_rig_v05RN.phl[215]"
		;
connectAttr "enemy_rig_v05_R_up_paw02_ctrl_rotateY.o" "enemy_rig_v05RN.phl[216]"
		;
connectAttr "enemy_rig_v05_R_up_paw02_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[217]"
		;
connectAttr "enemy_rig_v05_R_up_paw02_ctrl_visibility.o" "enemy_rig_v05RN.phl[218]"
		;
connectAttr "enemy_rig_v05_R_up_paw02_ctrl_translateX.o" "enemy_rig_v05RN.phl[219]"
		;
connectAttr "enemy_rig_v05_R_up_paw02_ctrl_translateY.o" "enemy_rig_v05RN.phl[220]"
		;
connectAttr "enemy_rig_v05_R_up_paw02_ctrl_translateZ.o" "enemy_rig_v05RN.phl[221]"
		;
connectAttr "enemy_rig_v05_R_up_paw02_ctrl_scaleX.o" "enemy_rig_v05RN.phl[222]";
connectAttr "enemy_rig_v05_R_up_paw02_ctrl_scaleY.o" "enemy_rig_v05RN.phl[223]";
connectAttr "enemy_rig_v05_R_up_paw02_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[224]";
connectAttr "enemy_rig_v05_R_up_paw03_ctrl_rotateX.o" "enemy_rig_v05RN.phl[225]"
		;
connectAttr "enemy_rig_v05_R_up_paw03_ctrl_rotateY.o" "enemy_rig_v05RN.phl[226]"
		;
connectAttr "enemy_rig_v05_R_up_paw03_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[227]"
		;
connectAttr "enemy_rig_v05_R_up_paw03_ctrl_visibility.o" "enemy_rig_v05RN.phl[228]"
		;
connectAttr "enemy_rig_v05_R_up_paw03_ctrl_translateX.o" "enemy_rig_v05RN.phl[229]"
		;
connectAttr "enemy_rig_v05_R_up_paw03_ctrl_translateY.o" "enemy_rig_v05RN.phl[230]"
		;
connectAttr "enemy_rig_v05_R_up_paw03_ctrl_translateZ.o" "enemy_rig_v05RN.phl[231]"
		;
connectAttr "enemy_rig_v05_R_up_paw03_ctrl_scaleX.o" "enemy_rig_v05RN.phl[232]";
connectAttr "enemy_rig_v05_R_up_paw03_ctrl_scaleY.o" "enemy_rig_v05RN.phl[233]";
connectAttr "enemy_rig_v05_R_up_paw03_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[234]";
connectAttr "enemy_rig_v05_R_mainwing_ctrl_rotateY.o" "enemy_rig_v05RN.phl[235]"
		;
connectAttr "enemy_rig_v05_R_mainwing_ctrl_rotateX.o" "enemy_rig_v05RN.phl[236]"
		;
connectAttr "enemy_rig_v05_R_mainwing_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[237]"
		;
connectAttr "enemy_rig_v05_R_mainwing_ctrl_visibility.o" "enemy_rig_v05RN.phl[238]"
		;
connectAttr "enemy_rig_v05_R_mainwing_ctrl_translateX.o" "enemy_rig_v05RN.phl[239]"
		;
connectAttr "enemy_rig_v05_R_mainwing_ctrl_translateY.o" "enemy_rig_v05RN.phl[240]"
		;
connectAttr "enemy_rig_v05_R_mainwing_ctrl_translateZ.o" "enemy_rig_v05RN.phl[241]"
		;
connectAttr "enemy_rig_v05_R_mainwing_ctrl_scaleX.o" "enemy_rig_v05RN.phl[242]";
connectAttr "enemy_rig_v05_R_mainwing_ctrl_scaleY.o" "enemy_rig_v05RN.phl[243]";
connectAttr "enemy_rig_v05_R_mainwing_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[244]";
connectAttr "enemy_rig_v05_R_up_midwing_ctrl_translateX.o" "enemy_rig_v05RN.phl[245]"
		;
connectAttr "enemy_rig_v05_R_up_midwing_ctrl_translateY.o" "enemy_rig_v05RN.phl[246]"
		;
connectAttr "enemy_rig_v05_R_up_midwing_ctrl_translateZ.o" "enemy_rig_v05RN.phl[247]"
		;
connectAttr "enemy_rig_v05_R_up_midwing_ctrl_rotateY.o" "enemy_rig_v05RN.phl[248]"
		;
connectAttr "enemy_rig_v05_R_up_midwing_ctrl_rotateX.o" "enemy_rig_v05RN.phl[249]"
		;
connectAttr "enemy_rig_v05_R_up_midwing_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[250]"
		;
connectAttr "enemy_rig_v05_R_up_midwing_ctrl_scaleX.o" "enemy_rig_v05RN.phl[251]"
		;
connectAttr "enemy_rig_v05_R_up_midwing_ctrl_scaleY.o" "enemy_rig_v05RN.phl[252]"
		;
connectAttr "enemy_rig_v05_R_up_midwing_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[253]"
		;
connectAttr "enemy_rig_v05_R_up_midwing_ctrl_visibility.o" "enemy_rig_v05RN.phl[254]"
		;
connectAttr "enemy_rig_v05_R_up_endwing_ctrl_translateX.o" "enemy_rig_v05RN.phl[255]"
		;
connectAttr "enemy_rig_v05_R_up_endwing_ctrl_translateY.o" "enemy_rig_v05RN.phl[256]"
		;
connectAttr "enemy_rig_v05_R_up_endwing_ctrl_translateZ.o" "enemy_rig_v05RN.phl[257]"
		;
connectAttr "enemy_rig_v05_R_up_endwing_ctrl_rotateY.o" "enemy_rig_v05RN.phl[258]"
		;
connectAttr "enemy_rig_v05_R_up_endwing_ctrl_rotateX.o" "enemy_rig_v05RN.phl[259]"
		;
connectAttr "enemy_rig_v05_R_up_endwing_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[260]"
		;
connectAttr "enemy_rig_v05_R_up_endwing_ctrl_scaleX.o" "enemy_rig_v05RN.phl[261]"
		;
connectAttr "enemy_rig_v05_R_up_endwing_ctrl_scaleY.o" "enemy_rig_v05RN.phl[262]"
		;
connectAttr "enemy_rig_v05_R_up_endwing_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[263]"
		;
connectAttr "enemy_rig_v05_R_up_endwing_ctrl_visibility.o" "enemy_rig_v05RN.phl[264]"
		;
connectAttr "enemy_rig_v05_R_low_midwing_ctrl_translateX.o" "enemy_rig_v05RN.phl[265]"
		;
connectAttr "enemy_rig_v05_R_low_midwing_ctrl_translateY.o" "enemy_rig_v05RN.phl[266]"
		;
connectAttr "enemy_rig_v05_R_low_midwing_ctrl_translateZ.o" "enemy_rig_v05RN.phl[267]"
		;
connectAttr "enemy_rig_v05_R_low_midwing_ctrl_rotateY.o" "enemy_rig_v05RN.phl[268]"
		;
connectAttr "enemy_rig_v05_R_low_midwing_ctrl_rotateX.o" "enemy_rig_v05RN.phl[269]"
		;
connectAttr "enemy_rig_v05_R_low_midwing_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[270]"
		;
connectAttr "enemy_rig_v05_R_low_midwing_ctrl_scaleX.o" "enemy_rig_v05RN.phl[271]"
		;
connectAttr "enemy_rig_v05_R_low_midwing_ctrl_scaleY.o" "enemy_rig_v05RN.phl[272]"
		;
connectAttr "enemy_rig_v05_R_low_midwing_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[273]"
		;
connectAttr "enemy_rig_v05_R_low_midwing_ctrl_visibility.o" "enemy_rig_v05RN.phl[274]"
		;
connectAttr "enemy_rig_v05_R_low_endwing_ctrl_translateX.o" "enemy_rig_v05RN.phl[275]"
		;
connectAttr "enemy_rig_v05_R_low_endwing_ctrl_translateY.o" "enemy_rig_v05RN.phl[276]"
		;
connectAttr "enemy_rig_v05_R_low_endwing_ctrl_translateZ.o" "enemy_rig_v05RN.phl[277]"
		;
connectAttr "enemy_rig_v05_R_low_endwing_ctrl_rotateY.o" "enemy_rig_v05RN.phl[278]"
		;
connectAttr "enemy_rig_v05_R_low_endwing_ctrl_rotateX.o" "enemy_rig_v05RN.phl[279]"
		;
connectAttr "enemy_rig_v05_R_low_endwing_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[280]"
		;
connectAttr "enemy_rig_v05_R_low_endwing_ctrl_scaleX.o" "enemy_rig_v05RN.phl[281]"
		;
connectAttr "enemy_rig_v05_R_low_endwing_ctrl_scaleY.o" "enemy_rig_v05RN.phl[282]"
		;
connectAttr "enemy_rig_v05_R_low_endwing_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[283]"
		;
connectAttr "enemy_rig_v05_R_low_endwing_ctrl_visibility.o" "enemy_rig_v05RN.phl[284]"
		;
connectAttr "enemy_rig_v05_C_neck_ctrl_translateX.o" "enemy_rig_v05RN.phl[285]";
connectAttr "enemy_rig_v05_C_neck_ctrl_translateY.o" "enemy_rig_v05RN.phl[286]";
connectAttr "enemy_rig_v05_C_neck_ctrl_translateZ.o" "enemy_rig_v05RN.phl[287]";
connectAttr "enemy_rig_v05_C_neck_ctrl_rotateX.o" "enemy_rig_v05RN.phl[288]";
connectAttr "enemy_rig_v05_C_neck_ctrl_rotateY.o" "enemy_rig_v05RN.phl[289]";
connectAttr "enemy_rig_v05_C_neck_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[290]";
connectAttr "enemy_rig_v05_C_neck_ctrl_scaleX.o" "enemy_rig_v05RN.phl[291]";
connectAttr "enemy_rig_v05_C_neck_ctrl_scaleY.o" "enemy_rig_v05RN.phl[292]";
connectAttr "enemy_rig_v05_C_neck_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[293]";
connectAttr "enemy_rig_v05_C_neck_ctrl_visibility.o" "enemy_rig_v05RN.phl[294]";
connectAttr "enemy_rig_v05_C_head_ctrl_translateX.o" "enemy_rig_v05RN.phl[295]";
connectAttr "enemy_rig_v05_C_head_ctrl_translateY.o" "enemy_rig_v05RN.phl[296]";
connectAttr "enemy_rig_v05_C_head_ctrl_translateZ.o" "enemy_rig_v05RN.phl[297]";
connectAttr "enemy_rig_v05_C_head_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[298]";
connectAttr "enemy_rig_v05_C_head_ctrl_rotateX.o" "enemy_rig_v05RN.phl[299]";
connectAttr "enemy_rig_v05_C_head_ctrl_rotateY.o" "enemy_rig_v05RN.phl[300]";
connectAttr "enemy_rig_v05_C_head_ctrl_scaleX.o" "enemy_rig_v05RN.phl[301]";
connectAttr "enemy_rig_v05_C_head_ctrl_scaleY.o" "enemy_rig_v05RN.phl[302]";
connectAttr "enemy_rig_v05_C_head_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[303]";
connectAttr "enemy_rig_v05_C_head_ctrl_visibility.o" "enemy_rig_v05RN.phl[304]";
connectAttr "enemy_rig_v05_low_mouth_ctrl_translateX.o" "enemy_rig_v05RN.phl[305]"
		;
connectAttr "enemy_rig_v05_low_mouth_ctrl_translateY.o" "enemy_rig_v05RN.phl[306]"
		;
connectAttr "enemy_rig_v05_low_mouth_ctrl_translateZ.o" "enemy_rig_v05RN.phl[307]"
		;
connectAttr "enemy_rig_v05_low_mouth_ctrl_rotateX.o" "enemy_rig_v05RN.phl[308]";
connectAttr "enemy_rig_v05_low_mouth_ctrl_rotateY.o" "enemy_rig_v05RN.phl[309]";
connectAttr "enemy_rig_v05_low_mouth_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[310]";
connectAttr "enemy_rig_v05_low_mouth_ctrl_scaleX.o" "enemy_rig_v05RN.phl[311]";
connectAttr "enemy_rig_v05_low_mouth_ctrl_scaleY.o" "enemy_rig_v05RN.phl[312]";
connectAttr "enemy_rig_v05_low_mouth_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[313]";
connectAttr "enemy_rig_v05_low_mouth_ctrl_visibility.o" "enemy_rig_v05RN.phl[314]"
		;
connectAttr "enemy_rig_v05_up_mouth_ctrl_translateX.o" "enemy_rig_v05RN.phl[315]"
		;
connectAttr "enemy_rig_v05_up_mouth_ctrl_translateY.o" "enemy_rig_v05RN.phl[316]"
		;
connectAttr "enemy_rig_v05_up_mouth_ctrl_translateZ.o" "enemy_rig_v05RN.phl[317]"
		;
connectAttr "enemy_rig_v05_up_mouth_ctrl_rotateX.o" "enemy_rig_v05RN.phl[318]";
connectAttr "enemy_rig_v05_up_mouth_ctrl_rotateY.o" "enemy_rig_v05RN.phl[319]";
connectAttr "enemy_rig_v05_up_mouth_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[320]";
connectAttr "enemy_rig_v05_up_mouth_ctrl_scaleX.o" "enemy_rig_v05RN.phl[321]";
connectAttr "enemy_rig_v05_up_mouth_ctrl_scaleY.o" "enemy_rig_v05RN.phl[322]";
connectAttr "enemy_rig_v05_up_mouth_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[323]";
connectAttr "enemy_rig_v05_up_mouth_ctrl_visibility.o" "enemy_rig_v05RN.phl[324]"
		;
connectAttr "enemy_rig_v05_L_antenna01_ctrl_rotateX.o" "enemy_rig_v05RN.phl[325]"
		;
connectAttr "enemy_rig_v05_L_antenna01_ctrl_rotateY.o" "enemy_rig_v05RN.phl[326]"
		;
connectAttr "enemy_rig_v05_L_antenna01_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[327]"
		;
connectAttr "enemy_rig_v05_L_antenna01_ctrl_visibility.o" "enemy_rig_v05RN.phl[328]"
		;
connectAttr "enemy_rig_v05_L_antenna01_ctrl_translateX.o" "enemy_rig_v05RN.phl[329]"
		;
connectAttr "enemy_rig_v05_L_antenna01_ctrl_translateY.o" "enemy_rig_v05RN.phl[330]"
		;
connectAttr "enemy_rig_v05_L_antenna01_ctrl_translateZ.o" "enemy_rig_v05RN.phl[331]"
		;
connectAttr "enemy_rig_v05_L_antenna01_ctrl_scaleX.o" "enemy_rig_v05RN.phl[332]"
		;
connectAttr "enemy_rig_v05_L_antenna01_ctrl_scaleY.o" "enemy_rig_v05RN.phl[333]"
		;
connectAttr "enemy_rig_v05_L_antenna01_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[334]"
		;
connectAttr "enemy_rig_v05_L_antenna02_ctrl_rotateX.o" "enemy_rig_v05RN.phl[335]"
		;
connectAttr "enemy_rig_v05_L_antenna02_ctrl_rotateY.o" "enemy_rig_v05RN.phl[336]"
		;
connectAttr "enemy_rig_v05_L_antenna02_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[337]"
		;
connectAttr "enemy_rig_v05_L_antenna02_ctrl_visibility.o" "enemy_rig_v05RN.phl[338]"
		;
connectAttr "enemy_rig_v05_L_antenna02_ctrl_translateX.o" "enemy_rig_v05RN.phl[339]"
		;
connectAttr "enemy_rig_v05_L_antenna02_ctrl_translateY.o" "enemy_rig_v05RN.phl[340]"
		;
connectAttr "enemy_rig_v05_L_antenna02_ctrl_translateZ.o" "enemy_rig_v05RN.phl[341]"
		;
connectAttr "enemy_rig_v05_L_antenna02_ctrl_scaleX.o" "enemy_rig_v05RN.phl[342]"
		;
connectAttr "enemy_rig_v05_L_antenna02_ctrl_scaleY.o" "enemy_rig_v05RN.phl[343]"
		;
connectAttr "enemy_rig_v05_L_antenna02_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[344]"
		;
connectAttr "enemy_rig_v05_L_antenna03_ctrl_rotateX.o" "enemy_rig_v05RN.phl[345]"
		;
connectAttr "enemy_rig_v05_L_antenna03_ctrl_rotateY.o" "enemy_rig_v05RN.phl[346]"
		;
connectAttr "enemy_rig_v05_L_antenna03_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[347]"
		;
connectAttr "enemy_rig_v05_L_antenna03_ctrl_visibility.o" "enemy_rig_v05RN.phl[348]"
		;
connectAttr "enemy_rig_v05_L_antenna03_ctrl_translateX.o" "enemy_rig_v05RN.phl[349]"
		;
connectAttr "enemy_rig_v05_L_antenna03_ctrl_translateY.o" "enemy_rig_v05RN.phl[350]"
		;
connectAttr "enemy_rig_v05_L_antenna03_ctrl_translateZ.o" "enemy_rig_v05RN.phl[351]"
		;
connectAttr "enemy_rig_v05_L_antenna03_ctrl_scaleX.o" "enemy_rig_v05RN.phl[352]"
		;
connectAttr "enemy_rig_v05_L_antenna03_ctrl_scaleY.o" "enemy_rig_v05RN.phl[353]"
		;
connectAttr "enemy_rig_v05_L_antenna03_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[354]"
		;
connectAttr "enemy_rig_v05_R_antenna01_ctrl_rotateX.o" "enemy_rig_v05RN.phl[355]"
		;
connectAttr "enemy_rig_v05_R_antenna01_ctrl_rotateY.o" "enemy_rig_v05RN.phl[356]"
		;
connectAttr "enemy_rig_v05_R_antenna01_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[357]"
		;
connectAttr "enemy_rig_v05_R_antenna01_ctrl_visibility.o" "enemy_rig_v05RN.phl[358]"
		;
connectAttr "enemy_rig_v05_R_antenna01_ctrl_translateX.o" "enemy_rig_v05RN.phl[359]"
		;
connectAttr "enemy_rig_v05_R_antenna01_ctrl_translateY.o" "enemy_rig_v05RN.phl[360]"
		;
connectAttr "enemy_rig_v05_R_antenna01_ctrl_translateZ.o" "enemy_rig_v05RN.phl[361]"
		;
connectAttr "enemy_rig_v05_R_antenna01_ctrl_scaleX.o" "enemy_rig_v05RN.phl[362]"
		;
connectAttr "enemy_rig_v05_R_antenna01_ctrl_scaleY.o" "enemy_rig_v05RN.phl[363]"
		;
connectAttr "enemy_rig_v05_R_antenna01_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[364]"
		;
connectAttr "enemy_rig_v05_R_antenna02_ctrl_rotateX.o" "enemy_rig_v05RN.phl[365]"
		;
connectAttr "enemy_rig_v05_R_antenna02_ctrl_rotateY.o" "enemy_rig_v05RN.phl[366]"
		;
connectAttr "enemy_rig_v05_R_antenna02_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[367]"
		;
connectAttr "enemy_rig_v05_R_antenna02_ctrl_visibility.o" "enemy_rig_v05RN.phl[368]"
		;
connectAttr "enemy_rig_v05_R_antenna02_ctrl_translateX.o" "enemy_rig_v05RN.phl[369]"
		;
connectAttr "enemy_rig_v05_R_antenna02_ctrl_translateY.o" "enemy_rig_v05RN.phl[370]"
		;
connectAttr "enemy_rig_v05_R_antenna02_ctrl_translateZ.o" "enemy_rig_v05RN.phl[371]"
		;
connectAttr "enemy_rig_v05_R_antenna02_ctrl_scaleX.o" "enemy_rig_v05RN.phl[372]"
		;
connectAttr "enemy_rig_v05_R_antenna02_ctrl_scaleY.o" "enemy_rig_v05RN.phl[373]"
		;
connectAttr "enemy_rig_v05_R_antenna02_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[374]"
		;
connectAttr "enemy_rig_v05_R_antenna03_ctrl_rotateX.o" "enemy_rig_v05RN.phl[375]"
		;
connectAttr "enemy_rig_v05_R_antenna03_ctrl_rotateY.o" "enemy_rig_v05RN.phl[376]"
		;
connectAttr "enemy_rig_v05_R_antenna03_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[377]"
		;
connectAttr "enemy_rig_v05_R_antenna03_ctrl_visibility.o" "enemy_rig_v05RN.phl[378]"
		;
connectAttr "enemy_rig_v05_R_antenna03_ctrl_translateX.o" "enemy_rig_v05RN.phl[379]"
		;
connectAttr "enemy_rig_v05_R_antenna03_ctrl_translateY.o" "enemy_rig_v05RN.phl[380]"
		;
connectAttr "enemy_rig_v05_R_antenna03_ctrl_translateZ.o" "enemy_rig_v05RN.phl[381]"
		;
connectAttr "enemy_rig_v05_R_antenna03_ctrl_scaleX.o" "enemy_rig_v05RN.phl[382]"
		;
connectAttr "enemy_rig_v05_R_antenna03_ctrl_scaleY.o" "enemy_rig_v05RN.phl[383]"
		;
connectAttr "enemy_rig_v05_R_antenna03_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[384]"
		;
connectAttr "enemy_rig_v05_L_mainwing_ctrl_rotateY.o" "enemy_rig_v05RN.phl[385]"
		;
connectAttr "enemy_rig_v05_L_mainwing_ctrl_rotateX.o" "enemy_rig_v05RN.phl[386]"
		;
connectAttr "enemy_rig_v05_L_mainwing_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[387]"
		;
connectAttr "enemy_rig_v05_L_mainwing_ctrl_visibility.o" "enemy_rig_v05RN.phl[388]"
		;
connectAttr "enemy_rig_v05_L_mainwing_ctrl_translateX.o" "enemy_rig_v05RN.phl[389]"
		;
connectAttr "enemy_rig_v05_L_mainwing_ctrl_translateY.o" "enemy_rig_v05RN.phl[390]"
		;
connectAttr "enemy_rig_v05_L_mainwing_ctrl_translateZ.o" "enemy_rig_v05RN.phl[391]"
		;
connectAttr "enemy_rig_v05_L_mainwing_ctrl_scaleX.o" "enemy_rig_v05RN.phl[392]";
connectAttr "enemy_rig_v05_L_mainwing_ctrl_scaleY.o" "enemy_rig_v05RN.phl[393]";
connectAttr "enemy_rig_v05_L_mainwing_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[394]";
connectAttr "enemy_rig_v05_L_up_midwing_ctrl_translateX.o" "enemy_rig_v05RN.phl[395]"
		;
connectAttr "enemy_rig_v05_L_up_midwing_ctrl_translateY.o" "enemy_rig_v05RN.phl[396]"
		;
connectAttr "enemy_rig_v05_L_up_midwing_ctrl_translateZ.o" "enemy_rig_v05RN.phl[397]"
		;
connectAttr "enemy_rig_v05_L_up_midwing_ctrl_rotateY.o" "enemy_rig_v05RN.phl[398]"
		;
connectAttr "enemy_rig_v05_L_up_midwing_ctrl_rotateX.o" "enemy_rig_v05RN.phl[399]"
		;
connectAttr "enemy_rig_v05_L_up_midwing_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[400]"
		;
connectAttr "enemy_rig_v05_L_up_midwing_ctrl_scaleX.o" "enemy_rig_v05RN.phl[401]"
		;
connectAttr "enemy_rig_v05_L_up_midwing_ctrl_scaleY.o" "enemy_rig_v05RN.phl[402]"
		;
connectAttr "enemy_rig_v05_L_up_midwing_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[403]"
		;
connectAttr "enemy_rig_v05_L_up_midwing_ctrl_visibility.o" "enemy_rig_v05RN.phl[404]"
		;
connectAttr "enemy_rig_v05_L_up_endwing_ctrl_translateX.o" "enemy_rig_v05RN.phl[405]"
		;
connectAttr "enemy_rig_v05_L_up_endwing_ctrl_translateY.o" "enemy_rig_v05RN.phl[406]"
		;
connectAttr "enemy_rig_v05_L_up_endwing_ctrl_translateZ.o" "enemy_rig_v05RN.phl[407]"
		;
connectAttr "enemy_rig_v05_L_up_endwing_ctrl_rotateY.o" "enemy_rig_v05RN.phl[408]"
		;
connectAttr "enemy_rig_v05_L_up_endwing_ctrl_rotateX.o" "enemy_rig_v05RN.phl[409]"
		;
connectAttr "enemy_rig_v05_L_up_endwing_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[410]"
		;
connectAttr "enemy_rig_v05_L_up_endwing_ctrl_scaleX.o" "enemy_rig_v05RN.phl[411]"
		;
connectAttr "enemy_rig_v05_L_up_endwing_ctrl_scaleY.o" "enemy_rig_v05RN.phl[412]"
		;
connectAttr "enemy_rig_v05_L_up_endwing_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[413]"
		;
connectAttr "enemy_rig_v05_L_up_endwing_ctrl_visibility.o" "enemy_rig_v05RN.phl[414]"
		;
connectAttr "enemy_rig_v05_L_low_midwing_ctrl_translateX.o" "enemy_rig_v05RN.phl[415]"
		;
connectAttr "enemy_rig_v05_L_low_midwing_ctrl_translateY.o" "enemy_rig_v05RN.phl[416]"
		;
connectAttr "enemy_rig_v05_L_low_midwing_ctrl_translateZ.o" "enemy_rig_v05RN.phl[417]"
		;
connectAttr "enemy_rig_v05_L_low_midwing_ctrl_rotateY.o" "enemy_rig_v05RN.phl[418]"
		;
connectAttr "enemy_rig_v05_L_low_midwing_ctrl_rotateX.o" "enemy_rig_v05RN.phl[419]"
		;
connectAttr "enemy_rig_v05_L_low_midwing_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[420]"
		;
connectAttr "enemy_rig_v05_L_low_midwing_ctrl_scaleX.o" "enemy_rig_v05RN.phl[421]"
		;
connectAttr "enemy_rig_v05_L_low_midwing_ctrl_scaleY.o" "enemy_rig_v05RN.phl[422]"
		;
connectAttr "enemy_rig_v05_L_low_midwing_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[423]"
		;
connectAttr "enemy_rig_v05_L_low_midwing_ctrl_visibility.o" "enemy_rig_v05RN.phl[424]"
		;
connectAttr "enemy_rig_v05_L_low_endwing_ctrl_translateX.o" "enemy_rig_v05RN.phl[425]"
		;
connectAttr "enemy_rig_v05_L_low_endwing_ctrl_translateY.o" "enemy_rig_v05RN.phl[426]"
		;
connectAttr "enemy_rig_v05_L_low_endwing_ctrl_translateZ.o" "enemy_rig_v05RN.phl[427]"
		;
connectAttr "enemy_rig_v05_L_low_endwing_ctrl_rotateY.o" "enemy_rig_v05RN.phl[428]"
		;
connectAttr "enemy_rig_v05_L_low_endwing_ctrl_rotateX.o" "enemy_rig_v05RN.phl[429]"
		;
connectAttr "enemy_rig_v05_L_low_endwing_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[430]"
		;
connectAttr "enemy_rig_v05_L_low_endwing_ctrl_scaleX.o" "enemy_rig_v05RN.phl[431]"
		;
connectAttr "enemy_rig_v05_L_low_endwing_ctrl_scaleY.o" "enemy_rig_v05RN.phl[432]"
		;
connectAttr "enemy_rig_v05_L_low_endwing_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[433]"
		;
connectAttr "enemy_rig_v05_L_low_endwing_ctrl_visibility.o" "enemy_rig_v05RN.phl[434]"
		;
connectAttr "EYES.di" "enemy_rig_v05RN.phl[1]";
connectAttr "EYES.di" "enemy_rig_v05RN.phl[2]";
connectAttr "teeth.di" "enemy_rig_v05RN.phl[3]";
connectAttr "teeth.di" "enemy_rig_v05RN.phl[4]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "EYES.id";
connectAttr "layerManager.dli[2]" "teeth.id";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of enemy_animation_attack_v01.ma
