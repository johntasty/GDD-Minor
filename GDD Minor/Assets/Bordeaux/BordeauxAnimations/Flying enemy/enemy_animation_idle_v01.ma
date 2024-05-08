//Maya ASCII 2022 scene
//Name: enemy_animation_idle_v01.ma
//Last modified: Tue, May 07, 2024 08:01:06 PM
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
fileInfo "UUID" "774C403C-4C67-F9B8-5F61-59B355F25C80";
createNode transform -s -n "persp";
	rename -uid "89BDCF85-4E60-872D-8103-D69E20103CAD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 20.897519427996851 -1.1433068596543643 39.635672457787443 ;
	setAttr ".r" -type "double3" 1.4616472704883041 27.799999999994061 -1.6854138272343427e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "72D433F8-46A0-5336-1235-768FE422C8D9";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 44.821869662026977;
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
	rename -uid "394C5513-4A61-F866-7A8F-A8A9D58AB566";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "ED1C2BCF-490C-584B-88B0-D9A1AA5D6E23";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "22207E4B-4FD6-6E98-A855-A5B8CF816190";
createNode displayLayerManager -n "layerManager";
	rename -uid "9BAB8691-4EA3-FB03-5428-2EB6697C6455";
createNode displayLayer -n "defaultLayer";
	rename -uid "77B55415-447A-18BF-874C-CBBD05235DFC";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7D23B750-433C-0672-D6E6-BBB56CD72458";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "3EA3DB6E-438F-FD7B-EE56-629932339586";
	setAttr ".g" yes;
createNode reference -n "enemy_rig_v05RN";
	rename -uid "30D0B47E-42BF-E8EB-40E2-E59880B78B13";
	setAttr -s 430 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"enemy_rig_v05RN"
		"enemy_rig_v05_enemy_v03RN" 0
		"enemy_rig_v05RN" 0
		"enemy_rig_v05RN" 430
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[1]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[2]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[3]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[4]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[5]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[6]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[7]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[8]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[9]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[10]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[11]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[12]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[13]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[14]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[15]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[16]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[17]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[18]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[19]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[20]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[21]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[22]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[23]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[24]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[25]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[26]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[27]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[28]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[29]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[30]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[31]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[32]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[33]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[34]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[35]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[36]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[37]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[38]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[39]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[40]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_C_spine04_off|enemy_rig_v05_C_spine04_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[41]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_C_spine04_off|enemy_rig_v05_C_spine04_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[42]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_C_spine04_off|enemy_rig_v05_C_spine04_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[43]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_C_spine04_off|enemy_rig_v05_C_spine04_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[44]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_C_spine04_off|enemy_rig_v05_C_spine04_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[45]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_C_spine04_off|enemy_rig_v05_C_spine04_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[46]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_C_spine04_off|enemy_rig_v05_C_spine04_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[47]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_C_spine04_off|enemy_rig_v05_C_spine04_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[48]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_C_spine04_off|enemy_rig_v05_C_spine04_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[49]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_C_spine04_off|enemy_rig_v05_C_spine04_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[50]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[51]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[52]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[53]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[54]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[55]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[56]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[57]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[58]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[59]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[60]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[61]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[62]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[63]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[64]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[65]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[66]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[67]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[68]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[69]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[70]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl|enemy_rig_v05_R_low_paw03_off|enemy_rig_v05_R_low_paw03_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[71]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl|enemy_rig_v05_R_low_paw03_off|enemy_rig_v05_R_low_paw03_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[72]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl|enemy_rig_v05_R_low_paw03_off|enemy_rig_v05_R_low_paw03_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[73]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl|enemy_rig_v05_R_low_paw03_off|enemy_rig_v05_R_low_paw03_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[74]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl|enemy_rig_v05_R_low_paw03_off|enemy_rig_v05_R_low_paw03_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[75]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl|enemy_rig_v05_R_low_paw03_off|enemy_rig_v05_R_low_paw03_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[76]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl|enemy_rig_v05_R_low_paw03_off|enemy_rig_v05_R_low_paw03_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[77]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl|enemy_rig_v05_R_low_paw03_off|enemy_rig_v05_R_low_paw03_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[78]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl|enemy_rig_v05_R_low_paw03_off|enemy_rig_v05_R_low_paw03_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[79]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_R_low_paw01_off|enemy_rig_v05_R_low_paw01_ctrl|enemy_rig_v05_R_low_paw02_off|enemy_rig_v05_R_low_paw02_ctrl|enemy_rig_v05_R_low_paw03_off|enemy_rig_v05_R_low_paw03_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[80]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[81]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[82]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[83]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[84]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[85]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[86]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[87]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[88]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[89]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[90]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[91]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[92]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[93]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[94]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[95]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[96]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[97]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[98]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[99]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[100]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl|enemy_rig_v05_L_low_paw03_off|enemy_rig_v05_L_low_paw03_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[101]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl|enemy_rig_v05_L_low_paw03_off|enemy_rig_v05_L_low_paw03_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[102]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl|enemy_rig_v05_L_low_paw03_off|enemy_rig_v05_L_low_paw03_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[103]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl|enemy_rig_v05_L_low_paw03_off|enemy_rig_v05_L_low_paw03_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[104]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl|enemy_rig_v05_L_low_paw03_off|enemy_rig_v05_L_low_paw03_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[105]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl|enemy_rig_v05_L_low_paw03_off|enemy_rig_v05_L_low_paw03_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[106]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl|enemy_rig_v05_L_low_paw03_off|enemy_rig_v05_L_low_paw03_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[107]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl|enemy_rig_v05_L_low_paw03_off|enemy_rig_v05_L_low_paw03_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[108]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl|enemy_rig_v05_L_low_paw03_off|enemy_rig_v05_L_low_paw03_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[109]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_C_spine03_off|enemy_rig_v05_C_spine03_ctrl|enemy_rig_v05_L_low_paw01_off|enemy_rig_v05_L_low_paw01_ctrl|enemy_rig_v05_L_low_paw02_off|enemy_rig_v05_L_low_paw02_ctrl|enemy_rig_v05_L_low_paw03_off|enemy_rig_v05_L_low_paw03_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[110]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[111]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[112]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[113]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[114]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[115]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[116]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[117]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[118]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[119]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[120]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[121]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[122]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[123]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[124]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[125]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[126]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[127]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[128]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[129]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[130]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl|enemy_rig_v05_L_mid_paw03_off|enemy_rig_v05_L_mid_paw03_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[131]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl|enemy_rig_v05_L_mid_paw03_off|enemy_rig_v05_L_mid_paw03_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[132]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl|enemy_rig_v05_L_mid_paw03_off|enemy_rig_v05_L_mid_paw03_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[133]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl|enemy_rig_v05_L_mid_paw03_off|enemy_rig_v05_L_mid_paw03_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[134]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl|enemy_rig_v05_L_mid_paw03_off|enemy_rig_v05_L_mid_paw03_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[135]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl|enemy_rig_v05_L_mid_paw03_off|enemy_rig_v05_L_mid_paw03_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[136]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl|enemy_rig_v05_L_mid_paw03_off|enemy_rig_v05_L_mid_paw03_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[137]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl|enemy_rig_v05_L_mid_paw03_off|enemy_rig_v05_L_mid_paw03_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[138]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl|enemy_rig_v05_L_mid_paw03_off|enemy_rig_v05_L_mid_paw03_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[139]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_L_mid_paw01_off|enemy_rig_v05_L_mid_paw01_ctrl|enemy_rig_v05_L_mid_paw02_off|enemy_rig_v05_L_mid_paw02_ctrl|enemy_rig_v05_L_mid_paw03_off|enemy_rig_v05_L_mid_paw03_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[140]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[141]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[142]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[143]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[144]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[145]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[146]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[147]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[148]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[149]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[150]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[151]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[152]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[153]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[154]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[155]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[156]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[157]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[158]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[159]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[160]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl|enemy_rig_v05_R_mid_paw03_off|enemy_rig_v05_R_mid_paw03_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[161]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl|enemy_rig_v05_R_mid_paw03_off|enemy_rig_v05_R_mid_paw03_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[162]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl|enemy_rig_v05_R_mid_paw03_off|enemy_rig_v05_R_mid_paw03_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[163]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl|enemy_rig_v05_R_mid_paw03_off|enemy_rig_v05_R_mid_paw03_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[164]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl|enemy_rig_v05_R_mid_paw03_off|enemy_rig_v05_R_mid_paw03_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[165]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl|enemy_rig_v05_R_mid_paw03_off|enemy_rig_v05_R_mid_paw03_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[166]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl|enemy_rig_v05_R_mid_paw03_off|enemy_rig_v05_R_mid_paw03_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[167]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl|enemy_rig_v05_R_mid_paw03_off|enemy_rig_v05_R_mid_paw03_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[168]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl|enemy_rig_v05_R_mid_paw03_off|enemy_rig_v05_R_mid_paw03_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[169]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_C_spine02_off|enemy_rig_v05_C_spine02_ctrl|enemy_rig_v05_R_mid_paw01_off|enemy_rig_v05_R_mid_paw01_ctrl|enemy_rig_v05_R_mid_paw02_off|enemy_rig_v05_R_mid_paw02_ctrl|enemy_rig_v05_R_mid_paw03_off|enemy_rig_v05_R_mid_paw03_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[170]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[171]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[172]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[173]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[174]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[175]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[176]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[177]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[178]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[179]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[180]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[181]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[182]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[183]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[184]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[185]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[186]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[187]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[188]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[189]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[190]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl|enemy_rig_v05_L_up_paw03_off|enemy_rig_v05_L_up_paw03_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[191]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl|enemy_rig_v05_L_up_paw03_off|enemy_rig_v05_L_up_paw03_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[192]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl|enemy_rig_v05_L_up_paw03_off|enemy_rig_v05_L_up_paw03_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[193]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl|enemy_rig_v05_L_up_paw03_off|enemy_rig_v05_L_up_paw03_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[194]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl|enemy_rig_v05_L_up_paw03_off|enemy_rig_v05_L_up_paw03_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[195]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl|enemy_rig_v05_L_up_paw03_off|enemy_rig_v05_L_up_paw03_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[196]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl|enemy_rig_v05_L_up_paw03_off|enemy_rig_v05_L_up_paw03_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[197]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl|enemy_rig_v05_L_up_paw03_off|enemy_rig_v05_L_up_paw03_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[198]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl|enemy_rig_v05_L_up_paw03_off|enemy_rig_v05_L_up_paw03_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[199]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_L_up_paw01_off|enemy_rig_v05_L_up_paw01_ctrl|enemy_rig_v05_L_up_paw02_off|enemy_rig_v05_L_up_paw02_ctrl|enemy_rig_v05_L_up_paw03_off|enemy_rig_v05_L_up_paw03_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[200]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[201]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[202]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[203]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[204]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[205]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[206]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[207]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[208]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[209]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[210]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[211]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[212]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[213]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[214]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[215]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[216]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[217]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[218]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[219]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[220]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl|enemy_rig_v05_R_up_paw03_off|enemy_rig_v05_R_up_paw03_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[221]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl|enemy_rig_v05_R_up_paw03_off|enemy_rig_v05_R_up_paw03_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[222]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl|enemy_rig_v05_R_up_paw03_off|enemy_rig_v05_R_up_paw03_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[223]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl|enemy_rig_v05_R_up_paw03_off|enemy_rig_v05_R_up_paw03_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[224]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl|enemy_rig_v05_R_up_paw03_off|enemy_rig_v05_R_up_paw03_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[225]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl|enemy_rig_v05_R_up_paw03_off|enemy_rig_v05_R_up_paw03_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[226]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl|enemy_rig_v05_R_up_paw03_off|enemy_rig_v05_R_up_paw03_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[227]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl|enemy_rig_v05_R_up_paw03_off|enemy_rig_v05_R_up_paw03_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[228]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl|enemy_rig_v05_R_up_paw03_off|enemy_rig_v05_R_up_paw03_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[229]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_spine01_off|enemy_rig_v05_C_spine01_ctrl|enemy_rig_v05_R_up_paw01_off|enemy_rig_v05_R_up_paw01_ctrl|enemy_rig_v05_R_up_paw02_off|enemy_rig_v05_R_up_paw02_ctrl|enemy_rig_v05_R_up_paw03_off|enemy_rig_v05_R_up_paw03_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[230]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[231]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[232]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[233]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[234]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[235]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[236]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[237]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[238]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[239]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[240]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[241]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[242]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[243]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[244]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[245]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[246]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[247]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[248]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[249]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[250]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl|enemy_rig_v05_R_up_endwing_off|enemy_rig_v05_R_up_endwing_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[251]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl|enemy_rig_v05_R_up_endwing_off|enemy_rig_v05_R_up_endwing_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[252]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl|enemy_rig_v05_R_up_endwing_off|enemy_rig_v05_R_up_endwing_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[253]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl|enemy_rig_v05_R_up_endwing_off|enemy_rig_v05_R_up_endwing_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[254]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl|enemy_rig_v05_R_up_endwing_off|enemy_rig_v05_R_up_endwing_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[255]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl|enemy_rig_v05_R_up_endwing_off|enemy_rig_v05_R_up_endwing_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[256]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl|enemy_rig_v05_R_up_endwing_off|enemy_rig_v05_R_up_endwing_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[257]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl|enemy_rig_v05_R_up_endwing_off|enemy_rig_v05_R_up_endwing_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[258]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl|enemy_rig_v05_R_up_endwing_off|enemy_rig_v05_R_up_endwing_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[259]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_up_midwing_off|enemy_rig_v05_R_up_midwing_ctrl|enemy_rig_v05_R_up_endwing_off|enemy_rig_v05_R_up_endwing_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[260]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[261]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[262]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[263]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[264]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[265]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[266]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[267]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[268]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[269]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[270]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl|enemy_rig_v05_R_low_endwing_off|enemy_rig_v05_R_low_endwing_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[271]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl|enemy_rig_v05_R_low_endwing_off|enemy_rig_v05_R_low_endwing_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[272]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl|enemy_rig_v05_R_low_endwing_off|enemy_rig_v05_R_low_endwing_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[273]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl|enemy_rig_v05_R_low_endwing_off|enemy_rig_v05_R_low_endwing_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[274]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl|enemy_rig_v05_R_low_endwing_off|enemy_rig_v05_R_low_endwing_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[275]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl|enemy_rig_v05_R_low_endwing_off|enemy_rig_v05_R_low_endwing_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[276]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl|enemy_rig_v05_R_low_endwing_off|enemy_rig_v05_R_low_endwing_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[277]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl|enemy_rig_v05_R_low_endwing_off|enemy_rig_v05_R_low_endwing_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[278]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl|enemy_rig_v05_R_low_endwing_off|enemy_rig_v05_R_low_endwing_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[279]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_R_mainwing_off|enemy_rig_v05_R_mainwing_ctrl|enemy_rig_v05_R_low_midwing_off|enemy_rig_v05_R_low_midwing_ctrl|enemy_rig_v05_R_low_endwing_off|enemy_rig_v05_R_low_endwing_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[280]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[281]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[282]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[283]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[284]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[285]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[286]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[287]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[288]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[289]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[290]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[291]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[292]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[293]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[294]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[295]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[296]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[297]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[298]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[299]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[300]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_low_mouth_off|enemy_rig_v05_low_mouth_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[301]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_low_mouth_off|enemy_rig_v05_low_mouth_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[302]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_low_mouth_off|enemy_rig_v05_low_mouth_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[303]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_low_mouth_off|enemy_rig_v05_low_mouth_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[304]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_low_mouth_off|enemy_rig_v05_low_mouth_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[305]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_low_mouth_off|enemy_rig_v05_low_mouth_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[306]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_low_mouth_off|enemy_rig_v05_low_mouth_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[307]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_low_mouth_off|enemy_rig_v05_low_mouth_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[308]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_low_mouth_off|enemy_rig_v05_low_mouth_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[309]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_low_mouth_off|enemy_rig_v05_low_mouth_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[310]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_up_mouth_off|enemy_rig_v05_up_mouth_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[311]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_up_mouth_off|enemy_rig_v05_up_mouth_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[312]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_up_mouth_off|enemy_rig_v05_up_mouth_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[313]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_up_mouth_off|enemy_rig_v05_up_mouth_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[314]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_up_mouth_off|enemy_rig_v05_up_mouth_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[315]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_up_mouth_off|enemy_rig_v05_up_mouth_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[316]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_up_mouth_off|enemy_rig_v05_up_mouth_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[317]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_up_mouth_off|enemy_rig_v05_up_mouth_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[318]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_up_mouth_off|enemy_rig_v05_up_mouth_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[319]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_up_mouth_off|enemy_rig_v05_up_mouth_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[320]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[321]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[322]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[323]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[324]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[325]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[326]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[327]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[328]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[329]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[330]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[331]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[332]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[333]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[334]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[335]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[336]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[337]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[338]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[339]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[340]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl|enemy_rig_v05_L_antenna03_off|enemy_rig_v05_L_antenna03_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[341]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl|enemy_rig_v05_L_antenna03_off|enemy_rig_v05_L_antenna03_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[342]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl|enemy_rig_v05_L_antenna03_off|enemy_rig_v05_L_antenna03_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[343]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl|enemy_rig_v05_L_antenna03_off|enemy_rig_v05_L_antenna03_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[344]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl|enemy_rig_v05_L_antenna03_off|enemy_rig_v05_L_antenna03_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[345]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl|enemy_rig_v05_L_antenna03_off|enemy_rig_v05_L_antenna03_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[346]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl|enemy_rig_v05_L_antenna03_off|enemy_rig_v05_L_antenna03_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[347]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl|enemy_rig_v05_L_antenna03_off|enemy_rig_v05_L_antenna03_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[348]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl|enemy_rig_v05_L_antenna03_off|enemy_rig_v05_L_antenna03_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[349]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_L_antenna01_off|enemy_rig_v05_L_antenna01_ctrl|enemy_rig_v05_L_antenna02_off|enemy_rig_v05_L_antenna02_ctrl|enemy_rig_v05_L_antenna03_off|enemy_rig_v05_L_antenna03_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[350]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[351]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[352]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[353]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[354]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[355]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[356]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[357]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[358]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[359]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[360]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[361]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[362]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[363]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[364]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[365]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[366]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[367]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[368]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[369]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[370]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl|enemy_rig_v05_R_antenna03_off|enemy_rig_v05_R_antenna03_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[371]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl|enemy_rig_v05_R_antenna03_off|enemy_rig_v05_R_antenna03_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[372]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl|enemy_rig_v05_R_antenna03_off|enemy_rig_v05_R_antenna03_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[373]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl|enemy_rig_v05_R_antenna03_off|enemy_rig_v05_R_antenna03_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[374]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl|enemy_rig_v05_R_antenna03_off|enemy_rig_v05_R_antenna03_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[375]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl|enemy_rig_v05_R_antenna03_off|enemy_rig_v05_R_antenna03_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[376]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl|enemy_rig_v05_R_antenna03_off|enemy_rig_v05_R_antenna03_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[377]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl|enemy_rig_v05_R_antenna03_off|enemy_rig_v05_R_antenna03_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[378]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl|enemy_rig_v05_R_antenna03_off|enemy_rig_v05_R_antenna03_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[379]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_C_neck_off|enemy_rig_v05_C_neck_ctrl|enemy_rig_v05_C_head_off|enemy_rig_v05_C_head_ctrl|enemy_rig_v05_R_antenna01_off|enemy_rig_v05_R_antenna01_ctrl|enemy_rig_v05_R_antenna02_off|enemy_rig_v05_R_antenna02_ctrl|enemy_rig_v05_R_antenna03_off|enemy_rig_v05_R_antenna03_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[380]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[381]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[382]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[383]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[384]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[385]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[386]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[387]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[388]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[389]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[390]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[391]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[392]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[393]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[394]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[395]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[396]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[397]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[398]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[399]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[400]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl|enemy_rig_v05_L_up_endwing_off|enemy_rig_v05_L_up_endwing_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[401]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl|enemy_rig_v05_L_up_endwing_off|enemy_rig_v05_L_up_endwing_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[402]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl|enemy_rig_v05_L_up_endwing_off|enemy_rig_v05_L_up_endwing_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[403]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl|enemy_rig_v05_L_up_endwing_off|enemy_rig_v05_L_up_endwing_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[404]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl|enemy_rig_v05_L_up_endwing_off|enemy_rig_v05_L_up_endwing_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[405]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl|enemy_rig_v05_L_up_endwing_off|enemy_rig_v05_L_up_endwing_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[406]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl|enemy_rig_v05_L_up_endwing_off|enemy_rig_v05_L_up_endwing_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[407]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl|enemy_rig_v05_L_up_endwing_off|enemy_rig_v05_L_up_endwing_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[408]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl|enemy_rig_v05_L_up_endwing_off|enemy_rig_v05_L_up_endwing_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[409]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_up_midwing_off|enemy_rig_v05_L_up_midwing_ctrl|enemy_rig_v05_L_up_endwing_off|enemy_rig_v05_L_up_endwing_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[410]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[411]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[412]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[413]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[414]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[415]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[416]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[417]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[418]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[419]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[420]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl|enemy_rig_v05_L_low_endwing_off|enemy_rig_v05_L_low_endwing_ctrl.translateX" 
		"enemy_rig_v05RN.placeHolderList[421]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl|enemy_rig_v05_L_low_endwing_off|enemy_rig_v05_L_low_endwing_ctrl.translateY" 
		"enemy_rig_v05RN.placeHolderList[422]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl|enemy_rig_v05_L_low_endwing_off|enemy_rig_v05_L_low_endwing_ctrl.translateZ" 
		"enemy_rig_v05RN.placeHolderList[423]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl|enemy_rig_v05_L_low_endwing_off|enemy_rig_v05_L_low_endwing_ctrl.rotateY" 
		"enemy_rig_v05RN.placeHolderList[424]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl|enemy_rig_v05_L_low_endwing_off|enemy_rig_v05_L_low_endwing_ctrl.rotateX" 
		"enemy_rig_v05RN.placeHolderList[425]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl|enemy_rig_v05_L_low_endwing_off|enemy_rig_v05_L_low_endwing_ctrl.rotateZ" 
		"enemy_rig_v05RN.placeHolderList[426]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl|enemy_rig_v05_L_low_endwing_off|enemy_rig_v05_L_low_endwing_ctrl.scaleX" 
		"enemy_rig_v05RN.placeHolderList[427]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl|enemy_rig_v05_L_low_endwing_off|enemy_rig_v05_L_low_endwing_ctrl.scaleY" 
		"enemy_rig_v05RN.placeHolderList[428]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl|enemy_rig_v05_L_low_endwing_off|enemy_rig_v05_L_low_endwing_ctrl.scaleZ" 
		"enemy_rig_v05RN.placeHolderList[429]" ""
		5 4 "enemy_rig_v05RN" "|enemy_rig_v05_Moth_GRP|enemy_rig_v05_controls_grp|enemy_rig_v05_C_body_off|enemy_rig_v05_C_body_ctrl|enemy_rig_v05_L_mainwing_off|enemy_rig_v05_L_mainwing_ctrl|enemy_rig_v05_L_low_midwing_off|enemy_rig_v05_L_low_midwing_ctrl|enemy_rig_v05_L_low_endwing_off|enemy_rig_v05_L_low_endwing_ctrl.visibility" 
		"enemy_rig_v05RN.placeHolderList[430]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTA -n "enemy_rig_v05_C_body_ctrl_rotateX";
	rename -uid "11FE0F5D-451D-21DB-3B47-41A16BAAB449";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_C_body_ctrl_rotateY";
	rename -uid "64634895-459E-32D9-2B04-CBA9605A1796";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_C_body_ctrl_rotateZ";
	rename -uid "2B457025-4F3E-3506-7616-D690C547BF19";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_C_neck_ctrl_rotateX";
	rename -uid "3074A25F-4731-4A58-F087-55BDFBBE6A95";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_C_neck_ctrl_rotateY";
	rename -uid "90DF675D-4C1C-B2AA-E61D-9088332C7CC4";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_C_neck_ctrl_rotateZ";
	rename -uid "66ABEF80-4E0C-A306-15F2-30B9E381FAD6";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_C_head_ctrl_rotateX";
	rename -uid "E7F4BCD8-480B-2612-112B-6A9FD956C9B2";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_C_head_ctrl_rotateY";
	rename -uid "8317B6C3-466D-261C-63F0-F58D38DB0FB3";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_C_head_ctrl_rotateZ";
	rename -uid "77861AE2-45CE-F96B-34F3-1ABBA6AFA815";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_antenna01_ctrl_rotateX";
	rename -uid "62239F68-4524-BF53-BF45-AA93E36B489B";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_antenna01_ctrl_rotateY";
	rename -uid "7191FDF1-43EF-C7C5-3039-7EB516F67B9A";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_antenna01_ctrl_rotateZ";
	rename -uid "95B6991B-4726-C8EC-80EA-32ADFE5B9995";
	setAttr ".tan" 9;
	setAttr -s 7 ".ktv[0:6]"  1 0 15 25.129471246346153 20 -13.337667680121175
		 25 0 35 25.129471246346153 40 -15.599769588964596 45 0;
	setAttr -s 7 ".kit[3:6]"  1 1 9 1;
	setAttr -s 7 ".kot[3:6]"  1 1 9 1;
	setAttr -s 7 ".kix[3:6]"  0.58333333333333337 0.58333333333333337 
		0.20833333333333348 0.58333333333333337;
	setAttr -s 7 ".kiy[3:6]"  0.43859201253398344 0 -0.21929600626699183 
		0.43859201253398344;
	setAttr -s 7 ".kox[3:6]"  0.58333333333333337 0.41666666666666674 
		0.20833333333333326 0.58333333333333337;
	setAttr -s 7 ".koy[3:6]"  0.43859201253398344 0 -0.21929600626699161 
		0.43859201253398344;
createNode animCurveTA -n "enemy_rig_v05_L_antenna02_ctrl_rotateX";
	rename -uid "E51EC7AB-4A6A-D44E-B68D-7886B4F59263";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_antenna02_ctrl_rotateY";
	rename -uid "48383940-466F-B786-C98D-66BC034DB41B";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_antenna02_ctrl_rotateZ";
	rename -uid "E48AF63F-479D-29F1-C815-31A6294A53F9";
	setAttr ".tan" 9;
	setAttr -s 7 ".ktv[0:6]"  1 0 15 29.196815885769325 20 -25.787122440446463
		 25 0 35 29.196815885769325 40 -26.25145582822714 45 0;
	setAttr -s 7 ".kit[3:6]"  1 1 9 1;
	setAttr -s 7 ".kot[3:6]"  1 1 9 1;
	setAttr -s 7 ".kix[3:6]"  0.58333333333333337 0.58333333333333337 
		0.20833333333333348 0.58333333333333337;
	setAttr -s 7 ".kiy[3:6]"  0.50958056830525933 0 -0.25479028415262983 
		0.50958056830525933;
	setAttr -s 7 ".kox[3:6]"  0.58333333333333337 0.41666666666666674 
		0.20833333333333326 0.58333333333333337;
	setAttr -s 7 ".koy[3:6]"  0.50958056830525933 0 -0.25479028415262955 
		0.50958056830525933;
createNode animCurveTA -n "enemy_rig_v05_L_antenna03_ctrl_rotateX";
	rename -uid "D5B5B40C-4C2C-4E72-8B83-BFA9E288B076";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_antenna03_ctrl_rotateY";
	rename -uid "E41B7851-4F5A-E6FD-0079-8894A0D87F08";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_antenna03_ctrl_rotateZ";
	rename -uid "A223464C-4C3F-283C-4D72-2796CDFA499F";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 -40.228898633701654 25 0 35 -40.228898633701654
		 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  -0.70212673560914218 0 -0.70212673560914218;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  -0.70212673560914218 0 -0.70212673560914218;
createNode animCurveTA -n "enemy_rig_v05_R_antenna01_ctrl_rotateX";
	rename -uid "DC0ACA53-48B8-DF3A-D66B-A8BAADF502C1";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_antenna01_ctrl_rotateY";
	rename -uid "65AA7457-4C33-E83B-1E5D-E7A3CE58ADA0";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_antenna01_ctrl_rotateZ";
	rename -uid "74BB611A-4F88-B215-4095-D9B44C62A0DB";
	setAttr ".tan" 9;
	setAttr -s 7 ".ktv[0:6]"  1 0 15 25.129471246346153 20 -13.337667680121175
		 25 0 35 25.129471246346153 40 -11.579396084419217 45 0;
	setAttr -s 7 ".kit[3:6]"  1 1 9 1;
	setAttr -s 7 ".kot[3:6]"  1 1 9 1;
	setAttr -s 7 ".kix[3:6]"  0.58333333333333337 0.58333333333333337 
		0.20833333333333348 0.58333333333333337;
	setAttr -s 7 ".kiy[3:6]"  0.43859201253398344 0 -0.21929600626699183 
		0.43859201253398344;
	setAttr -s 7 ".kox[3:6]"  0.58333333333333337 0.41666666666666674 
		0.20833333333333326 0.58333333333333337;
	setAttr -s 7 ".koy[3:6]"  0.43859201253398344 0 -0.21929600626699161 
		0.43859201253398344;
createNode animCurveTA -n "enemy_rig_v05_R_antenna02_ctrl_rotateX";
	rename -uid "ED24058E-41E6-3E55-D2C1-6F8B0A9CA69A";
	setAttr ".tan" 9;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 0 25 0 35 0 40 0.74783528773695129
		 45 0;
	setAttr -s 6 ".kit[2:5]"  1 1 9 1;
	setAttr -s 6 ".kot[2:5]"  1 1 9 1;
	setAttr -s 6 ".kix[2:5]"  0.58333333333333337 0.58333333333333337 
		0.20833333333333348 0.58333333333333337;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.58333333333333337 0.41666666666666674 
		0.20833333333333326 0.58333333333333337;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_antenna02_ctrl_rotateY";
	rename -uid "CD0EB383-4530-F4CA-B1C3-54A359F57A44";
	setAttr ".tan" 9;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 0 25 0 35 0 40 -0.34737112058185438
		 45 0;
	setAttr -s 6 ".kit[2:5]"  1 1 9 1;
	setAttr -s 6 ".kot[2:5]"  1 1 9 1;
	setAttr -s 6 ".kix[2:5]"  0.58333333333333337 0.58333333333333337 
		0.20833333333333348 0.58333333333333337;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.58333333333333337 0.41666666666666674 
		0.20833333333333326 0.58333333333333337;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_antenna02_ctrl_rotateZ";
	rename -uid "3D4551B1-4632-897F-5134-2C89D17528B4";
	setAttr ".tan" 9;
	setAttr -s 7 ".ktv[0:6]"  1 0 15 30.787316310050588 20 -25.340079261902158
		 25 0 35 30.787316310050588 40 -33.395518686718013 45 0;
	setAttr -s 7 ".kit[3:6]"  1 1 9 1;
	setAttr -s 7 ".kot[3:6]"  1 1 9 1;
	setAttr -s 7 ".kix[3:6]"  0.58333333333333337 0.58333333333333337 
		0.20833333333333348 0.58333333333333337;
	setAttr -s 7 ".kiy[3:6]"  0.53734003746333414 0 -0.26867001873166724 
		0.53734003746333414;
	setAttr -s 7 ".kox[3:6]"  0.58333333333333337 0.41666666666666674 
		0.20833333333333326 0.58333333333333337;
	setAttr -s 7 ".koy[3:6]"  0.53734003746333414 0 -0.2686700187316669 
		0.53734003746333414;
createNode animCurveTA -n "enemy_rig_v05_R_antenna03_ctrl_rotateX";
	rename -uid "9713385C-4AFA-0F95-7B70-BC827B6EAE05";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_antenna03_ctrl_rotateY";
	rename -uid "E4E67984-42FB-7D52-595A-0F918490E2BA";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_antenna03_ctrl_rotateZ";
	rename -uid "A9828F39-4EBF-99B7-39BD-09B4172A4016";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 -53.519268694021264 25 0 35 -53.519268694021264
		 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  -0.93408745197019671 0 -0.93408745197019671;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  -0.93408745197019671 0 -0.93408745197019671;
createNode animCurveTA -n "enemy_rig_v05_low_mouth_ctrl_rotateX";
	rename -uid "B13F975B-4975-923C-C3FD-5C9676807ECA";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_low_mouth_ctrl_rotateY";
	rename -uid "1134D3F0-48B0-5FFC-D941-0EAD2932B341";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_low_mouth_ctrl_rotateZ";
	rename -uid "3C6D98BA-47FA-917B-F953-B5A159112EDC";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_up_mouth_ctrl_rotateX";
	rename -uid "915069FD-4EAF-00E1-B24F-0ABCCC5B0C50";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_up_mouth_ctrl_rotateY";
	rename -uid "D9ACAE60-4522-54DC-B82C-F6919B313F1C";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_up_mouth_ctrl_rotateZ";
	rename -uid "9842CE7D-4848-F2FD-67A6-12BA0397D66F";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_C_spine01_ctrl_rotateX";
	rename -uid "A3BA3493-43FA-AF39-86CF-649C270378FD";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_C_spine01_ctrl_rotateY";
	rename -uid "4B7C0794-45E2-0BF8-96EB-B5B8C750548E";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_C_spine01_ctrl_rotateZ";
	rename -uid "03352F83-42D2-5C03-9354-A2972A7064D1";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_C_spine02_ctrl_rotateX";
	rename -uid "AD78FEE1-4E9D-ED7F-BA39-0EB863199C10";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_C_spine02_ctrl_rotateY";
	rename -uid "79EDC2F0-407A-4449-A9FC-93AE8E67B971";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_C_spine02_ctrl_rotateZ";
	rename -uid "C5C9C7A4-46CA-F451-3FA5-B28181EF9668";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_C_spine03_ctrl_rotateX";
	rename -uid "FFB1A0BB-491C-C050-F4DC-4DA5A7A38313";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_C_spine03_ctrl_rotateY";
	rename -uid "7C59B092-402E-502D-B141-489D3FD7C7CC";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_C_spine03_ctrl_rotateZ";
	rename -uid "68DB5CDE-48B8-A3E1-4FD2-E9AFE15097E0";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_C_spine04_ctrl_rotateX";
	rename -uid "90EA0A57-4380-8BE2-1FFF-E384CCC7B873";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_C_spine04_ctrl_rotateY";
	rename -uid "E8E4784A-46A0-C5AF-E429-06AE99A6B676";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_C_spine04_ctrl_rotateZ";
	rename -uid "4556BADA-404A-3607-1270-EF8E8971D955";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_low_paw01_ctrl_rotateX";
	rename -uid "62C1642D-45EF-AB64-4785-57AF1E3FA63C";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_low_paw01_ctrl_rotateY";
	rename -uid "C54A36D5-4E9A-E7AA-5D7B-D985E9ED34FD";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_low_paw01_ctrl_rotateZ";
	rename -uid "F944D2EE-4CB4-EC4B-BB3A-1B8500CD8EDC";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_low_paw02_ctrl_rotateX";
	rename -uid "F43339F3-44AE-4DB4-275A-E3BA3BEFBBD7";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_low_paw02_ctrl_rotateY";
	rename -uid "D1024F7C-42BD-3E9F-AE2B-6D91AD3E80C9";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_low_paw02_ctrl_rotateZ";
	rename -uid "C42F1751-4CCD-8DCA-E223-9283E8709E5E";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_low_paw03_ctrl_rotateX";
	rename -uid "2ED9D448-4972-C012-1A0F-9BA7ABA54E15";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_low_paw03_ctrl_rotateY";
	rename -uid "6EAECCA4-4E55-DCD3-86BB-F5BC24D75642";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_low_paw03_ctrl_rotateZ";
	rename -uid "A9BF882C-40AD-47CA-DA5A-6488E4FBFAE2";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_low_paw01_ctrl_rotateX";
	rename -uid "0B48C350-4FC7-E064-D06F-AFBBDAA17A83";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_low_paw01_ctrl_rotateY";
	rename -uid "9825AC0A-4BBB-574F-02EA-5E825A7BCE84";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_low_paw01_ctrl_rotateZ";
	rename -uid "DA358ECC-4336-85E9-2F0E-44B96584B1D1";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_low_paw02_ctrl_rotateX";
	rename -uid "7F687C85-4910-D91E-28E6-4AA5AD49F002";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_low_paw02_ctrl_rotateY";
	rename -uid "30F6AD88-4717-EA0B-C501-22A999747733";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_low_paw02_ctrl_rotateZ";
	rename -uid "32ED7AC5-4024-5E20-1101-4BAD27C120FC";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_low_paw03_ctrl_rotateX";
	rename -uid "9D39C727-4A34-E6F4-CCDF-9BBDFE1EA514";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_low_paw03_ctrl_rotateY";
	rename -uid "BCF90FC4-47E6-20A5-91ED-5E9EDD03B4A0";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_low_paw03_ctrl_rotateZ";
	rename -uid "03C45ED4-4411-44CC-9694-A3BBB2B094CC";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_mid_paw01_ctrl_rotateX";
	rename -uid "34D42009-455F-BB88-9F9C-999D963E7FF0";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_mid_paw01_ctrl_rotateY";
	rename -uid "BEBFFF34-4780-E072-D8E0-42BEAD4901F9";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_mid_paw01_ctrl_rotateZ";
	rename -uid "F757527D-473C-4639-58BF-D0AD6679C25F";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_mid_paw02_ctrl_rotateX";
	rename -uid "349FFB2B-46B0-688F-B67D-B6A41EB6D3FF";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_mid_paw02_ctrl_rotateY";
	rename -uid "40FA9403-4D29-C3E9-8408-5BB1AD7A49B4";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_mid_paw02_ctrl_rotateZ";
	rename -uid "77FE3116-4E1A-7626-279F-5882C6BEED8F";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_mid_paw03_ctrl_rotateX";
	rename -uid "2EEA54FE-4F35-B13A-265C-27B3AC73DEDD";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_mid_paw03_ctrl_rotateY";
	rename -uid "3FDE91AB-463F-A9A2-0573-8AA3B10BB8A7";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_mid_paw03_ctrl_rotateZ";
	rename -uid "6BB293D0-4585-15A1-45C9-44A7970F2A74";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_mid_paw01_ctrl_rotateX";
	rename -uid "7E951655-4549-23C8-90DC-0A9A22B874BC";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_mid_paw01_ctrl_rotateY";
	rename -uid "CB2CE5C7-4F44-5EB6-427A-1E83E86F8A4E";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_mid_paw01_ctrl_rotateZ";
	rename -uid "55883462-45ED-4434-6248-E29A1511FA05";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_mid_paw02_ctrl_rotateX";
	rename -uid "DA6FB9F7-43DF-A9D4-C40E-849DCC3C53A2";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_mid_paw02_ctrl_rotateY";
	rename -uid "6F6ED7D2-46EB-3A1D-669C-BBA05B432411";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_mid_paw02_ctrl_rotateZ";
	rename -uid "B4BCF541-4291-B101-EE90-5DB1B2825CD6";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_mid_paw03_ctrl_rotateX";
	rename -uid "281A83CB-4B5E-5677-7521-F6878F9BDC27";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_mid_paw03_ctrl_rotateY";
	rename -uid "2410D3EF-4BD0-78B4-1DB5-EB880EEE90EB";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_mid_paw03_ctrl_rotateZ";
	rename -uid "628FD363-482C-AAB6-D319-73976D963E92";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_up_paw01_ctrl_rotateX";
	rename -uid "32C4A79C-4FF3-0EDF-02F2-2D99C4A970C7";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_up_paw01_ctrl_rotateY";
	rename -uid "85702D79-438B-1D87-AC4F-CC84389F01D3";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_up_paw01_ctrl_rotateZ";
	rename -uid "758C1C79-498A-B464-7CF8-819642CCBF8D";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_up_paw02_ctrl_rotateX";
	rename -uid "5703FFB5-4DC6-0A52-DC8E-0C8C5DE24AEF";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_up_paw02_ctrl_rotateY";
	rename -uid "2F57C5A4-4DED-FEE7-DC94-3BB680CA3CFD";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_up_paw02_ctrl_rotateZ";
	rename -uid "AA655D4C-4A20-CB41-7468-2F8DA78D5481";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_up_paw03_ctrl_rotateX";
	rename -uid "360FF0A5-4150-C9D7-AE4B-33B714C84B25";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_up_paw03_ctrl_rotateY";
	rename -uid "2FD85242-409A-6291-BDB9-A9A82E567BD4";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_up_paw03_ctrl_rotateZ";
	rename -uid "94626E3A-4C72-349B-AD5E-16BCDBE6791A";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_up_paw01_ctrl_rotateX";
	rename -uid "9B5F8E47-487E-B1A3-174F-2D9BAA53062C";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_up_paw01_ctrl_rotateY";
	rename -uid "C005223F-4907-44DA-C2C9-43A846017146";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_up_paw01_ctrl_rotateZ";
	rename -uid "627F9DF6-4048-BF10-542B-61B969856075";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_up_paw02_ctrl_rotateX";
	rename -uid "1F6CD805-4B7D-F7C1-D951-4898D9F7233A";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_up_paw02_ctrl_rotateY";
	rename -uid "5A420813-4A3A-A519-84B2-91BE7F6F74C8";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_up_paw02_ctrl_rotateZ";
	rename -uid "BB402233-4C34-8948-586A-D2B630211BEF";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_up_paw03_ctrl_rotateX";
	rename -uid "CB5B4866-4166-C900-430E-E7B6E5824320";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_up_paw03_ctrl_rotateY";
	rename -uid "FE1D7AAA-4652-B2BF-365B-FAAFB4820A56";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_up_paw03_ctrl_rotateZ";
	rename -uid "87C5D9EE-4B00-D894-4339-31B13DF2728F";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_mainwing_ctrl_rotateX";
	rename -uid "04291361-4BD1-2ADE-313A-7A9D0CE20FC5";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_mainwing_ctrl_rotateY";
	rename -uid "72D1C6C6-4E88-AD0C-B946-D2B9CA07CDEB";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 54.475684995646816 15 -33.831591110043888
		 25 54.475684995646816 35 -33.831591110043888 45 54.475684995646816;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  -1.5412527215120189 0 -1.5412527215120189;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  -1.5412527215120189 0 -1.5412527215120189;
createNode animCurveTA -n "enemy_rig_v05_L_mainwing_ctrl_rotateZ";
	rename -uid "03C328D3-4E47-3777-DDB6-A29CC6BF2B45";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_low_midwing_ctrl_rotateX";
	rename -uid "9990A93F-4460-4BE6-B482-64BB199E42B6";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_low_midwing_ctrl_rotateY";
	rename -uid "DB1434AA-4E17-6E00-51A6-508A1C9B660F";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 13.050375152073032 15 -35.265082246233248
		 25 13.050375152073032 35 -35.265082246233248 45 13.050375152073032;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  -0.84326381120749794 0 -0.84326381120749794;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  -0.84326381120749794 0 -0.84326381120749794;
createNode animCurveTA -n "enemy_rig_v05_L_low_midwing_ctrl_rotateZ";
	rename -uid "E69CB8D5-4C11-730A-3D7A-55B97A602C5F";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_low_endwing_ctrl_rotateX";
	rename -uid "FCF13E19-4EFB-CBE7-92BD-98A5D759AE93";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_low_endwing_ctrl_rotateY";
	rename -uid "1D1D1C6C-4975-BA7D-65FE-52B4DC6E27F9";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 13.050375152073032 15 -35.265082246233248
		 25 13.050375152073032 35 -35.265082246233248 45 13.050375152073032;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  -0.84326381120749794 0 -0.84326381120749794;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  -0.84326381120749794 0 -0.84326381120749794;
createNode animCurveTA -n "enemy_rig_v05_L_low_endwing_ctrl_rotateZ";
	rename -uid "604020F7-43FF-485B-A7C6-AA9D3CBBD3FC";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_up_midwing_ctrl_rotateX";
	rename -uid "3C13FACD-42AB-A4B9-8036-279BADCD1AD0";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_up_midwing_ctrl_rotateY";
	rename -uid "9315B293-41DC-217E-09A9-1C97617F3717";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 24.816308913903018 15 -23.499148484403243
		 25 24.816308913903018 35 -23.499148484403243 45 24.816308913903018;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  -0.8432638112074976 0 -0.8432638112074976;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  -0.8432638112074976 0 -0.8432638112074976;
createNode animCurveTA -n "enemy_rig_v05_L_up_midwing_ctrl_rotateZ";
	rename -uid "71649EB8-455D-3630-55E6-2198A2919772";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_up_endwing_ctrl_rotateX";
	rename -uid "3607BAFC-4FE9-3573-8701-A082AF897038";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_L_up_endwing_ctrl_rotateY";
	rename -uid "61ECBEA1-4EBC-E05E-6566-B99DA4EA9EA7";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 64.478922792351653 15 16.163465394045428
		 25 64.478922792351653 35 16.163465394045428 45 64.478922792351653;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  -0.84326381120749683 0 -0.84326381120749683;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  -0.84326381120749683 0 -0.84326381120749683;
createNode animCurveTA -n "enemy_rig_v05_L_up_endwing_ctrl_rotateZ";
	rename -uid "55A2405D-4288-B116-C88D-16B932FBE4F4";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_mainwing_ctrl_rotateX";
	rename -uid "D46731BE-4015-D88C-2512-EF967275FE5D";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_mainwing_ctrl_rotateY";
	rename -uid "00D31B15-497C-4198-0288-4EBC7B286F87";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 54.475684995646816 15 -33.831591110043888
		 25 54.475684995646816 35 -33.831591110043888 45 54.475684995646816;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  -1.5412527215120189 0 -1.5412527215120189;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  -1.5412527215120189 0 -1.5412527215120189;
createNode animCurveTA -n "enemy_rig_v05_R_mainwing_ctrl_rotateZ";
	rename -uid "0B686315-4EF9-8732-5FB4-2E92064713CA";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_low_midwing_ctrl_rotateX";
	rename -uid "D8B8143A-4E47-AF92-0581-C2B6C27E6015";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_low_midwing_ctrl_rotateY";
	rename -uid "87CB30C8-4D24-D8FB-644C-959D7A5D1C1B";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 15.383966178796333 15 -32.931491219509951
		 25 15.383966178796333 35 -32.931491219509951 45 15.383966178796333;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  -0.84326381120749794 0 -0.84326381120749794;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  -0.84326381120749794 0 -0.84326381120749794;
createNode animCurveTA -n "enemy_rig_v05_R_low_midwing_ctrl_rotateZ";
	rename -uid "83F2F247-470B-0742-F042-D183C44E6F2B";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_low_endwing_ctrl_rotateX";
	rename -uid "9E8DA723-4BDD-0929-7FD5-2FAD0B8FF9EF";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_low_endwing_ctrl_rotateY";
	rename -uid "EC4886A4-49BD-28C8-1694-5190281E215C";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 15.383966178796333 15 -32.931491219509951
		 25 15.383966178796333 35 -32.931491219509951 45 15.383966178796333;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  -0.84326381120749794 0 -0.84326381120749794;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  -0.84326381120749794 0 -0.84326381120749794;
createNode animCurveTA -n "enemy_rig_v05_R_low_endwing_ctrl_rotateZ";
	rename -uid "7C32E1A3-44E8-BC16-5B16-6C9C0C3EDBF4";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_up_midwing_ctrl_rotateX";
	rename -uid "37B00E28-4C87-C20D-00EA-25856F6ED80D";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_up_midwing_ctrl_rotateY";
	rename -uid "1EE3DF5F-4D4E-9362-34B6-EFBEF8346269";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 24.244322067070417 15 -24.071135331235883
		 25 24.244322067070417 35 -24.071135331235883 45 24.244322067070417;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  -0.84326381120749827 0 -0.84326381120749827;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  -0.84326381120749827 0 -0.84326381120749827;
createNode animCurveTA -n "enemy_rig_v05_R_up_midwing_ctrl_rotateZ";
	rename -uid "390C222C-45E7-D2EE-A693-7A961723E42A";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_up_endwing_ctrl_rotateX";
	rename -uid "613628A5-41C4-DABA-D217-7B84C05E06B4";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "enemy_rig_v05_R_up_endwing_ctrl_rotateY";
	rename -uid "05254BB1-437A-4B3A-A51D-05A282B831AD";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 24.244322067070417 15 -24.071135331235883
		 25 24.244322067070417 35 -24.071135331235883 45 24.244322067070417;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  -0.84326381120749827 0 -0.84326381120749827;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  -0.84326381120749827 0 -0.84326381120749827;
createNode animCurveTA -n "enemy_rig_v05_R_up_endwing_ctrl_rotateZ";
	rename -uid "E0D076BB-4463-16E9-5952-7DBF9D065AF8";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_up_endwing_ctrl_visibility";
	rename -uid "10198F91-4AB8-210C-8C69-79A9698BA061";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_up_endwing_ctrl_translateX";
	rename -uid "0DF5ACE3-446C-1850-28BC-9D86DF2A7B69";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_up_endwing_ctrl_translateY";
	rename -uid "43F1D94F-4BD1-ABF2-B786-1EB951118443";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_up_endwing_ctrl_translateZ";
	rename -uid "B1512E10-4186-1FFD-484A-3A97836BE4FC";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_up_endwing_ctrl_scaleX";
	rename -uid "DCF4ADE4-4FFE-04D6-BAED-50B00687F14D";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_up_endwing_ctrl_scaleY";
	rename -uid "9F5D8247-4E47-AD10-8DB6-B9B40F0A5DF4";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002 45 1.0000000000000002;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_up_endwing_ctrl_scaleZ";
	rename -uid "BDE035B8-4215-5771-23E6-72861B6CCB87";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002 45 1.0000000000000002;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw01_ctrl_visibility";
	rename -uid "5F7F2D98-42E0-A097-D1E7-09B8FBE31487";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_up_paw01_ctrl_translateX";
	rename -uid "EB70DCF9-4CDA-E9DD-7DB9-109208B9C751";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_up_paw01_ctrl_translateY";
	rename -uid "13ED4719-4431-246A-5FD0-26B884D63CD0";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_up_paw01_ctrl_translateZ";
	rename -uid "3E562BD8-4F3F-3842-7D98-CA8472109FBC";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw01_ctrl_scaleX";
	rename -uid "5B325D72-4175-183C-DAF6-FBBC86186DB1";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999967 15 0.99999999999999967
		 25 0.99999999999999967 35 0.99999999999999967 45 0.99999999999999967;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw01_ctrl_scaleY";
	rename -uid "63B25862-47F3-FE6C-EB0C-9AB817C12EC8";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989 45 0.99999999999999989;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw01_ctrl_scaleZ";
	rename -uid "D5AA0081-4F2E-08DC-FDCB-1C9AA2C07EB7";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978 45 0.99999999999999978;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_neck_ctrl_visibility";
	rename -uid "4357D5F4-4B92-1D36-42EC-01BAA1C87197";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_C_neck_ctrl_translateX";
	rename -uid "082066D1-4E38-BFE4-1612-4EB9076A491C";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_C_neck_ctrl_translateY";
	rename -uid "D41E79D5-4355-6712-57E0-33AEC472CAA6";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_C_neck_ctrl_translateZ";
	rename -uid "40031CB8-4B2E-07E9-A426-66A29C530C01";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_neck_ctrl_scaleX";
	rename -uid "ECAD84E9-4FA7-E46A-3EEC-10BC19862869";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_neck_ctrl_scaleY";
	rename -uid "5F04F733-4B2B-0865-0686-7EB84478453E";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002 45 1.0000000000000002;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_neck_ctrl_scaleZ";
	rename -uid "68D1853C-48F6-435A-B276-9C8BB16D670A";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978 45 0.99999999999999978;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna03_ctrl_visibility";
	rename -uid "8702E79B-42C7-EB83-CFF6-3899CABEC7BF";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_antenna03_ctrl_translateX";
	rename -uid "ED0712C0-4A8C-51B9-1C47-6C9185CFB395";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_antenna03_ctrl_translateY";
	rename -uid "C5663F73-464A-D719-D0BE-BBAAEECA1D4A";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_antenna03_ctrl_translateZ";
	rename -uid "A2BE4A94-4CD4-717C-EAE7-DDB725171E5E";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna03_ctrl_scaleX";
	rename -uid "C8C5F7CD-484B-0B1B-E5BB-FCA1C5D05281";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978 45 0.99999999999999978;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna03_ctrl_scaleY";
	rename -uid "B060949C-48ED-700B-D070-B6968B502804";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978 45 0.99999999999999978;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna03_ctrl_scaleZ";
	rename -uid "CA670BCF-4987-6E1C-33B7-858A38680915";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_low_midwing_ctrl_visibility";
	rename -uid "D8F5628F-420F-B872-D0FF-EAA730C8B821";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_low_midwing_ctrl_translateX";
	rename -uid "F25DBFAA-4B77-3390-6AC4-798AF8311DDA";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_low_midwing_ctrl_translateY";
	rename -uid "DDF879A8-453E-1B4B-EB6C-8AA4B4DA56AC";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_low_midwing_ctrl_translateZ";
	rename -uid "46BA0253-403B-9CCD-0987-B0B5129FC701";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_low_midwing_ctrl_scaleX";
	rename -uid "79CA9C79-43A1-50A4-8028-1FBD1E2F40B1";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_low_midwing_ctrl_scaleY";
	rename -uid "DB1F2AD5-41C9-9D3B-EEBC-E7BED0B12A94";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989 45 0.99999999999999989;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_low_midwing_ctrl_scaleZ";
	rename -uid "02384C67-449E-8763-2FAF-8984C403E8A0";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw01_ctrl_visibility";
	rename -uid "EB479D1C-4118-28FE-D5B8-CD8BC50ACD74";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_mid_paw01_ctrl_translateX";
	rename -uid "7D3D6848-48F5-DF30-AB61-EAB3D823B041";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_mid_paw01_ctrl_translateY";
	rename -uid "3A3E0C21-4AFB-6D4E-FC40-999A85982CCF";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_mid_paw01_ctrl_translateZ";
	rename -uid "494539D8-479E-3E57-FE96-7EA453308AE3";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw01_ctrl_scaleX";
	rename -uid "E1B6A690-4623-5F40-6854-4594F34920B0";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw01_ctrl_scaleY";
	rename -uid "F40FC380-4924-6F84-0A49-F181951631F6";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw01_ctrl_scaleZ";
	rename -uid "AF8F09B6-421E-2408-1F20-E38789930FD9";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989 45 0.99999999999999989;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna02_ctrl_visibility";
	rename -uid "6B1EAB8E-4795-0810-863C-CBB804216F61";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_antenna02_ctrl_translateX";
	rename -uid "013ACAA1-4704-B604-3EF3-8E823EA904B1";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_antenna02_ctrl_translateY";
	rename -uid "7B484208-4D70-7BB5-5326-7EB99119BA0A";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_antenna02_ctrl_translateZ";
	rename -uid "C4607EAD-4F4D-433C-68E7-64BB5421D16B";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna02_ctrl_scaleX";
	rename -uid "BEB6FB9C-4A62-1378-B6C7-32B2F21E32C8";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978 45 0.99999999999999978;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna02_ctrl_scaleY";
	rename -uid "B7C4BBF5-4BA7-261D-CB2D-44982B2C6148";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978 45 0.99999999999999978;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna02_ctrl_scaleZ";
	rename -uid "42B10FF4-4545-118D-732E-61B5B34633EC";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989 45 0.99999999999999989;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_body_ctrl_visibility";
	rename -uid "2D7A1051-4DD0-AD96-0984-8BA7DAA8B121";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_C_body_ctrl_translateX";
	rename -uid "9EF102AE-435A-328E-D04C-4386A71E07AE";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 2.1960846028788135 25 0 35 2.1960846028788135
		 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  2.1960846028788135 0 2.1960846028788135;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  2.1960846028788135 0 2.1960846028788135;
createNode animCurveTL -n "enemy_rig_v05_C_body_ctrl_translateY";
	rename -uid "12AA4750-49E7-D586-AAD4-ADA47ACFF243";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 -1.4744297780904965 25 0 35 -1.4744297780904965
		 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  -1.4744297780904965 0 -1.4744297780904965;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  -1.4744297780904965 0 -1.4744297780904965;
createNode animCurveTL -n "enemy_rig_v05_C_body_ctrl_translateZ";
	rename -uid "8B2A1AA7-4D8A-6AEF-3406-7F80311E4656";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_body_ctrl_scaleX";
	rename -uid "3A738BDA-456C-7747-6D04-F9801399497F";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.3781635979720723 15 1.3781635979720723
		 25 1.3781635979720723 35 1.3781635979720723 45 1.3781635979720723;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_body_ctrl_scaleY";
	rename -uid "EC3D6EFA-43DC-0388-6E3F-F6B0784EBA99";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.3781635979720723 15 1.3781635979720723
		 25 1.3781635979720723 35 1.3781635979720723 45 1.3781635979720723;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_body_ctrl_scaleZ";
	rename -uid "2626A92E-41C7-DBB4-DAA2-1797026E5D1B";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.3781635979720723 15 1.3781635979720723
		 25 1.3781635979720723 35 1.3781635979720723 45 1.3781635979720723;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna03_ctrl_visibility";
	rename -uid "7C9B0ADE-43C5-F78E-52C4-3E97885D0D5A";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_antenna03_ctrl_translateX";
	rename -uid "359FA3A4-4799-759F-1E44-3196358C47C9";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_antenna03_ctrl_translateY";
	rename -uid "2A639067-4515-CBA2-C240-A9B9964495A6";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_antenna03_ctrl_translateZ";
	rename -uid "6C1FAA20-4ACA-D8E7-B262-D184CB1CB2C5";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna03_ctrl_scaleX";
	rename -uid "70072D72-4344-3A32-9D9B-448D7A51A2F5";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna03_ctrl_scaleY";
	rename -uid "E3DADEF9-4FDC-6AE8-072B-F9877AC80235";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999967 15 0.99999999999999967
		 25 0.99999999999999967 35 0.99999999999999967 45 0.99999999999999967;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna03_ctrl_scaleZ";
	rename -uid "DBF19433-4384-52BF-FA9D-838089D45822";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989 45 0.99999999999999989;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw02_ctrl_visibility";
	rename -uid "94DE1C89-4839-AC13-2182-6E9962DE42A0";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_mid_paw02_ctrl_translateX";
	rename -uid "F9B930CE-463E-4194-CCD0-00BC0DE4CEDD";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_mid_paw02_ctrl_translateY";
	rename -uid "58DFC274-4E97-CFB0-FCB9-B898849E08EC";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_mid_paw02_ctrl_translateZ";
	rename -uid "2B3C7B36-4B3C-D197-A083-86B473488ED7";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw02_ctrl_scaleX";
	rename -uid "1698FA0A-4892-F162-7B7C-8989E49F4C37";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw02_ctrl_scaleY";
	rename -uid "483E06BB-4FF4-6421-1F60-81BCAAE78C8A";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw02_ctrl_scaleZ";
	rename -uid "4C7E7DE3-4932-F75C-BD11-158939829F46";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw03_ctrl_visibility";
	rename -uid "6493DBED-4333-795D-F1EE-61A6EC4B84CE";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_up_paw03_ctrl_translateX";
	rename -uid "2263988F-4CF6-F013-42D6-C1B0BF1E5163";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_up_paw03_ctrl_translateY";
	rename -uid "F0B893D9-4620-2EE1-F89F-9DA69086170F";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_up_paw03_ctrl_translateZ";
	rename -uid "E7BA33AB-4816-8987-4E23-48AB2CE3DDEE";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw03_ctrl_scaleX";
	rename -uid "5761008C-4B4B-F8B6-FA8E-7B9603A62317";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw03_ctrl_scaleY";
	rename -uid "5BFAF603-4A50-EB46-4BB5-729743E77282";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw03_ctrl_scaleZ";
	rename -uid "01CBD55F-4234-3E20-5A57-ABBBC421B644";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw02_ctrl_visibility";
	rename -uid "D0620117-48CF-D015-9F85-1286A9824319";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_up_paw02_ctrl_translateX";
	rename -uid "AC183A30-48D1-C13F-DB37-C6AED59993B7";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_up_paw02_ctrl_translateY";
	rename -uid "B1AFA3E9-4BEC-F107-CDC5-A5A27F15DED5";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_up_paw02_ctrl_translateZ";
	rename -uid "052C7FF0-4085-C24D-8B3C-87888AC69813";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw02_ctrl_scaleX";
	rename -uid "85B27A22-4986-9266-F865-E69F15338419";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000004 15 1.0000000000000004
		 25 1.0000000000000004 35 1.0000000000000004 45 1.0000000000000004;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw02_ctrl_scaleY";
	rename -uid "2B86AB26-487D-5A9E-950F-9D9327048213";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000004 15 1.0000000000000004
		 25 1.0000000000000004 35 1.0000000000000004 45 1.0000000000000004;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw02_ctrl_scaleZ";
	rename -uid "952D0990-409B-86A6-4BC4-1F8577D991F9";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002 45 1.0000000000000002;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_head_ctrl_visibility";
	rename -uid "296B3D8C-489F-5E66-79A2-CFB4887EC8F5";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_C_head_ctrl_translateX";
	rename -uid "B51AED2E-4482-DDC1-4F2C-AB9170993961";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_C_head_ctrl_translateY";
	rename -uid "57790CEC-4A43-18D2-4A9F-ED9DC247A0AB";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_C_head_ctrl_translateZ";
	rename -uid "15724493-4033-7394-6E8C-A0B615F7B649";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_head_ctrl_scaleX";
	rename -uid "4A260A1D-4DE7-B6A4-BE3B-15891CD21003";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_head_ctrl_scaleY";
	rename -uid "48E706A4-41C9-B064-7816-AA9D172F02F1";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_head_ctrl_scaleZ";
	rename -uid "24F1FBBC-4EE8-2938-79FC-2F847CE77FE2";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_up_endwing_ctrl_visibility";
	rename -uid "759A4938-46A6-1EF2-B9A6-42942D803F8F";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_up_endwing_ctrl_translateX";
	rename -uid "3C5BCEBD-49D5-2425-05C9-7B9A3375044C";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_up_endwing_ctrl_translateY";
	rename -uid "6F7BD05B-40E8-7703-A88A-7A9CB8F445A2";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_up_endwing_ctrl_translateZ";
	rename -uid "43D7073A-4123-1C92-D493-B09117BF04C1";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_up_endwing_ctrl_scaleX";
	rename -uid "20FF7C87-46AB-923C-026F-7EB32948BCC0";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989 45 0.99999999999999989;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_up_endwing_ctrl_scaleY";
	rename -uid "6A2099EF-408D-1BDB-7DF7-F580244BC3A8";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978 45 0.99999999999999978;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_up_endwing_ctrl_scaleZ";
	rename -uid "98E0E484-4E43-D898-3953-5492369772F3";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_low_midwing_ctrl_visibility";
	rename -uid "5329BF35-4CED-BFA7-F263-AA8B4D13B33C";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_low_midwing_ctrl_translateX";
	rename -uid "B3A68831-4B0A-4A6F-B87B-7F9049B3BCDD";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_low_midwing_ctrl_translateY";
	rename -uid "A99B2487-4E4A-F36B-82EB-FB983C5D6D69";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_low_midwing_ctrl_translateZ";
	rename -uid "D5F52584-4382-E18B-248B-549560286E58";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_low_midwing_ctrl_scaleX";
	rename -uid "E38E249C-43D7-436D-A321-1CB8A91D0F57";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978 45 0.99999999999999978;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_low_midwing_ctrl_scaleY";
	rename -uid "85CB89ED-4EDC-FF14-A989-02A61798C00F";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_low_midwing_ctrl_scaleZ";
	rename -uid "EA667C2D-4F84-EF35-046D-B6B668A9B416";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978 45 0.99999999999999978;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_spine04_ctrl_visibility";
	rename -uid "DE2F8735-4099-ECBB-14E5-15A1B326197F";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_C_spine04_ctrl_translateX";
	rename -uid "6F2B34E4-494A-F520-006A-619511A06094";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_C_spine04_ctrl_translateY";
	rename -uid "B9C20AFC-49B7-A17B-CB07-3694966148A3";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_C_spine04_ctrl_translateZ";
	rename -uid "B4766EC5-455E-55FE-DAC2-918DDAAF1275";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_spine04_ctrl_scaleX";
	rename -uid "8584C3EE-4EDE-A731-4242-DCBCBB2028AD";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_spine04_ctrl_scaleY";
	rename -uid "FD6BE113-4E7A-1E8E-2BEC-EA858AA5CCF6";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_spine04_ctrl_scaleZ";
	rename -uid "33BE379D-4D7C-CB07-2941-9B89F5C08D66";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw02_ctrl_visibility";
	rename -uid "7A119B11-4149-FDFB-5460-7E820834F39F";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_up_paw02_ctrl_translateX";
	rename -uid "70670131-4CB1-B54F-3BE3-AD9E3776B7B1";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_up_paw02_ctrl_translateY";
	rename -uid "20A6CA73-4C87-41D4-CB85-9F9F1B9F1A57";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_up_paw02_ctrl_translateZ";
	rename -uid "89C4DCC6-422F-94A2-2CBE-F0AC078E6027";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw02_ctrl_scaleX";
	rename -uid "B6A207F9-4939-735C-5B4A-7EA61D5F3FBA";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978 45 0.99999999999999978;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw02_ctrl_scaleY";
	rename -uid "176BFB53-422C-1AE4-2CE4-08927C2D09BF";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978 45 0.99999999999999978;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw02_ctrl_scaleZ";
	rename -uid "0D262A06-4C34-44AE-4CCB-F08B1C4276BC";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw02_ctrl_visibility";
	rename -uid "BB20B5E0-49B8-7E07-B782-F2921757818F";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_mid_paw02_ctrl_translateX";
	rename -uid "20CE9D07-49CC-FBFA-77F7-DBA30E3FEFEB";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_mid_paw02_ctrl_translateY";
	rename -uid "FE52897E-48C7-684E-438C-AE8F55B48AA5";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_mid_paw02_ctrl_translateZ";
	rename -uid "96BC13E7-426C-EDA7-FDC2-1794D0FB11CF";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw02_ctrl_scaleX";
	rename -uid "C48F6D95-43E3-FFEB-BC0B-7AA922ECB98B";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989 45 0.99999999999999989;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw02_ctrl_scaleY";
	rename -uid "DA130E31-4FC8-C563-C41A-51893C271B55";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989 45 0.99999999999999989;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw02_ctrl_scaleZ";
	rename -uid "373AAA0E-48C1-B152-CB16-B1A1064CDDF8";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw03_ctrl_visibility";
	rename -uid "30A34336-47C4-855F-E344-BF9FBCC92542";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_low_paw03_ctrl_translateX";
	rename -uid "9457044E-4967-33F6-732C-04BD52FAD5FE";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_low_paw03_ctrl_translateY";
	rename -uid "38768A0A-4D3F-8586-0A7F-A6ADA552E828";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_low_paw03_ctrl_translateZ";
	rename -uid "F3E925D9-44E3-34FF-E1F3-E796869874F2";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw03_ctrl_scaleX";
	rename -uid "2D8EC5F4-4F43-5312-8719-D48E854220C8";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000007 15 1.0000000000000007
		 25 1.0000000000000007 35 1.0000000000000007 45 1.0000000000000007;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw03_ctrl_scaleY";
	rename -uid "418ED55C-497B-7295-E8B0-E0994C5A5955";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw03_ctrl_scaleZ";
	rename -uid "B555F30B-49AD-4C8F-0E5D-399BD202C620";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999822 15 0.99999999999999822
		 25 0.99999999999999822 35 0.99999999999999822 45 0.99999999999999822;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_spine02_ctrl_visibility";
	rename -uid "022662E8-482B-24EB-E95F-42B885214547";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_C_spine02_ctrl_translateX";
	rename -uid "A39D74BD-4D2E-5296-A12C-75915D38C9B9";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_C_spine02_ctrl_translateY";
	rename -uid "27A6F535-46C2-51AC-9679-A3B2474EAF0F";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_C_spine02_ctrl_translateZ";
	rename -uid "7C0199BB-4F02-89EE-033F-1E90D959A85B";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_spine02_ctrl_scaleX";
	rename -uid "CD9F344D-4115-5C17-62F5-C7831F395D4D";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_spine02_ctrl_scaleY";
	rename -uid "8DCE0A8A-482A-A825-887D-DABCF8822077";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_spine02_ctrl_scaleZ";
	rename -uid "4FD1C634-493D-AE3E-2EA8-6FA8A43703E4";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna02_ctrl_visibility";
	rename -uid "CBE9F05B-4765-44AE-D049-8F87CC7F5E86";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_antenna02_ctrl_translateX";
	rename -uid "CF88600F-48D2-D460-E333-EDAF22F4AC0F";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_antenna02_ctrl_translateY";
	rename -uid "6E6CEF84-42F3-13B2-0D03-1290AE457435";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_antenna02_ctrl_translateZ";
	rename -uid "4D8FFC8F-4FF1-5DBB-DF6F-F699CB071B5B";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna02_ctrl_scaleX";
	rename -uid "FA48E2F9-4EF8-A444-AC0B-ABB2AD6A7FA5";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978 45 0.99999999999999978;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna02_ctrl_scaleY";
	rename -uid "CB0945AB-4333-2E74-61B6-FB90AB8E3DF5";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna02_ctrl_scaleZ";
	rename -uid "39F36620-44B9-95A2-1283-ABAFB0561758";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002 45 1.0000000000000002;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw01_ctrl_visibility";
	rename -uid "0A8DAA1A-40D2-07B9-DAB7-ABA13C0B52AF";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_low_paw01_ctrl_translateX";
	rename -uid "5147011C-4BC7-CF50-918C-6C98D0FF1B79";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_low_paw01_ctrl_translateY";
	rename -uid "9082C66C-49DB-FADD-FE3B-C8A3EEE111F5";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_low_paw01_ctrl_translateZ";
	rename -uid "4C933ED1-4C6C-15D9-74DE-69B3BBF3AE2E";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw01_ctrl_scaleX";
	rename -uid "4357287F-41E0-4C1E-BB5A-1596B8A470CD";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989 45 0.99999999999999989;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw01_ctrl_scaleY";
	rename -uid "A117764F-496B-C760-9DC2-8AA1111B9E4D";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989 45 0.99999999999999989;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw01_ctrl_scaleZ";
	rename -uid "8DC51EC3-44E2-EEAD-6E1B-B1900F0F4D74";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_low_endwing_ctrl_visibility";
	rename -uid "A54520CC-4AFE-7DB1-45AB-DF997D700C31";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_low_endwing_ctrl_translateX";
	rename -uid "62481EBD-439A-6640-6823-058FB0A59C63";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_low_endwing_ctrl_translateY";
	rename -uid "97C944E4-47A6-835C-0757-5891FA329AED";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_low_endwing_ctrl_translateZ";
	rename -uid "CF3C7F81-4259-3DCC-6E22-BE95E56B6787";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_low_endwing_ctrl_scaleX";
	rename -uid "221D5882-4AD0-6497-C16D-DB9AD6204C5F";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_low_endwing_ctrl_scaleY";
	rename -uid "7DE5261A-4088-0A7C-F2E0-A1BC8B81143A";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_low_endwing_ctrl_scaleZ";
	rename -uid "CB547441-449F-37A8-E53E-27A8C8D103CF";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw01_ctrl_visibility";
	rename -uid "31767033-4B47-5C69-923D-52BF2854970C";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_low_paw01_ctrl_translateX";
	rename -uid "E63ACDCE-4277-2238-1B6B-549580FB019B";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_low_paw01_ctrl_translateY";
	rename -uid "6228A732-42BC-D3AA-C7BD-C09E25AAB6B5";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_low_paw01_ctrl_translateZ";
	rename -uid "6C3F88B5-4297-7802-8EA2-FD9C93FDE8CE";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw01_ctrl_scaleX";
	rename -uid "28531B71-4711-E354-4F9C-0594D7145C0D";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw01_ctrl_scaleY";
	rename -uid "2820E747-44F2-96A1-7EE6-05B53BC840F4";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw01_ctrl_scaleZ";
	rename -uid "F219E422-4F83-EBCA-7141-72A8AD852FBF";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna01_ctrl_visibility";
	rename -uid "1AB1568C-4468-97CB-DA37-EE957F80116B";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_antenna01_ctrl_translateX";
	rename -uid "7DB2E256-495C-73FD-5E67-10AFE2AE6F09";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_antenna01_ctrl_translateY";
	rename -uid "F00A3332-48DF-0EB2-43F2-D094C2B9A316";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_antenna01_ctrl_translateZ";
	rename -uid "EBCED676-4F60-F5E3-7810-24A70B2C1AEE";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna01_ctrl_scaleX";
	rename -uid "DDBE41C1-4527-4B2F-6897-5B96A597CC23";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna01_ctrl_scaleY";
	rename -uid "415837CE-4224-F28B-4702-4B951B2460AC";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002 45 1.0000000000000002;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_antenna01_ctrl_scaleZ";
	rename -uid "2D93EE15-44BF-31B2-C23E-2684385A1FC8";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002 45 1.0000000000000002;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw01_ctrl_visibility";
	rename -uid "E7788213-483D-F57B-627A-9A86E65D4DB8";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_mid_paw01_ctrl_translateX";
	rename -uid "C623A307-4D24-734E-9D71-48B1CD57C13A";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_mid_paw01_ctrl_translateY";
	rename -uid "653AD669-4F8D-022F-66E2-FAB724CB35EB";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_mid_paw01_ctrl_translateZ";
	rename -uid "224A46DE-4D0A-5BE9-7C66-258D100162DE";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw01_ctrl_scaleX";
	rename -uid "31D44DA1-4393-05CA-715A-B9A8CA8A3E08";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002 45 1.0000000000000002;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw01_ctrl_scaleY";
	rename -uid "4A5CFF9C-4B4B-DC9A-41DE-76BFD9B182DA";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000004 15 1.0000000000000004
		 25 1.0000000000000004 35 1.0000000000000004 45 1.0000000000000004;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw01_ctrl_scaleZ";
	rename -uid "6D9507B5-4AE3-486E-4CEE-46A37D9C17D6";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002 45 1.0000000000000002;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_mainwing_ctrl_visibility";
	rename -uid "A2A2EE01-45FA-BC96-CCD9-A0A69C791D9B";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_mainwing_ctrl_translateX";
	rename -uid "122F0E24-4739-2CB2-5DBB-5F95EAB31A07";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_mainwing_ctrl_translateY";
	rename -uid "DADEEEDE-4C59-ED7B-9974-72A0F95AF036";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_mainwing_ctrl_translateZ";
	rename -uid "EB737C79-49DE-6132-95FE-D9B7F59ADA0E";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_mainwing_ctrl_scaleX";
	rename -uid "C4E1F32A-4F8A-E813-ECF7-32BD331F5505";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989 45 0.99999999999999989;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_mainwing_ctrl_scaleY";
	rename -uid "638551C7-459C-60C7-CF4E-2D8E7CB51739";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_mainwing_ctrl_scaleZ";
	rename -uid "B02C9C3A-481E-3B55-62C0-7A9B27A228A9";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw02_ctrl_visibility";
	rename -uid "510B9A39-4834-B6BC-6623-B6B721336949";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_low_paw02_ctrl_translateX";
	rename -uid "D0D09717-47B3-BC55-2108-4DAC63E3BF89";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_low_paw02_ctrl_translateY";
	rename -uid "A01512D8-4508-3086-A441-F8A6D2DF06ED";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_low_paw02_ctrl_translateZ";
	rename -uid "324D5796-4518-4DEB-30E2-CA8F694F1677";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw02_ctrl_scaleX";
	rename -uid "7EE1B302-4154-8456-485D-8FA052E8260C";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw02_ctrl_scaleY";
	rename -uid "CD625F25-41FD-9FB5-3B0E-0DB6C5D0D670";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000004 15 1.0000000000000004
		 25 1.0000000000000004 35 1.0000000000000004 45 1.0000000000000004;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_low_paw02_ctrl_scaleZ";
	rename -uid "75490737-429D-A39F-B896-5E9911BF125F";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999933 15 0.99999999999999933
		 25 0.99999999999999933 35 0.99999999999999933 45 0.99999999999999933;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw03_ctrl_visibility";
	rename -uid "8DF5AF28-4C2D-6DC4-17A5-5EB8CF340996";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_low_paw03_ctrl_translateX";
	rename -uid "816BEC40-4B77-2ED6-609E-28ACBC0CD71C";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_low_paw03_ctrl_translateY";
	rename -uid "E921EEF1-4617-8039-079D-F9B0E9D4FF74";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_low_paw03_ctrl_translateZ";
	rename -uid "BD50F05C-4223-5C83-A95D-D98234DB8A25";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw03_ctrl_scaleX";
	rename -uid "AF10A015-4EAC-B0B6-12C6-698492E25488";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002 45 1.0000000000000002;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw03_ctrl_scaleY";
	rename -uid "8BA186CF-42DB-A440-2307-1B9B176E12DA";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002 45 1.0000000000000002;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw03_ctrl_scaleZ";
	rename -uid "382A0637-4490-8B4F-AFEB-D484FF889DCE";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002 45 1.0000000000000002;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw03_ctrl_visibility";
	rename -uid "710CDE19-4050-1D2B-BBCE-ACB0D02AD740";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_mid_paw03_ctrl_translateX";
	rename -uid "EB3EACFB-4C63-3DF0-18CD-95BB76C3944B";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_mid_paw03_ctrl_translateY";
	rename -uid "58EC4828-42DF-09A5-991C-459D343241B1";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_mid_paw03_ctrl_translateZ";
	rename -uid "47D55438-4E81-21CF-F71F-CC9F023924AD";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw03_ctrl_scaleX";
	rename -uid "7D3A67D0-4D4D-6519-8F11-BE801FEA769A";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw03_ctrl_scaleY";
	rename -uid "C8287095-4E34-62B1-76A3-659940D7515B";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_mid_paw03_ctrl_scaleZ";
	rename -uid "9AAEC55E-40A1-4338-BABA-FCAED734D29A";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002 45 1.0000000000000002;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw03_ctrl_visibility";
	rename -uid "3CF711AB-41AC-5FC8-83CE-22BBDCC65CFE";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_up_paw03_ctrl_translateX";
	rename -uid "B1E2FA66-4EDC-3139-FB4A-A89BC1B20DD4";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_up_paw03_ctrl_translateY";
	rename -uid "B2C93695-4DA8-5929-4849-7B8D07E89228";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_up_paw03_ctrl_translateZ";
	rename -uid "AE9D529C-4497-AB46-0CCE-B9BF0FAEFCED";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw03_ctrl_scaleX";
	rename -uid "6BE25029-405A-DF22-0250-FEBD463E2FDB";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw03_ctrl_scaleY";
	rename -uid "77AA1C1F-4D26-1C2D-F87C-E0893BF34025";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_up_paw03_ctrl_scaleZ";
	rename -uid "1A263DB5-4C01-C27B-28F8-6281FD90D061";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_low_endwing_ctrl_visibility";
	rename -uid "75ADA322-48A3-EA52-DB34-5084ABCC2694";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_low_endwing_ctrl_translateX";
	rename -uid "A407289B-46DB-0A09-9F2B-8886B00C90C5";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_low_endwing_ctrl_translateY";
	rename -uid "1C216F1A-4B84-A16E-2CEE-6E8C1BD976C4";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_low_endwing_ctrl_translateZ";
	rename -uid "2BD88CBD-46B5-780A-178E-FBAD7DF59E31";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_low_endwing_ctrl_scaleX";
	rename -uid "72B31BF1-48D9-90B4-690B-808F8E703E9C";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_low_endwing_ctrl_scaleY";
	rename -uid "3E750498-4EE9-F06D-A366-918D80B3E0F8";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_low_endwing_ctrl_scaleZ";
	rename -uid "629E404A-4F87-98A3-8D11-B1BF390F78D0";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_mainwing_ctrl_visibility";
	rename -uid "C123366A-4A2B-703C-5886-F3A818564200";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_mainwing_ctrl_translateX";
	rename -uid "6C784A56-4F84-B2C9-DFAD-08ABB85F3862";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_mainwing_ctrl_translateY";
	rename -uid "8C65B795-4FCB-8CE9-B224-E0B7C17ADF53";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_mainwing_ctrl_translateZ";
	rename -uid "1B72D867-4A5D-B7FE-39B3-37BAC9E73676";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_mainwing_ctrl_scaleX";
	rename -uid "9F9E941E-4FD5-EBF7-A778-E2A221F4DA62";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_mainwing_ctrl_scaleY";
	rename -uid "835A6E4C-4D30-A761-13A8-1183882BE0E8";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989 45 0.99999999999999989;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_mainwing_ctrl_scaleZ";
	rename -uid "7B383047-4721-CF43-E2A8-2191F6F16CC6";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna01_ctrl_visibility";
	rename -uid "2222C9CF-4AEC-D50E-219F-B9A31AFF7896";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_antenna01_ctrl_translateX";
	rename -uid "267A8062-4447-714E-C9B5-F1B5C3F8DBE1";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_antenna01_ctrl_translateY";
	rename -uid "DEDED4BE-4E7D-7B31-D440-24B96BF2FCD0";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_antenna01_ctrl_translateZ";
	rename -uid "121D3826-4CC9-4DFD-2664-478D30E635F1";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna01_ctrl_scaleX";
	rename -uid "9D59E910-4524-DB27-20B7-6A899DE03DB6";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna01_ctrl_scaleY";
	rename -uid "3D0800E8-4FF0-2F9A-1636-47BF2AAE2A9A";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002 45 1.0000000000000002;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_antenna01_ctrl_scaleZ";
	rename -uid "77A50F3C-4D1F-338F-F382-50BC1C0C62ED";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_spine01_ctrl_visibility";
	rename -uid "2F819E4E-4034-A17F-A645-8D9703290D6D";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_C_spine01_ctrl_translateX";
	rename -uid "A628F5C9-4FFC-D761-1987-52ADD7AD5EF4";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_C_spine01_ctrl_translateY";
	rename -uid "13575C54-43DE-3BA4-3A68-6886E1759FBF";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_C_spine01_ctrl_translateZ";
	rename -uid "2D479B18-425D-893B-D6CC-F087ACDA6788";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_spine01_ctrl_scaleX";
	rename -uid "A1464709-4994-739B-E66D-989DDBB40FE7";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002 45 1.0000000000000002;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_spine01_ctrl_scaleY";
	rename -uid "E7C50058-4A8A-BCC6-52E9-FB8E9622AC83";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1.0000000000000002 15 1.0000000000000002
		 25 1.0000000000000002 35 1.0000000000000002 45 1.0000000000000002;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_spine01_ctrl_scaleZ";
	rename -uid "C33F4486-4BE7-5027-1E4C-C588493B86A1";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw02_ctrl_visibility";
	rename -uid "69E66F3B-436B-4490-6D2C-ADB01E1CD530";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_low_paw02_ctrl_translateX";
	rename -uid "671243A1-4D07-0B9A-2A47-9CA0B1E6038B";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_low_paw02_ctrl_translateY";
	rename -uid "88E3F66E-459D-443F-4BFC-85937BD993F5";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_low_paw02_ctrl_translateZ";
	rename -uid "043E0B8D-46CA-AFC4-5789-7B9C9FF03F64";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw02_ctrl_scaleX";
	rename -uid "360E5074-4F99-C0AE-3EBE-0986DFCA8347";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989 45 0.99999999999999989;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw02_ctrl_scaleY";
	rename -uid "66F8E589-4CCA-1D92-10A9-BF908AED5AF7";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989 45 0.99999999999999989;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_low_paw02_ctrl_scaleZ";
	rename -uid "87283465-4CA6-6B60-054E-47861170B160";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999978 15 0.99999999999999978
		 25 0.99999999999999978 35 0.99999999999999978 45 0.99999999999999978;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_low_mouth_ctrl_visibility";
	rename -uid "343606AD-438A-775E-A3DC-7082B6B84659";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_low_mouth_ctrl_translateX";
	rename -uid "CE4E613D-4D48-4C53-C859-E6A26491E30D";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_low_mouth_ctrl_translateY";
	rename -uid "0FF006DA-4E78-0EDF-4A26-53A0CD638E32";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_low_mouth_ctrl_translateZ";
	rename -uid "AE3C1579-4B6A-A080-B4A7-FC93D17FDC3D";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_low_mouth_ctrl_scaleX";
	rename -uid "8C7F5426-4E96-22DF-6D34-A0BA403FDD02";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_low_mouth_ctrl_scaleY";
	rename -uid "0B58592F-40ED-06E7-BB48-9CA7907C95A7";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_low_mouth_ctrl_scaleZ";
	rename -uid "80D969C5-43BA-2E44-079F-04917B39482C";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_up_mouth_ctrl_visibility";
	rename -uid "A71D47F6-4897-F98E-03E8-2C87FCA8E7A1";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_up_mouth_ctrl_translateX";
	rename -uid "1C6F0644-43FA-3426-BC0B-46ACEC404EFF";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_up_mouth_ctrl_translateY";
	rename -uid "F5AEA030-498D-229B-3D11-5F9D315DA1B3";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_up_mouth_ctrl_translateZ";
	rename -uid "7E9D420E-4974-CEEF-9A92-64829BE4F2FC";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_up_mouth_ctrl_scaleX";
	rename -uid "F68036B0-454B-D1A4-BCF5-10881CB0D35E";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_up_mouth_ctrl_scaleY";
	rename -uid "E6EF9FC6-42AC-FFA9-C611-ACA65541B90C";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_up_mouth_ctrl_scaleZ";
	rename -uid "5D58CBEA-4215-38E6-1AFD-438E9F9352DB";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_up_midwing_ctrl_visibility";
	rename -uid "C1EEEF35-49D8-D8BD-E981-94A92A980C45";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_up_midwing_ctrl_translateX";
	rename -uid "3970CD8E-459C-3338-9F76-8DA3AC41F16F";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_up_midwing_ctrl_translateY";
	rename -uid "A00B6A93-4662-636A-2616-67BE50352CAB";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_R_up_midwing_ctrl_translateZ";
	rename -uid "50439E84-4D5F-E3E2-A1A8-E791721D0D77";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_up_midwing_ctrl_scaleX";
	rename -uid "AB1FA7B8-4818-5E8B-E0A5-D09094275FA1";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989 45 0.99999999999999989;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_up_midwing_ctrl_scaleY";
	rename -uid "4FBE800A-45FE-1E62-2D17-7C82E33AE8A2";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989 45 0.99999999999999989;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_R_up_midwing_ctrl_scaleZ";
	rename -uid "0C2AEF5A-49EE-4E59-8B63-0092F30D01B4";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_up_midwing_ctrl_visibility";
	rename -uid "0B881D8E-4A94-6ADF-FC10-7FBE1B58BB8F";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_up_midwing_ctrl_translateX";
	rename -uid "DF41FBAE-495E-DFD2-D9A7-34947A6AC73F";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_up_midwing_ctrl_translateY";
	rename -uid "3A115EF3-49EA-6270-6582-F9A4CBB4FA8E";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_up_midwing_ctrl_translateZ";
	rename -uid "EE1A4696-4AD8-B65F-A460-73AEF983B76A";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_up_midwing_ctrl_scaleX";
	rename -uid "69733E56-40C8-9019-2E33-35916D48D628";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_up_midwing_ctrl_scaleY";
	rename -uid "B3936107-4249-19A0-E438-2DAFFF29CCE1";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_up_midwing_ctrl_scaleZ";
	rename -uid "CEA8C2DF-4CA3-9B14-0EDF-EA9AD4864DD9";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw03_ctrl_visibility";
	rename -uid "441DDCB6-4D87-D722-A699-7AA2B95B477A";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_mid_paw03_ctrl_translateX";
	rename -uid "C7EAA11E-4CB5-C260-CF0E-0C801B161067";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_mid_paw03_ctrl_translateY";
	rename -uid "74E5A074-48C4-9862-CAF8-3EA33738880F";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_mid_paw03_ctrl_translateZ";
	rename -uid "043B34CC-4C0B-D802-1485-43B57F0BDCB0";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw03_ctrl_scaleX";
	rename -uid "B71525D0-4941-761F-B124-4D8AC525A438";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw03_ctrl_scaleY";
	rename -uid "987D363A-4CB6-05BA-B06F-42A162CEE846";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_mid_paw03_ctrl_scaleZ";
	rename -uid "F2B708F9-404C-4435-9E26-D192D4BB8E59";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_spine03_ctrl_visibility";
	rename -uid "9381BC37-4B22-36EB-9392-6F9329E3C57C";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_C_spine03_ctrl_translateX";
	rename -uid "F34C4134-4D89-2A7C-6950-41940E39D37C";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_C_spine03_ctrl_translateY";
	rename -uid "632C005A-41D5-673D-57EC-F38BC132D92E";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_C_spine03_ctrl_translateZ";
	rename -uid "3D013DFB-40F3-6B0D-A9A4-7E8DBA1ADB3B";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_spine03_ctrl_scaleX";
	rename -uid "E6A4B46C-4F6C-185B-153C-1097854476C7";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_spine03_ctrl_scaleY";
	rename -uid "50C92BED-4400-7D94-853B-1085917F703B";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_C_spine03_ctrl_scaleZ";
	rename -uid "675A25BC-4179-FE63-1DC0-02BD14AA23EE";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw01_ctrl_visibility";
	rename -uid "4F457EB7-4AAE-1DAF-F898-29931C56C905";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_up_paw01_ctrl_translateX";
	rename -uid "28762B55-42EA-7E6E-C6AE-C6A2F292CD76";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_up_paw01_ctrl_translateY";
	rename -uid "AA01845B-412A-5D7C-BEB9-65BEED076A4A";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "enemy_rig_v05_L_up_paw01_ctrl_translateZ";
	rename -uid "6AEA32D9-4EB2-304D-36C3-6EBBD93A4E35";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0 15 0 25 0 35 0 45 0;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw01_ctrl_scaleX";
	rename -uid "6D221D98-47DD-8F20-4F7B-0E9693DEEDD6";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 0.99999999999999989 15 0.99999999999999989
		 25 0.99999999999999989 35 0.99999999999999989 45 0.99999999999999989;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw01_ctrl_scaleY";
	rename -uid "7E3B688D-4225-775A-2754-04B6F9324C88";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "enemy_rig_v05_L_up_paw01_ctrl_scaleZ";
	rename -uid "3E5863EF-42F2-9B34-D5E7-0AAFAD687CD0";
	setAttr ".tan" 1;
	setAttr -s 5 ".ktv[0:4]"  1 1 15 1 25 1 35 1 45 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  0.58333333333333337 0.58333333333333337 
		0.58333333333333337;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.58333333333333337 0.41666666666666674 
		0.58333333333333337;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "1897F06F-4664-A7AF-8D3D-21895E2AD2A8";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1316\n            -height 677\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1316\\n    -height 677\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1316\\n    -height 677\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F470436D-4CFF-F1DF-CAE0-0290E9C03818";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 13;
	setAttr -av -k on ".unw" 13;
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
	setAttr -s 7 ".st";
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
	setAttr -s 10 ".s";
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
	setAttr -s 2 ".dsm";
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
connectAttr "enemy_rig_v05_C_body_ctrl_translateX.o" "enemy_rig_v05RN.phl[1]";
connectAttr "enemy_rig_v05_C_body_ctrl_translateY.o" "enemy_rig_v05RN.phl[2]";
connectAttr "enemy_rig_v05_C_body_ctrl_translateZ.o" "enemy_rig_v05RN.phl[3]";
connectAttr "enemy_rig_v05_C_body_ctrl_rotateX.o" "enemy_rig_v05RN.phl[4]";
connectAttr "enemy_rig_v05_C_body_ctrl_rotateY.o" "enemy_rig_v05RN.phl[5]";
connectAttr "enemy_rig_v05_C_body_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[6]";
connectAttr "enemy_rig_v05_C_body_ctrl_scaleX.o" "enemy_rig_v05RN.phl[7]";
connectAttr "enemy_rig_v05_C_body_ctrl_scaleY.o" "enemy_rig_v05RN.phl[8]";
connectAttr "enemy_rig_v05_C_body_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[9]";
connectAttr "enemy_rig_v05_C_body_ctrl_visibility.o" "enemy_rig_v05RN.phl[10]";
connectAttr "enemy_rig_v05_C_spine01_ctrl_translateX.o" "enemy_rig_v05RN.phl[11]"
		;
connectAttr "enemy_rig_v05_C_spine01_ctrl_translateY.o" "enemy_rig_v05RN.phl[12]"
		;
connectAttr "enemy_rig_v05_C_spine01_ctrl_translateZ.o" "enemy_rig_v05RN.phl[13]"
		;
connectAttr "enemy_rig_v05_C_spine01_ctrl_rotateX.o" "enemy_rig_v05RN.phl[14]";
connectAttr "enemy_rig_v05_C_spine01_ctrl_rotateY.o" "enemy_rig_v05RN.phl[15]";
connectAttr "enemy_rig_v05_C_spine01_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[16]";
connectAttr "enemy_rig_v05_C_spine01_ctrl_scaleX.o" "enemy_rig_v05RN.phl[17]";
connectAttr "enemy_rig_v05_C_spine01_ctrl_scaleY.o" "enemy_rig_v05RN.phl[18]";
connectAttr "enemy_rig_v05_C_spine01_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[19]";
connectAttr "enemy_rig_v05_C_spine01_ctrl_visibility.o" "enemy_rig_v05RN.phl[20]"
		;
connectAttr "enemy_rig_v05_C_spine02_ctrl_translateX.o" "enemy_rig_v05RN.phl[21]"
		;
connectAttr "enemy_rig_v05_C_spine02_ctrl_translateY.o" "enemy_rig_v05RN.phl[22]"
		;
connectAttr "enemy_rig_v05_C_spine02_ctrl_translateZ.o" "enemy_rig_v05RN.phl[23]"
		;
connectAttr "enemy_rig_v05_C_spine02_ctrl_rotateX.o" "enemy_rig_v05RN.phl[24]";
connectAttr "enemy_rig_v05_C_spine02_ctrl_rotateY.o" "enemy_rig_v05RN.phl[25]";
connectAttr "enemy_rig_v05_C_spine02_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[26]";
connectAttr "enemy_rig_v05_C_spine02_ctrl_scaleX.o" "enemy_rig_v05RN.phl[27]";
connectAttr "enemy_rig_v05_C_spine02_ctrl_scaleY.o" "enemy_rig_v05RN.phl[28]";
connectAttr "enemy_rig_v05_C_spine02_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[29]";
connectAttr "enemy_rig_v05_C_spine02_ctrl_visibility.o" "enemy_rig_v05RN.phl[30]"
		;
connectAttr "enemy_rig_v05_C_spine03_ctrl_translateX.o" "enemy_rig_v05RN.phl[31]"
		;
connectAttr "enemy_rig_v05_C_spine03_ctrl_translateY.o" "enemy_rig_v05RN.phl[32]"
		;
connectAttr "enemy_rig_v05_C_spine03_ctrl_translateZ.o" "enemy_rig_v05RN.phl[33]"
		;
connectAttr "enemy_rig_v05_C_spine03_ctrl_rotateX.o" "enemy_rig_v05RN.phl[34]";
connectAttr "enemy_rig_v05_C_spine03_ctrl_rotateY.o" "enemy_rig_v05RN.phl[35]";
connectAttr "enemy_rig_v05_C_spine03_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[36]";
connectAttr "enemy_rig_v05_C_spine03_ctrl_scaleX.o" "enemy_rig_v05RN.phl[37]";
connectAttr "enemy_rig_v05_C_spine03_ctrl_scaleY.o" "enemy_rig_v05RN.phl[38]";
connectAttr "enemy_rig_v05_C_spine03_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[39]";
connectAttr "enemy_rig_v05_C_spine03_ctrl_visibility.o" "enemy_rig_v05RN.phl[40]"
		;
connectAttr "enemy_rig_v05_C_spine04_ctrl_translateX.o" "enemy_rig_v05RN.phl[41]"
		;
connectAttr "enemy_rig_v05_C_spine04_ctrl_translateY.o" "enemy_rig_v05RN.phl[42]"
		;
connectAttr "enemy_rig_v05_C_spine04_ctrl_translateZ.o" "enemy_rig_v05RN.phl[43]"
		;
connectAttr "enemy_rig_v05_C_spine04_ctrl_rotateX.o" "enemy_rig_v05RN.phl[44]";
connectAttr "enemy_rig_v05_C_spine04_ctrl_rotateY.o" "enemy_rig_v05RN.phl[45]";
connectAttr "enemy_rig_v05_C_spine04_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[46]";
connectAttr "enemy_rig_v05_C_spine04_ctrl_scaleX.o" "enemy_rig_v05RN.phl[47]";
connectAttr "enemy_rig_v05_C_spine04_ctrl_scaleY.o" "enemy_rig_v05RN.phl[48]";
connectAttr "enemy_rig_v05_C_spine04_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[49]";
connectAttr "enemy_rig_v05_C_spine04_ctrl_visibility.o" "enemy_rig_v05RN.phl[50]"
		;
connectAttr "enemy_rig_v05_R_low_paw01_ctrl_rotateX.o" "enemy_rig_v05RN.phl[51]"
		;
connectAttr "enemy_rig_v05_R_low_paw01_ctrl_rotateY.o" "enemy_rig_v05RN.phl[52]"
		;
connectAttr "enemy_rig_v05_R_low_paw01_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[53]"
		;
connectAttr "enemy_rig_v05_R_low_paw01_ctrl_visibility.o" "enemy_rig_v05RN.phl[54]"
		;
connectAttr "enemy_rig_v05_R_low_paw01_ctrl_translateX.o" "enemy_rig_v05RN.phl[55]"
		;
connectAttr "enemy_rig_v05_R_low_paw01_ctrl_translateY.o" "enemy_rig_v05RN.phl[56]"
		;
connectAttr "enemy_rig_v05_R_low_paw01_ctrl_translateZ.o" "enemy_rig_v05RN.phl[57]"
		;
connectAttr "enemy_rig_v05_R_low_paw01_ctrl_scaleX.o" "enemy_rig_v05RN.phl[58]";
connectAttr "enemy_rig_v05_R_low_paw01_ctrl_scaleY.o" "enemy_rig_v05RN.phl[59]";
connectAttr "enemy_rig_v05_R_low_paw01_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[60]";
connectAttr "enemy_rig_v05_R_low_paw02_ctrl_rotateX.o" "enemy_rig_v05RN.phl[61]"
		;
connectAttr "enemy_rig_v05_R_low_paw02_ctrl_rotateY.o" "enemy_rig_v05RN.phl[62]"
		;
connectAttr "enemy_rig_v05_R_low_paw02_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[63]"
		;
connectAttr "enemy_rig_v05_R_low_paw02_ctrl_visibility.o" "enemy_rig_v05RN.phl[64]"
		;
connectAttr "enemy_rig_v05_R_low_paw02_ctrl_translateX.o" "enemy_rig_v05RN.phl[65]"
		;
connectAttr "enemy_rig_v05_R_low_paw02_ctrl_translateY.o" "enemy_rig_v05RN.phl[66]"
		;
connectAttr "enemy_rig_v05_R_low_paw02_ctrl_translateZ.o" "enemy_rig_v05RN.phl[67]"
		;
connectAttr "enemy_rig_v05_R_low_paw02_ctrl_scaleX.o" "enemy_rig_v05RN.phl[68]";
connectAttr "enemy_rig_v05_R_low_paw02_ctrl_scaleY.o" "enemy_rig_v05RN.phl[69]";
connectAttr "enemy_rig_v05_R_low_paw02_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[70]";
connectAttr "enemy_rig_v05_R_low_paw03_ctrl_rotateX.o" "enemy_rig_v05RN.phl[71]"
		;
connectAttr "enemy_rig_v05_R_low_paw03_ctrl_rotateY.o" "enemy_rig_v05RN.phl[72]"
		;
connectAttr "enemy_rig_v05_R_low_paw03_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[73]"
		;
connectAttr "enemy_rig_v05_R_low_paw03_ctrl_visibility.o" "enemy_rig_v05RN.phl[74]"
		;
connectAttr "enemy_rig_v05_R_low_paw03_ctrl_translateX.o" "enemy_rig_v05RN.phl[75]"
		;
connectAttr "enemy_rig_v05_R_low_paw03_ctrl_translateY.o" "enemy_rig_v05RN.phl[76]"
		;
connectAttr "enemy_rig_v05_R_low_paw03_ctrl_translateZ.o" "enemy_rig_v05RN.phl[77]"
		;
connectAttr "enemy_rig_v05_R_low_paw03_ctrl_scaleX.o" "enemy_rig_v05RN.phl[78]";
connectAttr "enemy_rig_v05_R_low_paw03_ctrl_scaleY.o" "enemy_rig_v05RN.phl[79]";
connectAttr "enemy_rig_v05_R_low_paw03_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[80]";
connectAttr "enemy_rig_v05_L_low_paw01_ctrl_rotateX.o" "enemy_rig_v05RN.phl[81]"
		;
connectAttr "enemy_rig_v05_L_low_paw01_ctrl_rotateY.o" "enemy_rig_v05RN.phl[82]"
		;
connectAttr "enemy_rig_v05_L_low_paw01_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[83]"
		;
connectAttr "enemy_rig_v05_L_low_paw01_ctrl_visibility.o" "enemy_rig_v05RN.phl[84]"
		;
connectAttr "enemy_rig_v05_L_low_paw01_ctrl_translateX.o" "enemy_rig_v05RN.phl[85]"
		;
connectAttr "enemy_rig_v05_L_low_paw01_ctrl_translateY.o" "enemy_rig_v05RN.phl[86]"
		;
connectAttr "enemy_rig_v05_L_low_paw01_ctrl_translateZ.o" "enemy_rig_v05RN.phl[87]"
		;
connectAttr "enemy_rig_v05_L_low_paw01_ctrl_scaleX.o" "enemy_rig_v05RN.phl[88]";
connectAttr "enemy_rig_v05_L_low_paw01_ctrl_scaleY.o" "enemy_rig_v05RN.phl[89]";
connectAttr "enemy_rig_v05_L_low_paw01_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[90]";
connectAttr "enemy_rig_v05_L_low_paw02_ctrl_rotateX.o" "enemy_rig_v05RN.phl[91]"
		;
connectAttr "enemy_rig_v05_L_low_paw02_ctrl_rotateY.o" "enemy_rig_v05RN.phl[92]"
		;
connectAttr "enemy_rig_v05_L_low_paw02_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[93]"
		;
connectAttr "enemy_rig_v05_L_low_paw02_ctrl_visibility.o" "enemy_rig_v05RN.phl[94]"
		;
connectAttr "enemy_rig_v05_L_low_paw02_ctrl_translateX.o" "enemy_rig_v05RN.phl[95]"
		;
connectAttr "enemy_rig_v05_L_low_paw02_ctrl_translateY.o" "enemy_rig_v05RN.phl[96]"
		;
connectAttr "enemy_rig_v05_L_low_paw02_ctrl_translateZ.o" "enemy_rig_v05RN.phl[97]"
		;
connectAttr "enemy_rig_v05_L_low_paw02_ctrl_scaleX.o" "enemy_rig_v05RN.phl[98]";
connectAttr "enemy_rig_v05_L_low_paw02_ctrl_scaleY.o" "enemy_rig_v05RN.phl[99]";
connectAttr "enemy_rig_v05_L_low_paw02_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[100]"
		;
connectAttr "enemy_rig_v05_L_low_paw03_ctrl_rotateX.o" "enemy_rig_v05RN.phl[101]"
		;
connectAttr "enemy_rig_v05_L_low_paw03_ctrl_rotateY.o" "enemy_rig_v05RN.phl[102]"
		;
connectAttr "enemy_rig_v05_L_low_paw03_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[103]"
		;
connectAttr "enemy_rig_v05_L_low_paw03_ctrl_visibility.o" "enemy_rig_v05RN.phl[104]"
		;
connectAttr "enemy_rig_v05_L_low_paw03_ctrl_translateX.o" "enemy_rig_v05RN.phl[105]"
		;
connectAttr "enemy_rig_v05_L_low_paw03_ctrl_translateY.o" "enemy_rig_v05RN.phl[106]"
		;
connectAttr "enemy_rig_v05_L_low_paw03_ctrl_translateZ.o" "enemy_rig_v05RN.phl[107]"
		;
connectAttr "enemy_rig_v05_L_low_paw03_ctrl_scaleX.o" "enemy_rig_v05RN.phl[108]"
		;
connectAttr "enemy_rig_v05_L_low_paw03_ctrl_scaleY.o" "enemy_rig_v05RN.phl[109]"
		;
connectAttr "enemy_rig_v05_L_low_paw03_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[110]"
		;
connectAttr "enemy_rig_v05_L_mid_paw01_ctrl_rotateX.o" "enemy_rig_v05RN.phl[111]"
		;
connectAttr "enemy_rig_v05_L_mid_paw01_ctrl_rotateY.o" "enemy_rig_v05RN.phl[112]"
		;
connectAttr "enemy_rig_v05_L_mid_paw01_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[113]"
		;
connectAttr "enemy_rig_v05_L_mid_paw01_ctrl_visibility.o" "enemy_rig_v05RN.phl[114]"
		;
connectAttr "enemy_rig_v05_L_mid_paw01_ctrl_translateX.o" "enemy_rig_v05RN.phl[115]"
		;
connectAttr "enemy_rig_v05_L_mid_paw01_ctrl_translateY.o" "enemy_rig_v05RN.phl[116]"
		;
connectAttr "enemy_rig_v05_L_mid_paw01_ctrl_translateZ.o" "enemy_rig_v05RN.phl[117]"
		;
connectAttr "enemy_rig_v05_L_mid_paw01_ctrl_scaleX.o" "enemy_rig_v05RN.phl[118]"
		;
connectAttr "enemy_rig_v05_L_mid_paw01_ctrl_scaleY.o" "enemy_rig_v05RN.phl[119]"
		;
connectAttr "enemy_rig_v05_L_mid_paw01_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[120]"
		;
connectAttr "enemy_rig_v05_L_mid_paw02_ctrl_rotateX.o" "enemy_rig_v05RN.phl[121]"
		;
connectAttr "enemy_rig_v05_L_mid_paw02_ctrl_rotateY.o" "enemy_rig_v05RN.phl[122]"
		;
connectAttr "enemy_rig_v05_L_mid_paw02_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[123]"
		;
connectAttr "enemy_rig_v05_L_mid_paw02_ctrl_visibility.o" "enemy_rig_v05RN.phl[124]"
		;
connectAttr "enemy_rig_v05_L_mid_paw02_ctrl_translateX.o" "enemy_rig_v05RN.phl[125]"
		;
connectAttr "enemy_rig_v05_L_mid_paw02_ctrl_translateY.o" "enemy_rig_v05RN.phl[126]"
		;
connectAttr "enemy_rig_v05_L_mid_paw02_ctrl_translateZ.o" "enemy_rig_v05RN.phl[127]"
		;
connectAttr "enemy_rig_v05_L_mid_paw02_ctrl_scaleX.o" "enemy_rig_v05RN.phl[128]"
		;
connectAttr "enemy_rig_v05_L_mid_paw02_ctrl_scaleY.o" "enemy_rig_v05RN.phl[129]"
		;
connectAttr "enemy_rig_v05_L_mid_paw02_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[130]"
		;
connectAttr "enemy_rig_v05_L_mid_paw03_ctrl_rotateX.o" "enemy_rig_v05RN.phl[131]"
		;
connectAttr "enemy_rig_v05_L_mid_paw03_ctrl_rotateY.o" "enemy_rig_v05RN.phl[132]"
		;
connectAttr "enemy_rig_v05_L_mid_paw03_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[133]"
		;
connectAttr "enemy_rig_v05_L_mid_paw03_ctrl_visibility.o" "enemy_rig_v05RN.phl[134]"
		;
connectAttr "enemy_rig_v05_L_mid_paw03_ctrl_translateX.o" "enemy_rig_v05RN.phl[135]"
		;
connectAttr "enemy_rig_v05_L_mid_paw03_ctrl_translateY.o" "enemy_rig_v05RN.phl[136]"
		;
connectAttr "enemy_rig_v05_L_mid_paw03_ctrl_translateZ.o" "enemy_rig_v05RN.phl[137]"
		;
connectAttr "enemy_rig_v05_L_mid_paw03_ctrl_scaleX.o" "enemy_rig_v05RN.phl[138]"
		;
connectAttr "enemy_rig_v05_L_mid_paw03_ctrl_scaleY.o" "enemy_rig_v05RN.phl[139]"
		;
connectAttr "enemy_rig_v05_L_mid_paw03_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[140]"
		;
connectAttr "enemy_rig_v05_R_mid_paw01_ctrl_rotateX.o" "enemy_rig_v05RN.phl[141]"
		;
connectAttr "enemy_rig_v05_R_mid_paw01_ctrl_rotateY.o" "enemy_rig_v05RN.phl[142]"
		;
connectAttr "enemy_rig_v05_R_mid_paw01_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[143]"
		;
connectAttr "enemy_rig_v05_R_mid_paw01_ctrl_visibility.o" "enemy_rig_v05RN.phl[144]"
		;
connectAttr "enemy_rig_v05_R_mid_paw01_ctrl_translateX.o" "enemy_rig_v05RN.phl[145]"
		;
connectAttr "enemy_rig_v05_R_mid_paw01_ctrl_translateY.o" "enemy_rig_v05RN.phl[146]"
		;
connectAttr "enemy_rig_v05_R_mid_paw01_ctrl_translateZ.o" "enemy_rig_v05RN.phl[147]"
		;
connectAttr "enemy_rig_v05_R_mid_paw01_ctrl_scaleX.o" "enemy_rig_v05RN.phl[148]"
		;
connectAttr "enemy_rig_v05_R_mid_paw01_ctrl_scaleY.o" "enemy_rig_v05RN.phl[149]"
		;
connectAttr "enemy_rig_v05_R_mid_paw01_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[150]"
		;
connectAttr "enemy_rig_v05_R_mid_paw02_ctrl_rotateX.o" "enemy_rig_v05RN.phl[151]"
		;
connectAttr "enemy_rig_v05_R_mid_paw02_ctrl_rotateY.o" "enemy_rig_v05RN.phl[152]"
		;
connectAttr "enemy_rig_v05_R_mid_paw02_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[153]"
		;
connectAttr "enemy_rig_v05_R_mid_paw02_ctrl_visibility.o" "enemy_rig_v05RN.phl[154]"
		;
connectAttr "enemy_rig_v05_R_mid_paw02_ctrl_translateX.o" "enemy_rig_v05RN.phl[155]"
		;
connectAttr "enemy_rig_v05_R_mid_paw02_ctrl_translateY.o" "enemy_rig_v05RN.phl[156]"
		;
connectAttr "enemy_rig_v05_R_mid_paw02_ctrl_translateZ.o" "enemy_rig_v05RN.phl[157]"
		;
connectAttr "enemy_rig_v05_R_mid_paw02_ctrl_scaleX.o" "enemy_rig_v05RN.phl[158]"
		;
connectAttr "enemy_rig_v05_R_mid_paw02_ctrl_scaleY.o" "enemy_rig_v05RN.phl[159]"
		;
connectAttr "enemy_rig_v05_R_mid_paw02_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[160]"
		;
connectAttr "enemy_rig_v05_R_mid_paw03_ctrl_rotateX.o" "enemy_rig_v05RN.phl[161]"
		;
connectAttr "enemy_rig_v05_R_mid_paw03_ctrl_rotateY.o" "enemy_rig_v05RN.phl[162]"
		;
connectAttr "enemy_rig_v05_R_mid_paw03_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[163]"
		;
connectAttr "enemy_rig_v05_R_mid_paw03_ctrl_visibility.o" "enemy_rig_v05RN.phl[164]"
		;
connectAttr "enemy_rig_v05_R_mid_paw03_ctrl_translateX.o" "enemy_rig_v05RN.phl[165]"
		;
connectAttr "enemy_rig_v05_R_mid_paw03_ctrl_translateY.o" "enemy_rig_v05RN.phl[166]"
		;
connectAttr "enemy_rig_v05_R_mid_paw03_ctrl_translateZ.o" "enemy_rig_v05RN.phl[167]"
		;
connectAttr "enemy_rig_v05_R_mid_paw03_ctrl_scaleX.o" "enemy_rig_v05RN.phl[168]"
		;
connectAttr "enemy_rig_v05_R_mid_paw03_ctrl_scaleY.o" "enemy_rig_v05RN.phl[169]"
		;
connectAttr "enemy_rig_v05_R_mid_paw03_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[170]"
		;
connectAttr "enemy_rig_v05_L_up_paw01_ctrl_rotateX.o" "enemy_rig_v05RN.phl[171]"
		;
connectAttr "enemy_rig_v05_L_up_paw01_ctrl_rotateY.o" "enemy_rig_v05RN.phl[172]"
		;
connectAttr "enemy_rig_v05_L_up_paw01_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[173]"
		;
connectAttr "enemy_rig_v05_L_up_paw01_ctrl_visibility.o" "enemy_rig_v05RN.phl[174]"
		;
connectAttr "enemy_rig_v05_L_up_paw01_ctrl_translateX.o" "enemy_rig_v05RN.phl[175]"
		;
connectAttr "enemy_rig_v05_L_up_paw01_ctrl_translateY.o" "enemy_rig_v05RN.phl[176]"
		;
connectAttr "enemy_rig_v05_L_up_paw01_ctrl_translateZ.o" "enemy_rig_v05RN.phl[177]"
		;
connectAttr "enemy_rig_v05_L_up_paw01_ctrl_scaleX.o" "enemy_rig_v05RN.phl[178]";
connectAttr "enemy_rig_v05_L_up_paw01_ctrl_scaleY.o" "enemy_rig_v05RN.phl[179]";
connectAttr "enemy_rig_v05_L_up_paw01_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[180]";
connectAttr "enemy_rig_v05_L_up_paw02_ctrl_rotateX.o" "enemy_rig_v05RN.phl[181]"
		;
connectAttr "enemy_rig_v05_L_up_paw02_ctrl_rotateY.o" "enemy_rig_v05RN.phl[182]"
		;
connectAttr "enemy_rig_v05_L_up_paw02_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[183]"
		;
connectAttr "enemy_rig_v05_L_up_paw02_ctrl_visibility.o" "enemy_rig_v05RN.phl[184]"
		;
connectAttr "enemy_rig_v05_L_up_paw02_ctrl_translateX.o" "enemy_rig_v05RN.phl[185]"
		;
connectAttr "enemy_rig_v05_L_up_paw02_ctrl_translateY.o" "enemy_rig_v05RN.phl[186]"
		;
connectAttr "enemy_rig_v05_L_up_paw02_ctrl_translateZ.o" "enemy_rig_v05RN.phl[187]"
		;
connectAttr "enemy_rig_v05_L_up_paw02_ctrl_scaleX.o" "enemy_rig_v05RN.phl[188]";
connectAttr "enemy_rig_v05_L_up_paw02_ctrl_scaleY.o" "enemy_rig_v05RN.phl[189]";
connectAttr "enemy_rig_v05_L_up_paw02_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[190]";
connectAttr "enemy_rig_v05_L_up_paw03_ctrl_rotateX.o" "enemy_rig_v05RN.phl[191]"
		;
connectAttr "enemy_rig_v05_L_up_paw03_ctrl_rotateY.o" "enemy_rig_v05RN.phl[192]"
		;
connectAttr "enemy_rig_v05_L_up_paw03_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[193]"
		;
connectAttr "enemy_rig_v05_L_up_paw03_ctrl_visibility.o" "enemy_rig_v05RN.phl[194]"
		;
connectAttr "enemy_rig_v05_L_up_paw03_ctrl_translateX.o" "enemy_rig_v05RN.phl[195]"
		;
connectAttr "enemy_rig_v05_L_up_paw03_ctrl_translateY.o" "enemy_rig_v05RN.phl[196]"
		;
connectAttr "enemy_rig_v05_L_up_paw03_ctrl_translateZ.o" "enemy_rig_v05RN.phl[197]"
		;
connectAttr "enemy_rig_v05_L_up_paw03_ctrl_scaleX.o" "enemy_rig_v05RN.phl[198]";
connectAttr "enemy_rig_v05_L_up_paw03_ctrl_scaleY.o" "enemy_rig_v05RN.phl[199]";
connectAttr "enemy_rig_v05_L_up_paw03_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[200]";
connectAttr "enemy_rig_v05_R_up_paw01_ctrl_rotateX.o" "enemy_rig_v05RN.phl[201]"
		;
connectAttr "enemy_rig_v05_R_up_paw01_ctrl_rotateY.o" "enemy_rig_v05RN.phl[202]"
		;
connectAttr "enemy_rig_v05_R_up_paw01_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[203]"
		;
connectAttr "enemy_rig_v05_R_up_paw01_ctrl_visibility.o" "enemy_rig_v05RN.phl[204]"
		;
connectAttr "enemy_rig_v05_R_up_paw01_ctrl_translateX.o" "enemy_rig_v05RN.phl[205]"
		;
connectAttr "enemy_rig_v05_R_up_paw01_ctrl_translateY.o" "enemy_rig_v05RN.phl[206]"
		;
connectAttr "enemy_rig_v05_R_up_paw01_ctrl_translateZ.o" "enemy_rig_v05RN.phl[207]"
		;
connectAttr "enemy_rig_v05_R_up_paw01_ctrl_scaleX.o" "enemy_rig_v05RN.phl[208]";
connectAttr "enemy_rig_v05_R_up_paw01_ctrl_scaleY.o" "enemy_rig_v05RN.phl[209]";
connectAttr "enemy_rig_v05_R_up_paw01_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[210]";
connectAttr "enemy_rig_v05_R_up_paw02_ctrl_rotateX.o" "enemy_rig_v05RN.phl[211]"
		;
connectAttr "enemy_rig_v05_R_up_paw02_ctrl_rotateY.o" "enemy_rig_v05RN.phl[212]"
		;
connectAttr "enemy_rig_v05_R_up_paw02_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[213]"
		;
connectAttr "enemy_rig_v05_R_up_paw02_ctrl_visibility.o" "enemy_rig_v05RN.phl[214]"
		;
connectAttr "enemy_rig_v05_R_up_paw02_ctrl_translateX.o" "enemy_rig_v05RN.phl[215]"
		;
connectAttr "enemy_rig_v05_R_up_paw02_ctrl_translateY.o" "enemy_rig_v05RN.phl[216]"
		;
connectAttr "enemy_rig_v05_R_up_paw02_ctrl_translateZ.o" "enemy_rig_v05RN.phl[217]"
		;
connectAttr "enemy_rig_v05_R_up_paw02_ctrl_scaleX.o" "enemy_rig_v05RN.phl[218]";
connectAttr "enemy_rig_v05_R_up_paw02_ctrl_scaleY.o" "enemy_rig_v05RN.phl[219]";
connectAttr "enemy_rig_v05_R_up_paw02_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[220]";
connectAttr "enemy_rig_v05_R_up_paw03_ctrl_rotateX.o" "enemy_rig_v05RN.phl[221]"
		;
connectAttr "enemy_rig_v05_R_up_paw03_ctrl_rotateY.o" "enemy_rig_v05RN.phl[222]"
		;
connectAttr "enemy_rig_v05_R_up_paw03_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[223]"
		;
connectAttr "enemy_rig_v05_R_up_paw03_ctrl_visibility.o" "enemy_rig_v05RN.phl[224]"
		;
connectAttr "enemy_rig_v05_R_up_paw03_ctrl_translateX.o" "enemy_rig_v05RN.phl[225]"
		;
connectAttr "enemy_rig_v05_R_up_paw03_ctrl_translateY.o" "enemy_rig_v05RN.phl[226]"
		;
connectAttr "enemy_rig_v05_R_up_paw03_ctrl_translateZ.o" "enemy_rig_v05RN.phl[227]"
		;
connectAttr "enemy_rig_v05_R_up_paw03_ctrl_scaleX.o" "enemy_rig_v05RN.phl[228]";
connectAttr "enemy_rig_v05_R_up_paw03_ctrl_scaleY.o" "enemy_rig_v05RN.phl[229]";
connectAttr "enemy_rig_v05_R_up_paw03_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[230]";
connectAttr "enemy_rig_v05_R_mainwing_ctrl_rotateY.o" "enemy_rig_v05RN.phl[231]"
		;
connectAttr "enemy_rig_v05_R_mainwing_ctrl_rotateX.o" "enemy_rig_v05RN.phl[232]"
		;
connectAttr "enemy_rig_v05_R_mainwing_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[233]"
		;
connectAttr "enemy_rig_v05_R_mainwing_ctrl_visibility.o" "enemy_rig_v05RN.phl[234]"
		;
connectAttr "enemy_rig_v05_R_mainwing_ctrl_translateX.o" "enemy_rig_v05RN.phl[235]"
		;
connectAttr "enemy_rig_v05_R_mainwing_ctrl_translateY.o" "enemy_rig_v05RN.phl[236]"
		;
connectAttr "enemy_rig_v05_R_mainwing_ctrl_translateZ.o" "enemy_rig_v05RN.phl[237]"
		;
connectAttr "enemy_rig_v05_R_mainwing_ctrl_scaleX.o" "enemy_rig_v05RN.phl[238]";
connectAttr "enemy_rig_v05_R_mainwing_ctrl_scaleY.o" "enemy_rig_v05RN.phl[239]";
connectAttr "enemy_rig_v05_R_mainwing_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[240]";
connectAttr "enemy_rig_v05_R_up_midwing_ctrl_translateX.o" "enemy_rig_v05RN.phl[241]"
		;
connectAttr "enemy_rig_v05_R_up_midwing_ctrl_translateY.o" "enemy_rig_v05RN.phl[242]"
		;
connectAttr "enemy_rig_v05_R_up_midwing_ctrl_translateZ.o" "enemy_rig_v05RN.phl[243]"
		;
connectAttr "enemy_rig_v05_R_up_midwing_ctrl_rotateY.o" "enemy_rig_v05RN.phl[244]"
		;
connectAttr "enemy_rig_v05_R_up_midwing_ctrl_rotateX.o" "enemy_rig_v05RN.phl[245]"
		;
connectAttr "enemy_rig_v05_R_up_midwing_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[246]"
		;
connectAttr "enemy_rig_v05_R_up_midwing_ctrl_scaleX.o" "enemy_rig_v05RN.phl[247]"
		;
connectAttr "enemy_rig_v05_R_up_midwing_ctrl_scaleY.o" "enemy_rig_v05RN.phl[248]"
		;
connectAttr "enemy_rig_v05_R_up_midwing_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[249]"
		;
connectAttr "enemy_rig_v05_R_up_midwing_ctrl_visibility.o" "enemy_rig_v05RN.phl[250]"
		;
connectAttr "enemy_rig_v05_R_up_endwing_ctrl_translateX.o" "enemy_rig_v05RN.phl[251]"
		;
connectAttr "enemy_rig_v05_R_up_endwing_ctrl_translateY.o" "enemy_rig_v05RN.phl[252]"
		;
connectAttr "enemy_rig_v05_R_up_endwing_ctrl_translateZ.o" "enemy_rig_v05RN.phl[253]"
		;
connectAttr "enemy_rig_v05_R_up_endwing_ctrl_rotateY.o" "enemy_rig_v05RN.phl[254]"
		;
connectAttr "enemy_rig_v05_R_up_endwing_ctrl_rotateX.o" "enemy_rig_v05RN.phl[255]"
		;
connectAttr "enemy_rig_v05_R_up_endwing_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[256]"
		;
connectAttr "enemy_rig_v05_R_up_endwing_ctrl_scaleX.o" "enemy_rig_v05RN.phl[257]"
		;
connectAttr "enemy_rig_v05_R_up_endwing_ctrl_scaleY.o" "enemy_rig_v05RN.phl[258]"
		;
connectAttr "enemy_rig_v05_R_up_endwing_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[259]"
		;
connectAttr "enemy_rig_v05_R_up_endwing_ctrl_visibility.o" "enemy_rig_v05RN.phl[260]"
		;
connectAttr "enemy_rig_v05_R_low_midwing_ctrl_translateX.o" "enemy_rig_v05RN.phl[261]"
		;
connectAttr "enemy_rig_v05_R_low_midwing_ctrl_translateY.o" "enemy_rig_v05RN.phl[262]"
		;
connectAttr "enemy_rig_v05_R_low_midwing_ctrl_translateZ.o" "enemy_rig_v05RN.phl[263]"
		;
connectAttr "enemy_rig_v05_R_low_midwing_ctrl_rotateY.o" "enemy_rig_v05RN.phl[264]"
		;
connectAttr "enemy_rig_v05_R_low_midwing_ctrl_rotateX.o" "enemy_rig_v05RN.phl[265]"
		;
connectAttr "enemy_rig_v05_R_low_midwing_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[266]"
		;
connectAttr "enemy_rig_v05_R_low_midwing_ctrl_scaleX.o" "enemy_rig_v05RN.phl[267]"
		;
connectAttr "enemy_rig_v05_R_low_midwing_ctrl_scaleY.o" "enemy_rig_v05RN.phl[268]"
		;
connectAttr "enemy_rig_v05_R_low_midwing_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[269]"
		;
connectAttr "enemy_rig_v05_R_low_midwing_ctrl_visibility.o" "enemy_rig_v05RN.phl[270]"
		;
connectAttr "enemy_rig_v05_R_low_endwing_ctrl_translateX.o" "enemy_rig_v05RN.phl[271]"
		;
connectAttr "enemy_rig_v05_R_low_endwing_ctrl_translateY.o" "enemy_rig_v05RN.phl[272]"
		;
connectAttr "enemy_rig_v05_R_low_endwing_ctrl_translateZ.o" "enemy_rig_v05RN.phl[273]"
		;
connectAttr "enemy_rig_v05_R_low_endwing_ctrl_rotateY.o" "enemy_rig_v05RN.phl[274]"
		;
connectAttr "enemy_rig_v05_R_low_endwing_ctrl_rotateX.o" "enemy_rig_v05RN.phl[275]"
		;
connectAttr "enemy_rig_v05_R_low_endwing_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[276]"
		;
connectAttr "enemy_rig_v05_R_low_endwing_ctrl_scaleX.o" "enemy_rig_v05RN.phl[277]"
		;
connectAttr "enemy_rig_v05_R_low_endwing_ctrl_scaleY.o" "enemy_rig_v05RN.phl[278]"
		;
connectAttr "enemy_rig_v05_R_low_endwing_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[279]"
		;
connectAttr "enemy_rig_v05_R_low_endwing_ctrl_visibility.o" "enemy_rig_v05RN.phl[280]"
		;
connectAttr "enemy_rig_v05_C_neck_ctrl_translateX.o" "enemy_rig_v05RN.phl[281]";
connectAttr "enemy_rig_v05_C_neck_ctrl_translateY.o" "enemy_rig_v05RN.phl[282]";
connectAttr "enemy_rig_v05_C_neck_ctrl_translateZ.o" "enemy_rig_v05RN.phl[283]";
connectAttr "enemy_rig_v05_C_neck_ctrl_rotateX.o" "enemy_rig_v05RN.phl[284]";
connectAttr "enemy_rig_v05_C_neck_ctrl_rotateY.o" "enemy_rig_v05RN.phl[285]";
connectAttr "enemy_rig_v05_C_neck_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[286]";
connectAttr "enemy_rig_v05_C_neck_ctrl_scaleX.o" "enemy_rig_v05RN.phl[287]";
connectAttr "enemy_rig_v05_C_neck_ctrl_scaleY.o" "enemy_rig_v05RN.phl[288]";
connectAttr "enemy_rig_v05_C_neck_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[289]";
connectAttr "enemy_rig_v05_C_neck_ctrl_visibility.o" "enemy_rig_v05RN.phl[290]";
connectAttr "enemy_rig_v05_C_head_ctrl_translateX.o" "enemy_rig_v05RN.phl[291]";
connectAttr "enemy_rig_v05_C_head_ctrl_translateY.o" "enemy_rig_v05RN.phl[292]";
connectAttr "enemy_rig_v05_C_head_ctrl_translateZ.o" "enemy_rig_v05RN.phl[293]";
connectAttr "enemy_rig_v05_C_head_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[294]";
connectAttr "enemy_rig_v05_C_head_ctrl_rotateX.o" "enemy_rig_v05RN.phl[295]";
connectAttr "enemy_rig_v05_C_head_ctrl_rotateY.o" "enemy_rig_v05RN.phl[296]";
connectAttr "enemy_rig_v05_C_head_ctrl_scaleX.o" "enemy_rig_v05RN.phl[297]";
connectAttr "enemy_rig_v05_C_head_ctrl_scaleY.o" "enemy_rig_v05RN.phl[298]";
connectAttr "enemy_rig_v05_C_head_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[299]";
connectAttr "enemy_rig_v05_C_head_ctrl_visibility.o" "enemy_rig_v05RN.phl[300]";
connectAttr "enemy_rig_v05_low_mouth_ctrl_translateX.o" "enemy_rig_v05RN.phl[301]"
		;
connectAttr "enemy_rig_v05_low_mouth_ctrl_translateY.o" "enemy_rig_v05RN.phl[302]"
		;
connectAttr "enemy_rig_v05_low_mouth_ctrl_translateZ.o" "enemy_rig_v05RN.phl[303]"
		;
connectAttr "enemy_rig_v05_low_mouth_ctrl_rotateX.o" "enemy_rig_v05RN.phl[304]";
connectAttr "enemy_rig_v05_low_mouth_ctrl_rotateY.o" "enemy_rig_v05RN.phl[305]";
connectAttr "enemy_rig_v05_low_mouth_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[306]";
connectAttr "enemy_rig_v05_low_mouth_ctrl_scaleX.o" "enemy_rig_v05RN.phl[307]";
connectAttr "enemy_rig_v05_low_mouth_ctrl_scaleY.o" "enemy_rig_v05RN.phl[308]";
connectAttr "enemy_rig_v05_low_mouth_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[309]";
connectAttr "enemy_rig_v05_low_mouth_ctrl_visibility.o" "enemy_rig_v05RN.phl[310]"
		;
connectAttr "enemy_rig_v05_up_mouth_ctrl_translateX.o" "enemy_rig_v05RN.phl[311]"
		;
connectAttr "enemy_rig_v05_up_mouth_ctrl_translateY.o" "enemy_rig_v05RN.phl[312]"
		;
connectAttr "enemy_rig_v05_up_mouth_ctrl_translateZ.o" "enemy_rig_v05RN.phl[313]"
		;
connectAttr "enemy_rig_v05_up_mouth_ctrl_rotateX.o" "enemy_rig_v05RN.phl[314]";
connectAttr "enemy_rig_v05_up_mouth_ctrl_rotateY.o" "enemy_rig_v05RN.phl[315]";
connectAttr "enemy_rig_v05_up_mouth_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[316]";
connectAttr "enemy_rig_v05_up_mouth_ctrl_scaleX.o" "enemy_rig_v05RN.phl[317]";
connectAttr "enemy_rig_v05_up_mouth_ctrl_scaleY.o" "enemy_rig_v05RN.phl[318]";
connectAttr "enemy_rig_v05_up_mouth_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[319]";
connectAttr "enemy_rig_v05_up_mouth_ctrl_visibility.o" "enemy_rig_v05RN.phl[320]"
		;
connectAttr "enemy_rig_v05_L_antenna01_ctrl_rotateX.o" "enemy_rig_v05RN.phl[321]"
		;
connectAttr "enemy_rig_v05_L_antenna01_ctrl_rotateY.o" "enemy_rig_v05RN.phl[322]"
		;
connectAttr "enemy_rig_v05_L_antenna01_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[323]"
		;
connectAttr "enemy_rig_v05_L_antenna01_ctrl_visibility.o" "enemy_rig_v05RN.phl[324]"
		;
connectAttr "enemy_rig_v05_L_antenna01_ctrl_translateX.o" "enemy_rig_v05RN.phl[325]"
		;
connectAttr "enemy_rig_v05_L_antenna01_ctrl_translateY.o" "enemy_rig_v05RN.phl[326]"
		;
connectAttr "enemy_rig_v05_L_antenna01_ctrl_translateZ.o" "enemy_rig_v05RN.phl[327]"
		;
connectAttr "enemy_rig_v05_L_antenna01_ctrl_scaleX.o" "enemy_rig_v05RN.phl[328]"
		;
connectAttr "enemy_rig_v05_L_antenna01_ctrl_scaleY.o" "enemy_rig_v05RN.phl[329]"
		;
connectAttr "enemy_rig_v05_L_antenna01_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[330]"
		;
connectAttr "enemy_rig_v05_L_antenna02_ctrl_rotateX.o" "enemy_rig_v05RN.phl[331]"
		;
connectAttr "enemy_rig_v05_L_antenna02_ctrl_rotateY.o" "enemy_rig_v05RN.phl[332]"
		;
connectAttr "enemy_rig_v05_L_antenna02_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[333]"
		;
connectAttr "enemy_rig_v05_L_antenna02_ctrl_visibility.o" "enemy_rig_v05RN.phl[334]"
		;
connectAttr "enemy_rig_v05_L_antenna02_ctrl_translateX.o" "enemy_rig_v05RN.phl[335]"
		;
connectAttr "enemy_rig_v05_L_antenna02_ctrl_translateY.o" "enemy_rig_v05RN.phl[336]"
		;
connectAttr "enemy_rig_v05_L_antenna02_ctrl_translateZ.o" "enemy_rig_v05RN.phl[337]"
		;
connectAttr "enemy_rig_v05_L_antenna02_ctrl_scaleX.o" "enemy_rig_v05RN.phl[338]"
		;
connectAttr "enemy_rig_v05_L_antenna02_ctrl_scaleY.o" "enemy_rig_v05RN.phl[339]"
		;
connectAttr "enemy_rig_v05_L_antenna02_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[340]"
		;
connectAttr "enemy_rig_v05_L_antenna03_ctrl_rotateX.o" "enemy_rig_v05RN.phl[341]"
		;
connectAttr "enemy_rig_v05_L_antenna03_ctrl_rotateY.o" "enemy_rig_v05RN.phl[342]"
		;
connectAttr "enemy_rig_v05_L_antenna03_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[343]"
		;
connectAttr "enemy_rig_v05_L_antenna03_ctrl_visibility.o" "enemy_rig_v05RN.phl[344]"
		;
connectAttr "enemy_rig_v05_L_antenna03_ctrl_translateX.o" "enemy_rig_v05RN.phl[345]"
		;
connectAttr "enemy_rig_v05_L_antenna03_ctrl_translateY.o" "enemy_rig_v05RN.phl[346]"
		;
connectAttr "enemy_rig_v05_L_antenna03_ctrl_translateZ.o" "enemy_rig_v05RN.phl[347]"
		;
connectAttr "enemy_rig_v05_L_antenna03_ctrl_scaleX.o" "enemy_rig_v05RN.phl[348]"
		;
connectAttr "enemy_rig_v05_L_antenna03_ctrl_scaleY.o" "enemy_rig_v05RN.phl[349]"
		;
connectAttr "enemy_rig_v05_L_antenna03_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[350]"
		;
connectAttr "enemy_rig_v05_R_antenna01_ctrl_rotateX.o" "enemy_rig_v05RN.phl[351]"
		;
connectAttr "enemy_rig_v05_R_antenna01_ctrl_rotateY.o" "enemy_rig_v05RN.phl[352]"
		;
connectAttr "enemy_rig_v05_R_antenna01_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[353]"
		;
connectAttr "enemy_rig_v05_R_antenna01_ctrl_visibility.o" "enemy_rig_v05RN.phl[354]"
		;
connectAttr "enemy_rig_v05_R_antenna01_ctrl_translateX.o" "enemy_rig_v05RN.phl[355]"
		;
connectAttr "enemy_rig_v05_R_antenna01_ctrl_translateY.o" "enemy_rig_v05RN.phl[356]"
		;
connectAttr "enemy_rig_v05_R_antenna01_ctrl_translateZ.o" "enemy_rig_v05RN.phl[357]"
		;
connectAttr "enemy_rig_v05_R_antenna01_ctrl_scaleX.o" "enemy_rig_v05RN.phl[358]"
		;
connectAttr "enemy_rig_v05_R_antenna01_ctrl_scaleY.o" "enemy_rig_v05RN.phl[359]"
		;
connectAttr "enemy_rig_v05_R_antenna01_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[360]"
		;
connectAttr "enemy_rig_v05_R_antenna02_ctrl_rotateX.o" "enemy_rig_v05RN.phl[361]"
		;
connectAttr "enemy_rig_v05_R_antenna02_ctrl_rotateY.o" "enemy_rig_v05RN.phl[362]"
		;
connectAttr "enemy_rig_v05_R_antenna02_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[363]"
		;
connectAttr "enemy_rig_v05_R_antenna02_ctrl_visibility.o" "enemy_rig_v05RN.phl[364]"
		;
connectAttr "enemy_rig_v05_R_antenna02_ctrl_translateX.o" "enemy_rig_v05RN.phl[365]"
		;
connectAttr "enemy_rig_v05_R_antenna02_ctrl_translateY.o" "enemy_rig_v05RN.phl[366]"
		;
connectAttr "enemy_rig_v05_R_antenna02_ctrl_translateZ.o" "enemy_rig_v05RN.phl[367]"
		;
connectAttr "enemy_rig_v05_R_antenna02_ctrl_scaleX.o" "enemy_rig_v05RN.phl[368]"
		;
connectAttr "enemy_rig_v05_R_antenna02_ctrl_scaleY.o" "enemy_rig_v05RN.phl[369]"
		;
connectAttr "enemy_rig_v05_R_antenna02_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[370]"
		;
connectAttr "enemy_rig_v05_R_antenna03_ctrl_rotateX.o" "enemy_rig_v05RN.phl[371]"
		;
connectAttr "enemy_rig_v05_R_antenna03_ctrl_rotateY.o" "enemy_rig_v05RN.phl[372]"
		;
connectAttr "enemy_rig_v05_R_antenna03_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[373]"
		;
connectAttr "enemy_rig_v05_R_antenna03_ctrl_visibility.o" "enemy_rig_v05RN.phl[374]"
		;
connectAttr "enemy_rig_v05_R_antenna03_ctrl_translateX.o" "enemy_rig_v05RN.phl[375]"
		;
connectAttr "enemy_rig_v05_R_antenna03_ctrl_translateY.o" "enemy_rig_v05RN.phl[376]"
		;
connectAttr "enemy_rig_v05_R_antenna03_ctrl_translateZ.o" "enemy_rig_v05RN.phl[377]"
		;
connectAttr "enemy_rig_v05_R_antenna03_ctrl_scaleX.o" "enemy_rig_v05RN.phl[378]"
		;
connectAttr "enemy_rig_v05_R_antenna03_ctrl_scaleY.o" "enemy_rig_v05RN.phl[379]"
		;
connectAttr "enemy_rig_v05_R_antenna03_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[380]"
		;
connectAttr "enemy_rig_v05_L_mainwing_ctrl_rotateY.o" "enemy_rig_v05RN.phl[381]"
		;
connectAttr "enemy_rig_v05_L_mainwing_ctrl_rotateX.o" "enemy_rig_v05RN.phl[382]"
		;
connectAttr "enemy_rig_v05_L_mainwing_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[383]"
		;
connectAttr "enemy_rig_v05_L_mainwing_ctrl_visibility.o" "enemy_rig_v05RN.phl[384]"
		;
connectAttr "enemy_rig_v05_L_mainwing_ctrl_translateX.o" "enemy_rig_v05RN.phl[385]"
		;
connectAttr "enemy_rig_v05_L_mainwing_ctrl_translateY.o" "enemy_rig_v05RN.phl[386]"
		;
connectAttr "enemy_rig_v05_L_mainwing_ctrl_translateZ.o" "enemy_rig_v05RN.phl[387]"
		;
connectAttr "enemy_rig_v05_L_mainwing_ctrl_scaleX.o" "enemy_rig_v05RN.phl[388]";
connectAttr "enemy_rig_v05_L_mainwing_ctrl_scaleY.o" "enemy_rig_v05RN.phl[389]";
connectAttr "enemy_rig_v05_L_mainwing_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[390]";
connectAttr "enemy_rig_v05_L_up_midwing_ctrl_translateX.o" "enemy_rig_v05RN.phl[391]"
		;
connectAttr "enemy_rig_v05_L_up_midwing_ctrl_translateY.o" "enemy_rig_v05RN.phl[392]"
		;
connectAttr "enemy_rig_v05_L_up_midwing_ctrl_translateZ.o" "enemy_rig_v05RN.phl[393]"
		;
connectAttr "enemy_rig_v05_L_up_midwing_ctrl_rotateY.o" "enemy_rig_v05RN.phl[394]"
		;
connectAttr "enemy_rig_v05_L_up_midwing_ctrl_rotateX.o" "enemy_rig_v05RN.phl[395]"
		;
connectAttr "enemy_rig_v05_L_up_midwing_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[396]"
		;
connectAttr "enemy_rig_v05_L_up_midwing_ctrl_scaleX.o" "enemy_rig_v05RN.phl[397]"
		;
connectAttr "enemy_rig_v05_L_up_midwing_ctrl_scaleY.o" "enemy_rig_v05RN.phl[398]"
		;
connectAttr "enemy_rig_v05_L_up_midwing_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[399]"
		;
connectAttr "enemy_rig_v05_L_up_midwing_ctrl_visibility.o" "enemy_rig_v05RN.phl[400]"
		;
connectAttr "enemy_rig_v05_L_up_endwing_ctrl_translateX.o" "enemy_rig_v05RN.phl[401]"
		;
connectAttr "enemy_rig_v05_L_up_endwing_ctrl_translateY.o" "enemy_rig_v05RN.phl[402]"
		;
connectAttr "enemy_rig_v05_L_up_endwing_ctrl_translateZ.o" "enemy_rig_v05RN.phl[403]"
		;
connectAttr "enemy_rig_v05_L_up_endwing_ctrl_rotateY.o" "enemy_rig_v05RN.phl[404]"
		;
connectAttr "enemy_rig_v05_L_up_endwing_ctrl_rotateX.o" "enemy_rig_v05RN.phl[405]"
		;
connectAttr "enemy_rig_v05_L_up_endwing_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[406]"
		;
connectAttr "enemy_rig_v05_L_up_endwing_ctrl_scaleX.o" "enemy_rig_v05RN.phl[407]"
		;
connectAttr "enemy_rig_v05_L_up_endwing_ctrl_scaleY.o" "enemy_rig_v05RN.phl[408]"
		;
connectAttr "enemy_rig_v05_L_up_endwing_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[409]"
		;
connectAttr "enemy_rig_v05_L_up_endwing_ctrl_visibility.o" "enemy_rig_v05RN.phl[410]"
		;
connectAttr "enemy_rig_v05_L_low_midwing_ctrl_translateX.o" "enemy_rig_v05RN.phl[411]"
		;
connectAttr "enemy_rig_v05_L_low_midwing_ctrl_translateY.o" "enemy_rig_v05RN.phl[412]"
		;
connectAttr "enemy_rig_v05_L_low_midwing_ctrl_translateZ.o" "enemy_rig_v05RN.phl[413]"
		;
connectAttr "enemy_rig_v05_L_low_midwing_ctrl_rotateY.o" "enemy_rig_v05RN.phl[414]"
		;
connectAttr "enemy_rig_v05_L_low_midwing_ctrl_rotateX.o" "enemy_rig_v05RN.phl[415]"
		;
connectAttr "enemy_rig_v05_L_low_midwing_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[416]"
		;
connectAttr "enemy_rig_v05_L_low_midwing_ctrl_scaleX.o" "enemy_rig_v05RN.phl[417]"
		;
connectAttr "enemy_rig_v05_L_low_midwing_ctrl_scaleY.o" "enemy_rig_v05RN.phl[418]"
		;
connectAttr "enemy_rig_v05_L_low_midwing_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[419]"
		;
connectAttr "enemy_rig_v05_L_low_midwing_ctrl_visibility.o" "enemy_rig_v05RN.phl[420]"
		;
connectAttr "enemy_rig_v05_L_low_endwing_ctrl_translateX.o" "enemy_rig_v05RN.phl[421]"
		;
connectAttr "enemy_rig_v05_L_low_endwing_ctrl_translateY.o" "enemy_rig_v05RN.phl[422]"
		;
connectAttr "enemy_rig_v05_L_low_endwing_ctrl_translateZ.o" "enemy_rig_v05RN.phl[423]"
		;
connectAttr "enemy_rig_v05_L_low_endwing_ctrl_rotateY.o" "enemy_rig_v05RN.phl[424]"
		;
connectAttr "enemy_rig_v05_L_low_endwing_ctrl_rotateX.o" "enemy_rig_v05RN.phl[425]"
		;
connectAttr "enemy_rig_v05_L_low_endwing_ctrl_rotateZ.o" "enemy_rig_v05RN.phl[426]"
		;
connectAttr "enemy_rig_v05_L_low_endwing_ctrl_scaleX.o" "enemy_rig_v05RN.phl[427]"
		;
connectAttr "enemy_rig_v05_L_low_endwing_ctrl_scaleY.o" "enemy_rig_v05RN.phl[428]"
		;
connectAttr "enemy_rig_v05_L_low_endwing_ctrl_scaleZ.o" "enemy_rig_v05RN.phl[429]"
		;
connectAttr "enemy_rig_v05_L_low_endwing_ctrl_visibility.o" "enemy_rig_v05RN.phl[430]"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of enemy_animation_idle_v01.ma
