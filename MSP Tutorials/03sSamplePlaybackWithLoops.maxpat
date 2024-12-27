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
		"rect" : [ 59.0, 103.0, 640.0, 480.0 ],
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
					"hidden" : 1,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 142.0, 64.0, 72.0, 26.0 ],
					"style" : "",
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 275.0, 316.670654, 29.5, 26.0 ],
					"style" : "",
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 199.0, 27.0, 185.0, 20.0 ],
					"style" : "",
					"text" : "Click on presets to hear samples"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"items" : [ ",", "Off", ",", "Igor's", "Chord", ",", "Ludwig's", "3rd", ",", "Is", "That", "You?", ",", "Endless", "Igor", ",", "Long", "Ludwig", ",", "Ludwig", "1/2", "Step", "Up", ",", "Slow", "&", "Backward", ",", "Sss", ",", "Instant", "Igor", ",", "Percussive", "Excerpt", ",", "Oom-Pah", ",", "Low", "Stuff", ",", "Fast", "&", "Backward", ",", "Slow", "&", "Backward", ",", "How", "Low", "Can", "You", "Get?" ],
					"maxclass" : "umenu",
					"menumode" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 303.0, 81.071854, 178.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 170.0, 140.293411, 62.0, 20.0 ],
					"style" : "",
					"text" : "Start time"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 245.0, 57.898205, 46.0, 48.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-20", "umenu", "int", 0, 5, "obj-17", "toggle", "int", 0, 5, "obj-13", "flonum", "float", 0.0, 5, "obj-12", "flonum", "float", 0.0, 5, "obj-11", "flonum", "float", 0.0, 5, "obj-5", "flonum", "float", 0.0, 5, "obj-2", "umenu", "int", 1 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-20", "umenu", "int", 0, 5, "obj-17", "toggle", "int", 0, 5, "obj-13", "flonum", "float", 1.0, 5, "obj-12", "flonum", "float", 0.0, 5, "obj-11", "flonum", "float", 0.0, 5, "obj-5", "flonum", "float", 0.0, 5, "obj-2", "umenu", "int", 2 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-20", "umenu", "int", 1, 5, "obj-17", "toggle", "int", 0, 5, "obj-13", "flonum", "float", 1.0, 5, "obj-12", "flonum", "float", 0.0, 5, "obj-11", "flonum", "float", 0.0, 5, "obj-5", "flonum", "float", 0.0, 5, "obj-2", "umenu", "int", 3 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-20", "umenu", "int", 2, 5, "obj-17", "toggle", "int", 0, 5, "obj-13", "flonum", "float", 1.0, 5, "obj-12", "flonum", "float", 0.0, 5, "obj-11", "flonum", "float", 0.0, 5, "obj-5", "flonum", "float", 0.0, 5, "obj-2", "umenu", "int", 4 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-20", "umenu", "int", 0, 5, "obj-17", "toggle", "int", 1, 5, "obj-13", "flonum", "float", 1.0, 5, "obj-12", "flonum", "float", 572.0, 5, "obj-11", "flonum", "float", 860.0, 5, "obj-5", "flonum", "float", 0.0, 5, "obj-2", "umenu", "int", 5 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-20", "umenu", "int", 1, 5, "obj-17", "toggle", "int", 1, 5, "obj-13", "flonum", "float", 1.0, 5, "obj-12", "flonum", "float", 702.0, 5, "obj-11", "flonum", "float", 865.0, 5, "obj-5", "flonum", "float", 50.0, 5, "obj-2", "umenu", "int", 6 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-20", "umenu", "int", 1, 5, "obj-17", "toggle", "int", 0, 5, "obj-13", "flonum", "float", 1.06, 5, "obj-12", "flonum", "float", 0.0, 5, "obj-11", "flonum", "float", 0.0, 5, "obj-5", "flonum", "float", 0.0, 5, "obj-2", "umenu", "int", 7 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-20", "umenu", "int", 1, 5, "obj-17", "toggle", "int", 0, 5, "obj-13", "flonum", "float", -0.25, 5, "obj-12", "flonum", "float", 0.0, 5, "obj-11", "flonum", "float", 0.0, 5, "obj-5", "flonum", "float", 1412.400024, 5, "obj-2", "umenu", "int", 8 ]
						}
, 						{
							"number" : 9,
							"data" : [ 5, "obj-20", "umenu", "int", 2, 5, "obj-17", "toggle", "int", 1, 5, "obj-13", "flonum", "float", 0.89, 5, "obj-12", "flonum", "float", 9.0, 5, "obj-11", "flonum", "float", 177.0, 5, "obj-5", "flonum", "float", 0.0, 5, "obj-2", "umenu", "int", 9 ]
						}
, 						{
							"number" : 10,
							"data" : [ 5, "obj-20", "umenu", "int", 0, 5, "obj-17", "toggle", "int", 0, 5, "obj-13", "flonum", "float", 4.0, 5, "obj-12", "flonum", "float", 0.0, 5, "obj-11", "flonum", "float", 0.0, 5, "obj-5", "flonum", "float", 0.0, 5, "obj-2", "umenu", "int", 10 ]
						}
, 						{
							"number" : 11,
							"data" : [ 5, "obj-20", "umenu", "int", 2, 5, "obj-17", "toggle", "int", 1, 5, "obj-13", "flonum", "float", 0.89, 5, "obj-12", "flonum", "float", 318.0, 5, "obj-11", "flonum", "float", 413.0, 5, "obj-5", "flonum", "float", 310.0, 5, "obj-2", "umenu", "int", 11 ]
						}
, 						{
							"number" : 12,
							"data" : [ 5, "obj-20", "umenu", "int", 1, 5, "obj-17", "toggle", "int", 1, 5, "obj-13", "flonum", "float", 0.445, 5, "obj-12", "flonum", "float", 310.0, 5, "obj-11", "flonum", "float", 530.0, 5, "obj-5", "flonum", "float", 420.0, 5, "obj-2", "umenu", "int", 12 ]
						}
, 						{
							"number" : 13,
							"data" : [ 5, "obj-20", "umenu", "int", 2, 5, "obj-17", "toggle", "int", 1, 5, "obj-13", "flonum", "float", 0.2, 5, "obj-12", "flonum", "float", 602.0, 5, "obj-11", "flonum", "float", 782.0, 5, "obj-5", "flonum", "float", 458.0, 5, "obj-2", "umenu", "int", 13 ]
						}
, 						{
							"number" : 14,
							"data" : [ 5, "obj-20", "umenu", "int", 0, 5, "obj-17", "toggle", "int", 0, 5, "obj-13", "flonum", "float", -3.0, 5, "obj-12", "flonum", "float", 0.0, 5, "obj-11", "flonum", "float", 0.0, 5, "obj-5", "flonum", "float", 1428.699951, 5, "obj-2", "umenu", "int", 14 ]
						}
, 						{
							"number" : 15,
							"data" : [ 5, "obj-20", "umenu", "int", 2, 5, "obj-17", "toggle", "int", 0, 5, "obj-13", "flonum", "float", -0.5, 5, "obj-12", "flonum", "float", 0.0, 5, "obj-11", "flonum", "float", 0.0, 5, "obj-5", "flonum", "float", 782.0, 5, "obj-2", "umenu", "int", 15 ]
						}
, 						{
							"number" : 16,
							"data" : [ 5, "obj-20", "umenu", "int", 1, 5, "obj-17", "toggle", "int", 0, 5, "obj-13", "flonum", "float", 0.125, 5, "obj-12", "flonum", "float", 0.0, 5, "obj-11", "flonum", "float", 0.0, 5, "obj-5", "flonum", "float", 79.0, 5, "obj-2", "umenu", "int", 16 ]
						}
 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-5",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 164.0, 172.479034, 62.0, 22.0 ],
					"style" : "numberGold",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 296.0, 414.251495, 80.0, 20.0 ],
					"style" : "",
					"text" : "Audio On/Off"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 420.0, 140.293411, 87.0, 20.0 ],
					"style" : "",
					"text" : "Loop end time"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 332.0, 140.293411, 90.0, 20.0 ],
					"style" : "",
					"text" : "Loop start time"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 237.0, 140.293411, 95.0, 20.0 ],
					"style" : "",
					"text" : "Playback speed"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-11",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 422.0, 172.479034, 62.0, 22.0 ],
					"style" : "numberGold",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-12",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 336.0, 172.479034, 62.0, 22.0 ],
					"style" : "numberGold",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-13",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 240.0, 172.479034, 62.0, 22.0 ],
					"style" : "numberGold",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 240.0, 209.814377, 33.0, 26.0 ],
					"style" : "",
					"text" : "sig~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 104.0, 140.293411, 53.0, 20.0 ],
					"style" : "",
					"text" : "Looping"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 32.0, 140.293411, 77.0, 20.0 ],
					"style" : "",
					"text" : "Now Playing"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 116.0, 172.479034, 24.0, 24.0 ],
					"style" : "toggleGold"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 116.0, 199.514969, 50.0, 22.0 ],
					"style" : "",
					"text" : "loop $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 56.0, 247.149704, 74.0, 26.0 ],
					"style" : "",
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-20",
					"items" : [ "igor", ",", "ludwig", ",", "question" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 31.0, 172.479034, 68.0, 22.0 ],
					"style" : "umenuGold"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-21",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 503.0, 172.479034, 50.0, 22.0 ],
					"style" : "numberGold",
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 240.0, 316.670654, 29.5, 26.0 ],
					"style" : "",
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 240.0, 387.479034, 54.0, 54.0 ],
					"prototypename" : "helpfile",
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "signal" ],
					"patching_rect" : [ 240.0, 258.736542, 88.0, 26.0 ],
					"saved_object_attributes" : 					{
						"basictuning" : 440,
						"followglobaltempo" : 0,
						"formant" : [ 1.0 ],
						"formantcorrection" : 0,
						"loopend" : [ 0.0, "ms" ],
						"loopstart" : [ 0.0, "ms" ],
						"mode" : "basic",
						"originallength" : [ 1371.559082, "ticks" ],
						"originaltempo" : 120.0,
						"phase" : [ 0.0, "ticks" ],
						"pitchcorrection" : 0,
						"quality" : "basic",
						"timestretch" : [ 0 ]
					}
,
					"style" : "newobjYellow",
					"text" : "groove~ igor 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 362.0, 378.467072, 217.0, 26.0 ],
					"style" : "newobjBrown",
					"text" : "buffer~ question isthatyou.aiff 781.75 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 361.0, 348.856293, 197.0, 26.0 ],
					"style" : "newobjBrown",
					"text" : "buffer~ ludwig eroica.aiff 1412.43 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 361.0, 319.245514, 173.0, 26.0 ],
					"style" : "newobjBrown",
					"text" : "buffer~ igor sacre.aiff 1428.7 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 503.0, 140.293411, 64.0, 20.0 ],
					"style" : "",
					"text" : "Amplitude"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 431.5, 247.149704, 318.5, 247.149704 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 345.5, 236.850296, 284.0, 236.850296 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 125.5, 243.28743, 249.5, 243.28743 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 65.5, 280.622742, 165.0, 280.622742, 165.0, 243.28743, 249.5, 243.28743 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 512.5, 303.796417, 260.0, 303.796417 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 512.5, 303.796417, 295.0, 303.796417 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"midpoints" : [ 272.5, 132.568863, 512.5, 132.568863 ],
					"source" : [ "obj-4", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 173.5, 243.28743, 249.5, 243.28743 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"embedsnapshot" : 0,
		"styles" : [ 			{
				"name" : "newobjBrown",
				"default" : 				{
					"accentcolor" : [ 0.654902, 0.572549, 0.376471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
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
				"name" : "toggleGold",
				"default" : 				{
					"bgcolor" : [ 0.639216, 0.458824, 0.070588, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "umenuGold",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 0.764706, 0.592157, 0.101961, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
