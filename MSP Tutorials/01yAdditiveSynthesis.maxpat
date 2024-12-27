{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 0,
			"revision" : 0,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 59.0, 103.0, 905.0, 536.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 1,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 615.0, 474.561401, 137.0, 20.0 ],
					"style" : "",
					"text" : "Choose a complex tone"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 642.0, 407.796478, 29.5, 22.0 ],
					"style" : "",
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 642.0, 444.0, 107.0, 16.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-54", "number", "int", 1000, 5, "obj-50", "flonum", "float", 0.2, 5, "obj-43", "flonum", "float", 1.0, 5, "obj-42", "flonum", "float", 0.0, 5, "obj-41", "flonum", "float", 0.0, 5, "obj-40", "flonum", "float", 3.0, 5, "obj-39", "flonum", "float", 5.0, 5, "obj-38", "flonum", "float", 0.0, 5, "obj-37", "flonum", "float", 0.0, 5, "obj-36", "flonum", "float", 4.0, 5, "obj-35", "flonum", "float", 7.0, 5, "obj-34", "flonum", "float", 0.0, 5, "obj-33", "flonum", "float", 0.0, 5, "obj-32", "flonum", "float", 8.0, 4, "obj-31", "function", "clear", 7, "obj-31", "function", "add", 0.0, 0.0, 0, 7, "obj-31", "function", "add", 45.454548, 1.0, 0, 7, "obj-31", "function", "add", 193.181824, 0.196721, 0, 7, "obj-31", "function", "add", 920.45459, 0.704918, 0, 7, "obj-31", "function", "add", 1011.363647, 0.0, 0, 5, "obj-31", "function", "domain", 1000.0, 6, "obj-31", "function", "range", 0.0, 1.0, 4, "obj-30", "function", "clear", 7, "obj-30", "function", "add", 0.0, 0.0, 0, 7, "obj-30", "function", "add", 556.818176, 1.0, 0, 7, "obj-30", "function", "add", 818.181824, 0.114754, 0, 7, "obj-30", "function", "add", 1000.0, 0.0, 0, 5, "obj-30", "function", "domain", 1000.0, 6, "obj-30", "function", "range", 0.0, 1.0, 4, "obj-29", "function", "clear", 7, "obj-29", "function", "add", 0.0, 0.0, 0, 7, "obj-29", "function", "add", 45.454548, 0.885246, 0, 7, "obj-29", "function", "add", 500.0, 0.786885, 0, 7, "obj-29", "function", "add", 704.54541, 0.360656, 0, 7, "obj-29", "function", "add", 1000.0, 0.0, 0, 5, "obj-29", "function", "domain", 1000.0, 6, "obj-29", "function", "range", 0.0, 1.0, 4, "obj-28", "function", "clear", 7, "obj-28", "function", "add", 0.0, 0.0, 0, 7, "obj-28", "function", "add", 159.090912, 1.0, 0, 7, "obj-28", "function", "add", 534.090942, 0.147541, 0, 7, "obj-28", "function", "add", 795.45459, 0.868852, 0, 7, "obj-28", "function", "add", 1000.0, 0.0, 0, 5, "obj-28", "function", "domain", 1000.0, 6, "obj-28", "function", "range", 0.0, 1.0, 4, "obj-27", "function", "clear", 7, "obj-27", "function", "add", 0.0, 0.0, 0, 7, "obj-27", "function", "add", 545.45459, 1.0, 0, 7, "obj-27", "function", "add", 931.818237, 0.721311, 0, 7, "obj-27", "function", "add", 1000.0, 0.0, 0, 5, "obj-27", "function", "domain", 1000.0, 6, "obj-27", "function", "range", 0.0, 1.0, 4, "obj-26", "function", "clear", 7, "obj-26", "function", "add", 0.0, 0.0, 0, 7, "obj-26", "function", "add", 22.727272, 1.0, 0, 7, "obj-26", "function", "add", 761.363647, 0.491803, 0, 7, "obj-26", "function", "add", 1000.0, 0.0, 0, 5, "obj-26", "function", "domain", 1000.0, 6, "obj-26", "function", "range", 0.0, 1.0, 5, "obj-25", "flonum", "float", 440.0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-54", "number", "int", 2000, 5, "obj-50", "flonum", "float", 0.15, 5, "obj-43", "flonum", "float", 1.0, 5, "obj-42", "flonum", "float", 0.0, 5, "obj-41", "flonum", "float", 0.0, 5, "obj-40", "flonum", "float", 2.0, 5, "obj-39", "flonum", "float", 8.0, 5, "obj-38", "flonum", "float", 0.0, 5, "obj-37", "flonum", "float", 0.0, 5, "obj-36", "flonum", "float", 4.0, 5, "obj-35", "flonum", "float", 16.0, 5, "obj-34", "flonum", "float", 0.0, 5, "obj-33", "flonum", "float", 0.0, 5, "obj-32", "flonum", "float", 32.0, 4, "obj-31", "function", "clear", 6, "obj-31", "function", "add", 0.0, 0.0, 6, "obj-31", "function", "add", 45.454548, 1.0, 6, "obj-31", "function", "add", 431.818207, 0.114754, 6, "obj-31", "function", "add", 1045.45459, 0.295082, 6, "obj-31", "function", "add", 2022.727295, 0.0, 4, "obj-30", "function", "clear", 6, "obj-30", "function", "add", 0.0, 0.0, 6, "obj-30", "function", "add", 45.454548, 1.0, 6, "obj-30", "function", "add", 636.363647, 0.393443, 6, "obj-30", "function", "add", 1636.363647, 0.114754, 6, "obj-30", "function", "add", 2000.0, 0.0, 4, "obj-29", "function", "clear", 6, "obj-29", "function", "add", 0.0, 0.0, 6, "obj-29", "function", "add", 68.181824, 1.0, 6, "obj-29", "function", "add", 954.545471, 0.770492, 6, "obj-29", "function", "add", 1454.545532, 0.213115, 6, "obj-29", "function", "add", 2000.0, 0.0, 4, "obj-28", "function", "clear", 6, "obj-28", "function", "add", 0.0, 0.0, 6, "obj-28", "function", "add", 363.636383, 0.819672, 6, "obj-28", "function", "add", 1295.45459, 0.426229, 6, "obj-28", "function", "add", 1500.0, 0.491803, 6, "obj-28", "function", "add", 2000.0, 0.0, 4, "obj-27", "function", "clear", 6, "obj-27", "function", "add", 0.0, 0.0, 6, "obj-27", "function", "add", 45.454548, 1.0, 6, "obj-27", "function", "add", 1704.545532, 0.590164, 6, "obj-27", "function", "add", 2000.0, 0.0, 4, "obj-26", "function", "clear", 6, "obj-26", "function", "add", 0.0, 0.0, 6, "obj-26", "function", "add", 45.454548, 1.0, 6, "obj-26", "function", "add", 1454.545532, 0.852459, 6, "obj-26", "function", "add", 2000.0, 0.0, 5, "obj-25", "flonum", "float", 55.0 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-54", "number", "int", 2000, 5, "obj-50", "flonum", "float", 0.200001, 5, "obj-43", "flonum", "float", 1.0, 5, "obj-42", "flonum", "float", 0.0, 5, "obj-41", "flonum", "float", 0.0, 5, "obj-40", "flonum", "float", 2.99, 5, "obj-39", "flonum", "float", 4.98, 5, "obj-38", "flonum", "float", 0.0, 5, "obj-37", "flonum", "float", 0.0, 5, "obj-36", "flonum", "float", 4.01, 5, "obj-35", "flonum", "float", 7.040001, 5, "obj-34", "flonum", "float", 0.0, 5, "obj-33", "flonum", "float", 0.0, 5, "obj-32", "flonum", "float", 8.02, 4, "obj-31", "function", "clear", 6, "obj-31", "function", "add", 0.0, 0.787, 6, "obj-31", "function", "add", 363.636383, 0.196721, 6, "obj-31", "function", "add", 886.363647, 0.098361, 6, "obj-31", "function", "add", 2022.727295, 0.0, 4, "obj-30", "function", "clear", 6, "obj-30", "function", "add", 0.0, 0.639, 6, "obj-30", "function", "add", 204.545456, 0.016393, 6, "obj-30", "function", "add", 727.272766, 0.131148, 6, "obj-30", "function", "add", 2000.0, 0.0, 4, "obj-29", "function", "clear", 6, "obj-29", "function", "add", 0.0, 0.689, 6, "obj-29", "function", "add", 386.363647, 0.262295, 6, "obj-29", "function", "add", 863.636414, 0.163934, 6, "obj-29", "function", "add", 1454.545532, 0.065574, 6, "obj-29", "function", "add", 2000.0, 0.0, 4, "obj-28", "function", "clear", 6, "obj-28", "function", "add", 0.0, 1.0, 6, "obj-28", "function", "add", 363.636383, 0.262295, 6, "obj-28", "function", "add", 1022.727295, 0.098361, 6, "obj-28", "function", "add", 1545.45459, 0.04918, 6, "obj-28", "function", "add", 2000.0, 0.0, 4, "obj-27", "function", "clear", 6, "obj-27", "function", "add", 0.0, 0.803, 6, "obj-27", "function", "add", 340.909088, 0.393443, 6, "obj-27", "function", "add", 818.181824, 0.131148, 6, "obj-27", "function", "add", 1363.636353, 0.032787, 6, "obj-27", "function", "add", 2000.0, 0.0, 4, "obj-26", "function", "clear", 6, "obj-26", "function", "add", 0.0, 1.0, 6, "obj-26", "function", "add", 204.545456, 0.459016, 6, "obj-26", "function", "add", 1340.90918, 0.295082, 6, "obj-26", "function", "add", 1704.545532, 0.180328, 6, "obj-26", "function", "add", 2000.0, 0.0, 5, "obj-25", "flonum", "float", 220.0 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-54", "number", "int", 500, 5, "obj-50", "flonum", "float", 0.200001, 5, "obj-43", "flonum", "float", 1.0, 5, "obj-42", "flonum", "float", 0.0, 5, "obj-41", "flonum", "float", 0.0, 5, "obj-40", "flonum", "float", 2.0, 5, "obj-39", "flonum", "float", 4.0, 5, "obj-38", "flonum", "float", 0.0, 5, "obj-37", "flonum", "float", 0.0, 5, "obj-36", "flonum", "float", 3.0, 5, "obj-35", "flonum", "float", 5.0, 5, "obj-34", "flonum", "float", 0.0, 5, "obj-33", "flonum", "float", 0.0, 5, "obj-32", "flonum", "float", 7.0, 4, "obj-31", "function", "clear", 6, "obj-31", "function", "add", 0.0, 0.0, 6, "obj-31", "function", "add", 37.5, 0.13, 6, "obj-31", "function", "add", 45.0, 0.26, 6, "obj-31", "function", "add", 110.0, 0.26, 6, "obj-31", "function", "add", 175.0, 0.04, 6, "obj-31", "function", "add", 205.0, 0.0, 4, "obj-30", "function", "clear", 6, "obj-30", "function", "add", 0.0, 0.0, 6, "obj-30", "function", "add", 27.5, 0.18, 6, "obj-30", "function", "add", 35.0, 0.43, 6, "obj-30", "function", "add", 110.0, 0.42, 6, "obj-30", "function", "add", 190.0, 0.04, 6, "obj-30", "function", "add", 235.0, 0.0, 4, "obj-29", "function", "clear", 6, "obj-29", "function", "add", 0.0, 0.0, 6, "obj-29", "function", "add", 25.0, 0.38, 6, "obj-29", "function", "add", 30.0, 0.86, 6, "obj-29", "function", "add", 120.0, 0.77, 6, "obj-29", "function", "add", 187.5, 0.12, 6, "obj-29", "function", "add", 235.0, 0.0, 4, "obj-28", "function", "clear", 6, "obj-28", "function", "add", 0.0, 0.0, 6, "obj-28", "function", "add", 20.0, 0.33, 6, "obj-28", "function", "add", 35.0, 1.0, 6, "obj-28", "function", "add", 110.0, 1.0, 6, "obj-28", "function", "add", 207.5, 0.14, 6, "obj-28", "function", "add", 275.0, 0.0, 4, "obj-27", "function", "clear", 6, "obj-27", "function", "add", 0.0, 0.0, 6, "obj-27", "function", "add", 25.0, 1.0, 6, "obj-27", "function", "add", 125.0, 0.98, 6, "obj-27", "function", "add", 222.5, 0.13, 6, "obj-27", "function", "add", 375.0, 0.0, 4, "obj-26", "function", "clear", 6, "obj-26", "function", "add", 0.0, 0.0, 6, "obj-26", "function", "add", 20.0, 1.0, 6, "obj-26", "function", "add", 140.0, 0.95, 6, "obj-26", "function", "add", 235.0, 0.27, 6, "obj-26", "function", "add", 360.0, 0.0, 5, "obj-25", "flonum", "float", 330.0 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-54", "number", "int", 2000, 5, "obj-50", "flonum", "float", 0.2, 5, "obj-43", "flonum", "float", 1.0, 5, "obj-42", "flonum", "float", 0.0, 5, "obj-41", "flonum", "float", 0.0, 5, "obj-40", "flonum", "float", 3.0, 5, "obj-39", "flonum", "float", 7.0, 5, "obj-38", "flonum", "float", 0.0, 5, "obj-37", "flonum", "float", 0.0, 5, "obj-36", "flonum", "float", 5.0, 5, "obj-35", "flonum", "float", 9.0, 5, "obj-34", "flonum", "float", 0.0, 5, "obj-33", "flonum", "float", 0.0, 5, "obj-32", "flonum", "float", 11.0, 4, "obj-31", "function", "clear", 7, "obj-31", "function", "add", 0.0, 0.0, 0, 7, "obj-31", "function", "add", 150.0, 0.02, 0, 7, "obj-31", "function", "add", 220.0, 0.08, 0, 7, "obj-31", "function", "add", 350.0, 0.1, 0, 7, "obj-31", "function", "add", 460.0, 0.1, 0, 7, "obj-31", "function", "add", 660.0, 0.01, 0, 7, "obj-31", "function", "add", 740.0, 0.0, 0, 5, "obj-31", "function", "domain", 2000.0, 6, "obj-31", "function", "range", 0.0, 1.0, 4, "obj-30", "function", "clear", 7, "obj-30", "function", "add", 0.0, 0.0, 0, 7, "obj-30", "function", "add", 120.0, 0.05, 0, 7, "obj-30", "function", "add", 180.0, 0.18, 0, 7, "obj-30", "function", "add", 220.0, 0.22, 0, 7, "obj-30", "function", "add", 420.0, 0.22, 0, 7, "obj-30", "function", "add", 660.0, 0.02, 0, 7, "obj-30", "function", "add", 760.0, 0.0, 0, 5, "obj-30", "function", "domain", 2000.0, 6, "obj-30", "function", "range", 0.0, 1.0, 4, "obj-29", "function", "clear", 7, "obj-29", "function", "add", 0.0, 0.0, 0, 7, "obj-29", "function", "add", 140.0, 0.13, 0, 7, "obj-29", "function", "add", 180.0, 0.26, 0, 7, "obj-29", "function", "add", 440.0, 0.26, 0, 7, "obj-29", "function", "add", 700.0, 0.04, 0, 7, "obj-29", "function", "add", 820.0, 0.0, 0, 5, "obj-29", "function", "domain", 2000.0, 6, "obj-29", "function", "range", 0.0, 1.0, 4, "obj-28", "function", "clear", 7, "obj-28", "function", "add", 0.0, 0.0, 0, 7, "obj-28", "function", "add", 110.0, 0.17, 0, 7, "obj-28", "function", "add", 150.0, 0.43, 0, 7, "obj-28", "function", "add", 440.0, 0.42, 0, 7, "obj-28", "function", "add", 760.0, 0.04, 0, 7, "obj-28", "function", "add", 960.0, 0.0, 0, 5, "obj-28", "function", "domain", 2000.0, 6, "obj-28", "function", "range", 0.0, 1.0, 4, "obj-27", "function", "clear", 7, "obj-27", "function", "add", 0.0, 0.0, 0, 7, "obj-27", "function", "add", 80.0, 0.33, 0, 7, "obj-27", "function", "add", 140.0, 1.0, 0, 7, "obj-27", "function", "add", 440.0, 1.0, 0, 7, "obj-27", "function", "add", 830.0, 0.13, 0, 7, "obj-27", "function", "add", 1100.0, 0.0, 0, 5, "obj-27", "function", "domain", 2000.0, 6, "obj-27", "function", "range", 0.0, 1.0, 4, "obj-26", "function", "clear", 7, "obj-26", "function", "add", 0.0, 0.0, 0, 7, "obj-26", "function", "add", 80.0, 1.0, 0, 7, "obj-26", "function", "add", 560.0, 0.95, 0, 7, "obj-26", "function", "add", 940.0, 0.27, 0, 7, "obj-26", "function", "add", 1440.0, 0.0, 0, 5, "obj-26", "function", "domain", 2000.0, 6, "obj-26", "function", "range", 0.0, 1.0, 5, "obj-25", "flonum", "float", 330.0 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-54", "number", "int", 5000, 5, "obj-50", "flonum", "float", 0.150001, 5, "obj-43", "flonum", "float", 1.0, 5, "obj-42", "flonum", "float", 0.0, 5, "obj-41", "flonum", "float", 0.0, 5, "obj-40", "flonum", "float", 1.01, 5, "obj-39", "flonum", "float", 1.04, 5, "obj-38", "flonum", "float", 0.0, 5, "obj-37", "flonum", "float", 0.0, 5, "obj-36", "flonum", "float", 1.02, 5, "obj-35", "flonum", "float", 1.05, 5, "obj-34", "flonum", "float", 0.0, 5, "obj-33", "flonum", "float", 0.0, 5, "obj-32", "flonum", "float", 1.06, 4, "obj-31", "function", "clear", 6, "obj-31", "function", "add", 0.0, 0.0, 6, "obj-31", "function", "add", 1250.0, 0.0, 6, "obj-31", "function", "add", 2500.0, 0.508197, 6, "obj-31", "function", "add", 4943.182129, 1.0, 6, "obj-31", "function", "add", 5000.0, 0.0, 4, "obj-30", "function", "clear", 6, "obj-30", "function", "add", 0.0, 0.0, 6, "obj-30", "function", "add", 2500.0, 0.0, 6, "obj-30", "function", "add", 3750.0, 0.508197, 6, "obj-30", "function", "add", 4943.182129, 1.0, 6, "obj-30", "function", "add", 5000.0, 0.0, 4, "obj-29", "function", "clear", 6, "obj-29", "function", "add", 0.0, 0.0, 6, "obj-29", "function", "add", 3750.0, 0.0, 6, "obj-29", "function", "add", 4943.182129, 1.0, 6, "obj-29", "function", "add", 5000.0, 0.0, 4, "obj-28", "function", "clear", 6, "obj-28", "function", "add", 0.0, 0.0, 6, "obj-28", "function", "add", 3750.0, 0.0, 6, "obj-28", "function", "add", 4943.182129, 1.0, 6, "obj-28", "function", "add", 5000.0, 0.0, 4, "obj-27", "function", "clear", 6, "obj-27", "function", "add", 0.0, 0.0, 6, "obj-27", "function", "add", 2500.0, 0.0, 6, "obj-27", "function", "add", 3750.0, 0.508197, 6, "obj-27", "function", "add", 4943.182129, 1.0, 6, "obj-27", "function", "add", 5000.0, 0.0, 4, "obj-26", "function", "clear", 6, "obj-26", "function", "add", 0.0, 0.0, 6, "obj-26", "function", "add", 1250.0, 0.508197, 6, "obj-26", "function", "add", 4943.182129, 1.0, 6, "obj-26", "function", "add", 5000.0, 0.0, 5, "obj-25", "flonum", "float", 880.0 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-54", "number", "int", 2000, 5, "obj-50", "flonum", "float", 0.200001, 5, "obj-43", "flonum", "float", 1.0, 5, "obj-42", "flonum", "float", 0.0, 5, "obj-41", "flonum", "float", 0.0, 5, "obj-40", "flonum", "float", 1.12, 5, "obj-39", "flonum", "float", 1.419996, 5, "obj-38", "flonum", "float", 0.0, 5, "obj-37", "flonum", "float", 0.0, 5, "obj-36", "flonum", "float", 1.260007, 5, "obj-35", "flonum", "float", 1.599999, 5, "obj-34", "flonum", "float", 0.0, 5, "obj-33", "flonum", "float", 0.0, 5, "obj-32", "flonum", "float", 1.789999, 4, "obj-31", "function", "clear", 6, "obj-31", "function", "add", 0.0, 0.0, 6, "obj-31", "function", "add", 931.818237, 1.0, 6, "obj-31", "function", "add", 1068.181885, 1.0, 6, "obj-31", "function", "add", 2022.727295, 0.0, 4, "obj-30", "function", "clear", 6, "obj-30", "function", "add", 0.0, 0.0, 6, "obj-30", "function", "add", 681.818115, 1.0, 6, "obj-30", "function", "add", 1000.0, 0.508197, 6, "obj-30", "function", "add", 1250.0, 1.0, 6, "obj-30", "function", "add", 2000.0, 0.0, 4, "obj-29", "function", "clear", 6, "obj-29", "function", "add", 0.0, 0.0, 6, "obj-29", "function", "add", 590.909119, 1.0, 6, "obj-29", "function", "add", 1000.0, 0.245902, 6, "obj-29", "function", "add", 1409.091064, 1.0, 6, "obj-29", "function", "add", 2000.0, 0.0, 4, "obj-28", "function", "clear", 6, "obj-28", "function", "add", 0.0, 0.0, 6, "obj-28", "function", "add", 431.818207, 1.0, 6, "obj-28", "function", "add", 1000.0, 0.196721, 6, "obj-28", "function", "add", 1568.181885, 1.0, 6, "obj-28", "function", "add", 2000.0, 0.0, 4, "obj-27", "function", "clear", 6, "obj-27", "function", "add", 0.0, 0.0, 6, "obj-27", "function", "add", 272.727295, 1.0, 6, "obj-27", "function", "add", 1022.727356, 0.131148, 6, "obj-27", "function", "add", 1727.272827, 1.0, 6, "obj-27", "function", "add", 2000.0, 0.0, 4, "obj-26", "function", "clear", 6, "obj-26", "function", "add", 0.0, 0.0, 6, "obj-26", "function", "add", 113.636368, 1.0, 6, "obj-26", "function", "add", 1000.0, 0.065574, 6, "obj-26", "function", "add", 1863.636475, 1.0, 6, "obj-26", "function", "add", 2000.0, 0.0, 5, "obj-25", "flonum", "float", 440.0 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-54", "number", "int", 5000, 5, "obj-50", "flonum", "float", 0.2, 5, "obj-43", "flonum", "float", 1.0, 5, "obj-42", "flonum", "float", 0.0, 5, "obj-41", "flonum", "float", 0.06, 5, "obj-40", "flonum", "float", 1.97, 5, "obj-39", "flonum", "float", 4.2, 5, "obj-38", "flonum", "float", 0.5, 5, "obj-37", "flonum", "float", 0.88, 5, "obj-36", "flonum", "float", 2.8, 5, "obj-35", "flonum", "float", 8.24, 5, "obj-34", "flonum", "float", 0.94, 5, "obj-33", "flonum", "float", 0.01, 5, "obj-32", "flonum", "float", 13.8, 4, "obj-31", "function", "clear", 7, "obj-31", "function", "add", 0.0, 1.0, 0, 7, "obj-31", "function", "add", 284.090912, 0.180328, 0, 7, "obj-31", "function", "add", 681.818176, 0.360656, 0, 7, "obj-31", "function", "add", 875.0, 0.1, 0, 7, "obj-31", "function", "add", 1306.818237, 0.016393, 0, 7, "obj-31", "function", "add", 1988.636475, 0.081967, 0, 7, "obj-31", "function", "add", 5000.0, 0.0, 0, 5, "obj-31", "function", "domain", 5000.0, 6, "obj-31", "function", "range", 0.0, 1.0, 4, "obj-30", "function", "clear", 7, "obj-30", "function", "add", 0.0, 1.0, 0, 7, "obj-30", "function", "add", 340.909088, 0.131148, 0, 7, "obj-30", "function", "add", 568.181824, 0.426229, 0, 7, "obj-30", "function", "add", 1306.818237, 0.04918, 0, 7, "obj-30", "function", "add", 2386.36377, 0.098361, 0, 7, "obj-30", "function", "add", 4318.182129, 0.0, 0, 5, "obj-30", "function", "domain", 5000.0, 6, "obj-30", "function", "range", 0.0, 1.0, 4, "obj-29", "function", "clear", 7, "obj-29", "function", "add", 0.0, 0.8, 0, 7, "obj-29", "function", "add", 284.090912, 0.098361, 0, 7, "obj-29", "function", "add", 568.181824, 0.311475, 0, 7, "obj-29", "function", "add", 2215.90918, 0.065574, 0, 7, "obj-29", "function", "add", 3125.0, 0.114754, 0, 7, "obj-29", "function", "add", 4261.36377, 0.0, 0, 5, "obj-29", "function", "domain", 5000.0, 6, "obj-29", "function", "range", 0.0, 1.0, 4, "obj-28", "function", "clear", 7, "obj-28", "function", "add", 0.0, 0.68, 0, 7, "obj-28", "function", "add", 340.909088, 0.081967, 0, 7, "obj-28", "function", "add", 568.181824, 0.229508, 0, 7, "obj-28", "function", "add", 3409.091309, 0.016393, 0, 7, "obj-28", "function", "add", 4943.182129, 0.0, 0, 5, "obj-28", "function", "domain", 5000.0, 6, "obj-28", "function", "range", 0.0, 1.0, 4, "obj-27", "function", "clear", 7, "obj-27", "function", "add", 0.0, 0.5, 0, 7, "obj-27", "function", "add", 284.090912, 0.065574, 0, 7, "obj-27", "function", "add", 681.818176, 0.229508, 0, 7, "obj-27", "function", "add", 2272.727295, 0.016393, 0, 7, "obj-27", "function", "add", 3181.818359, 0.065574, 0, 7, "obj-27", "function", "add", 5000.0, 0.0, 0, 5, "obj-27", "function", "domain", 5000.0, 6, "obj-27", "function", "range", 0.0, 1.0, 4, "obj-26", "function", "clear", 7, "obj-26", "function", "add", 0.0, 0.5, 0, 7, "obj-26", "function", "add", 625.0, 0.245902, 0, 7, "obj-26", "function", "add", 2500.0, 0.065574, 0, 7, "obj-26", "function", "add", 3522.727295, 0.016393, 0, 7, "obj-26", "function", "add", 5000.0, 0.0, 0, 5, "obj-26", "function", "domain", 5000.0, 6, "obj-26", "function", "range", 0.0, 1.0, 5, "obj-25", "flonum", "float", 330.0 ]
						}
 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 642.0, 365.950867, 60.0, 26.0 ],
					"style" : "",
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 200.0, 21.0, 66.0, 20.0 ],
					"style" : "",
					"text" : "Duration"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 49.0, 34.0, 84.0, 20.0 ],
					"style" : "",
					"text" : "Play a note"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 28.0, 34.0, 24.0, 24.0 ],
					"style" : "toggleGreen"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.454902, 0.462745, 0.482353, 1.0 ],
					"bgcolor2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"bgfillcolor" : [ 						{
							"type" : "gradient",
							"color1" : [ 0.454902, 0.462745, 0.482353, 1.0 ],
							"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
							"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
							"angle" : 270.0,
							"proportion" : 0.39,
							"autogradient" : 0.0
						}
 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"gradient" : 1,
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 130.0, 50.0, 96.0, 22.0 ],
					"style" : "",
					"text" : "setdomain $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 797.0, 244.0, 49.0, 20.0 ],
					"style" : "",
					"text" : "phase"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 745.567749, 244.0, 49.0, 20.0 ],
					"style" : "",
					"text" : "partial"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 607.574219, 244.0, 49.0, 20.0 ],
					"style" : "",
					"text" : "partial"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 652.574219, 244.0, 49.0, 20.0 ],
					"style" : "",
					"text" : "phase"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 510.88385, 244.0, 49.0, 20.0 ],
					"style" : "",
					"text" : "phase"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 463.167755, 244.0, 49.0, 20.0 ],
					"style" : "",
					"text" : "partial"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 330.458069, 244.0, 49.0, 20.0 ],
					"style" : "",
					"text" : "partial"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 375.0, 244.0, 49.0, 20.0 ],
					"style" : "",
					"text" : "phase"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 235.0, 244.0, 49.0, 20.0 ],
					"style" : "",
					"text" : "phase"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 186.729034, 244.0, 49.0, 20.0 ],
					"style" : "",
					"text" : "partial"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 43.0, 244.0, 49.0, 20.0 ],
					"style" : "",
					"text" : "partial"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 92.0, 244.0, 49.0, 20.0 ],
					"style" : "",
					"text" : "phase"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 92.0, 208.0, 78.0, 20.0 ],
					"style" : "",
					"text" : "Frequency"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-25",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 28.0, 208.0, 58.0, 22.0 ],
					"style" : "numberGold",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"addpoints" : [ 0.0, 0.0, 0, 22.727272, 1.0, 0, 761.363647, 0.491803, 0, 1000.0, 0.0, 0 ],
					"id" : "obj-26",
					"maxclass" : "function",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 28.0, 104.0, 100.0, 86.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"addpoints" : [ 0.0, 0.0, 0, 545.45459, 1.0, 0, 931.818237, 0.721311, 0, 1000.0, 0.0, 0 ],
					"id" : "obj-27",
					"maxclass" : "function",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 143.0, 104.0, 100.0, 86.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"addpoints" : [ 0.0, 0.0, 0, 159.090912, 1.0, 0, 534.090942, 0.147541, 0, 795.45459, 0.868852, 0, 1000.0, 0.0, 0 ],
					"id" : "obj-28",
					"maxclass" : "function",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 258.0, 104.0, 100.0, 86.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"addpoints" : [ 0.0, 0.0, 0, 45.454548, 0.885246, 0, 500.0, 0.786885, 0, 704.54541, 0.360656, 0, 1000.0, 0.0, 0 ],
					"id" : "obj-29",
					"maxclass" : "function",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 373.0, 104.0, 100.0, 86.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"addpoints" : [ 0.0, 0.0, 0, 556.818176, 1.0, 0, 818.181824, 0.114754, 0, 1000.0, 0.0, 0 ],
					"id" : "obj-30",
					"maxclass" : "function",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 488.0, 104.0, 100.0, 86.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"addpoints" : [ 0.0, 0.0, 0, 45.454548, 1.0, 0, 193.181824, 0.196721, 0, 920.45459, 0.704918, 0, 1011.363647, 0.0, 0 ],
					"id" : "obj-31",
					"maxclass" : "function",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 603.0, 104.0, 100.0, 86.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-32",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 745.567749, 264.0, 41.0, 22.0 ],
					"style" : "numberGold",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-33",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 788.283875, 264.0, 41.0, 22.0 ],
					"style" : "numberGold",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-34",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 652.574219, 264.0, 41.0, 22.0 ],
					"style" : "numberGold",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-35",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 603.0, 264.0, 41.0, 22.0 ],
					"style" : "numberGold",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-36",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 330.458069, 264.0, 41.0, 22.0 ],
					"style" : "numberGold",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-37",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 375.0, 264.0, 41.0, 22.0 ],
					"style" : "numberGold",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-38",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 510.88385, 264.0, 41.0, 22.0 ],
					"style" : "numberGold",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-39",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 463.167755, 264.0, 41.0, 22.0 ],
					"style" : "numberGold",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-40",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 186.729034, 264.0, 41.0, 22.0 ],
					"style" : "numberGold",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-41",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 235.0, 264.0, 41.0, 22.0 ],
					"style" : "numberGold",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-42",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 92.0, 264.0, 41.0, 22.0 ],
					"style" : "numberGold",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-43",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 43.0, 264.0, 41.0, 22.0 ],
					"style" : "numberGold",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 729.0, 295.0, 122.0, 26.0 ],
					"style" : "newobjYellow",
					"text" : "partial~ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 589.0, 295.0, 122.0, 26.0 ],
					"style" : "newobjYellow",
					"text" : "partial~ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 450.0, 295.0, 122.0, 26.0 ],
					"style" : "newobjYellow",
					"text" : "partial~ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 310.0, 295.0, 122.0, 26.0 ],
					"style" : "newobjYellow",
					"text" : "partial~ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 170.0, 295.0, 122.0, 26.0 ],
					"style" : "newobjYellow",
					"text" : "partial~ 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 28.0, 295.0, 122.0, 26.0 ],
					"style" : "newobjYellow",
					"text" : "partial~ 1."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-50",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 287.0, 352.0, 37.0, 22.0 ],
					"style" : "numberGold",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 271.0, 385.0, 35.0, 24.0 ],
					"style" : "",
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 271.0, 416.0, 44.0, 44.0 ],
					"prototypename" : "helpfile",
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 322.0, 352.0, 64.0, 20.0 ],
					"style" : "",
					"text" : "Amplitude"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 130.0, 21.0, 71.0, 22.0 ],
					"style" : "numberGold",
					"triscale" : 0.9
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.8, 1.0 ],
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 37.5, 78.5, 37.5, 78.5 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.8, 1.0 ],
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 37.5, 78.5, 152.5, 78.5 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.8, 1.0 ],
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 37.5, 78.5, 267.5, 78.5 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.8, 1.0 ],
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 37.5, 78.5, 382.5, 78.5 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.8, 1.0 ],
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 37.5, 78.5, 497.5, 78.5 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.8, 1.0 ],
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 37.5, 78.5, 612.5, 78.5 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 139.5, 85.0, 37.5, 85.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 139.5, 85.0, 152.5, 85.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 139.5, 85.0, 267.5, 85.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 139.5, 85.0, 382.5, 85.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 139.5, 85.0, 497.5, 85.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.8, 0.4, 1.0 ],
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 139.5, 85.0, 612.5, 85.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 37.5, 236.0, 738.5, 236.0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 37.5, 236.0, 598.5, 236.0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 37.5, 236.0, 459.5, 236.0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 37.5, 236.0, 319.5, 236.0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 37.5, 236.0, 179.5, 236.0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 37.5, 236.0, 37.5, 236.0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 64.5, 200.0, 140.5, 200.0 ],
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 179.5, 213.0, 282.5, 213.0 ],
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 294.5, 213.0, 422.5, 213.0 ],
					"source" : [ "obj-28", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 409.5, 211.0, 562.5, 211.0 ],
					"source" : [ "obj-29", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 524.5, 204.0, 701.5, 204.0 ],
					"source" : [ "obj-30", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 639.5, 199.0, 841.5, 199.0 ],
					"source" : [ "obj-31", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 755.067749, 289.0, 772.833313, 289.0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 797.783875, 289.0, 807.166687, 289.0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 662.074219, 289.0, 667.166687, 289.0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 612.5, 289.0, 632.833313, 289.0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 339.958069, 289.0, 353.833344, 289.0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 384.5, 289.0, 388.166656, 289.0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 520.38385, 289.0, 528.166687, 289.0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 472.667755, 289.0, 493.833344, 289.0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 196.229034, 289.0, 213.833328, 289.0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 244.5, 289.0, 248.166672, 289.0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 101.5, 289.0, 106.166664, 289.0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 52.5, 289.0, 71.833336, 289.0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 738.5, 334.5, 280.5, 334.5 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 598.5, 334.0, 280.5, 334.0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 459.5, 334.0, 280.5, 334.0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 319.5, 334.0, 280.5, 334.0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 179.5, 334.0, 280.5, 334.0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 37.5, 334.0, 280.5, 334.0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 280.5, 407.0, 305.5, 407.0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-54", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "partial~.maxpat",
				"bootpath" : "/Applications/Max 7/Max.app/Contents/Resources/C74/docs/tutorial-patchers/msp-tut",
				"patcherrelativepath" : "../../../../../../Applications/Max 7/Max.app/Contents/Resources/C74/docs/tutorial-patchers/msp-tut",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"embedsnapshot" : 0,
		"styles" : [ 			{
				"name" : "newobjYellow",
				"default" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"fontsize" : [ 12.059008 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "numberGold",
				"default" : 				{
					"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "toggleGreen",
				"default" : 				{
					"bgcolor" : [ 0.133674, 0.354866, 0.236742, 0.75 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
