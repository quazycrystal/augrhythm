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
		"rect" : [ 59.0, 103.0, 927.0, 836.0 ],
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
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-49",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 515.0, 479.666656, 70.0, 39.0 ],
					"style" : "",
					"text" : "Filtergraph"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"id" : "obj-46",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 461.5, 176.876526, 85.0, 24.0 ],
					"style" : "",
					"text" : "Filtergraph"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 0,
							"revision" : 0,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ 34.0, 34.0, 640.0, 480.0 ],
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
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"boxes" : [ 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-13",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 111.0, 171.57283, 50.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 111.0, 100.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "mtof"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 111.0, 135.786423, 44.0, 22.0 ],
									"style" : "",
									"text" : "/ 220."
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.454902, 0.462745, 0.482353, 1.0 ],
									"bgcolor2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor" : [ 										{
											"type" : "gradient",
											"color1" : [ 0.454902, 0.462745, 0.482353, 1.0 ],
											"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
											"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
											"angle" : 270.0,
											"proportion" : 0.39,
											"autogradient" : 0.0
										}
 ],
									"gradient" : 1,
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 206.353867, 57.0, 22.0 ],
									"style" : "",
									"text" : "loop 1, 0",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 135.786423, 60.0, 22.0 ],
									"style" : "",
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 111.0, 204.353867, 43.0, 22.0 ],
									"style" : "",
									"text" : "sig~ 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-38",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 111.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-39",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 77.0, 279.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 107.0, 190.850281, 67.0, 26.0 ],
					"saved_object_attributes" : 					{
						"bgfillcolor" : [ 							{
								"type" : "gradient",
								"color1" : [ 0.454902, 0.462745, 0.482353, 1.0 ],
								"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
								"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
								"angle" : 270.0,
								"proportion" : 0.39
							}
 ],
						"bgfillcolor_dictionary" : 						{
							"type" : "gradient",
							"color1" : [ 0.454902, 0.462745, 0.482353, 1.0 ],
							"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
							"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
							"angle" : 270.0,
							"proportion" : 0.39
						}
,
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p calcFreq"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 715.0, 375.945404, 150.0, 33.0 ],
					"style" : "",
					"text" : "< this works in lieu of [filtergraph~], if you prefer."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 633.0, 375.945404, 73.0, 26.0 ],
					"style" : "",
					"text" : "filtercoeff~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 367.0, 439.611115, 80.0, 20.0 ],
					"style" : "",
					"text" : "Select a filter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 288.0, 571.555542, 21.0, 20.0 ],
					"style" : "",
					"text" : "3)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 515.0, 158.35849, 21.0, 20.0 ],
					"style" : "",
					"text" : "2)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 78.0, 95.166664, 21.0, 20.0 ],
					"style" : "",
					"text" : "1)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 529.0, 375.945404, 44.0, 44.0 ],
					"prototypename" : "helpfile",
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 768.0, 176.876526, 61.0, 20.0 ],
					"style" : "",
					"text" : "Q / Slope"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 768.0, 147.942093, 36.0, 20.0 ],
					"style" : "",
					"text" : "Gain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 768.0, 100.489624, 90.0, 33.0 ],
					"style" : "",
					"text" : "Center / Cutoff Frequency"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 656.0, 266.499969, 74.0, 20.0 ],
					"style" : "",
					"text" : "coefficients:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 492.0, 57.666668, 117.0, 18.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-3", "filtergraph~", "nfilters", 1, 9, "obj-3", "filtergraph~", "setoptions", 0, 1, 1, 0, 0, 8, "obj-3", "filtergraph~", "params", 0, 1443.057129, 0.942205, 0.803713, 5, "obj-47", "umenu", "int", 1 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-3", "filtergraph~", "nfilters", 1, 9, "obj-3", "filtergraph~", "setoptions", 0, 2, 1, 0, 0, 8, "obj-3", "filtergraph~", "params", 0, 2227.063232, 0.900739, 0.803713, 5, "obj-47", "umenu", "int", 2 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-3", "filtergraph~", "nfilters", 1, 9, "obj-3", "filtergraph~", "setoptions", 0, 3, 1, 0, 0, 8, "obj-3", "filtergraph~", "params", 0, 752.273743, 1.128019, 0.913822, 5, "obj-47", "umenu", "int", 3 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-3", "filtergraph~", "nfilters", 1, 9, "obj-3", "filtergraph~", "setoptions", 0, 4, 1, 0, 0, 8, "obj-3", "filtergraph~", "params", 0, 381.184662, 1.03094, 0.294069, 5, "obj-47", "umenu", "int", 4 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-3", "filtergraph~", "nfilters", 1, 9, "obj-3", "filtergraph~", "setoptions", 0, 5, 1, 0, 0, 8, "obj-3", "filtergraph~", "params", 0, 500.407898, 5.953526, 2.235108, 5, "obj-47", "umenu", "int", 5 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-3", "filtergraph~", "nfilters", 1, 9, "obj-3", "filtergraph~", "setoptions", 0, 6, 1, 0, 0, 8, "obj-3", "filtergraph~", "params", 0, 391.706818, 4.546359, 1.009255, 5, "obj-47", "umenu", "int", 6 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-3", "filtergraph~", "nfilters", 1, 9, "obj-3", "filtergraph~", "setoptions", 0, 7, 1, 0, 0, 8, "obj-3", "filtergraph~", "params", 0, 2550.387207, 3.972871, 1.009255, 5, "obj-47", "umenu", "int", 7 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-3", "filtergraph~", "nfilters", 1, 9, "obj-3", "filtergraph~", "setoptions", 0, 8, 1, 0, 0, 8, "obj-3", "filtergraph~", "params", 0, 1652.661621, 2.650975, 1.892189, 5, "obj-47", "umenu", "int", 8 ]
						}
, 						{
							"number" : 9,
							"data" : [ 5, "obj-3", "filtergraph~", "nfilters", 1, 9, "obj-3", "filtergraph~", "setoptions", 0, 9, 1, 0, 0, 8, "obj-3", "filtergraph~", "params", 0, 1652.661621, 1.078389, 0.773087, 5, "obj-47", "umenu", "int", 9 ]
						}
 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-47",
					"items" : [ "display", ",", "lowpass", ",", "highpass", ",", "bandpass", ",", "bandstop", ",", "peaknotch", ",", "lowshelf", ",", "highshelf", ",", "resonant", ",", "allpass" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 492.0, 86.601097, 120.0, 22.0 ],
					"style" : "umenuGold"
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
					"gradient" : 1,
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 559.0, 237.06015, 282.0, 22.0 ],
					"style" : "",
					"text" : "0.037284 0.074569 0.037284 -1.585001 0.670933"
				}

			}
, 			{
				"box" : 				{
					"cantchange" : 1,
					"format" : 6,
					"id" : "obj-17",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 715.0, 117.850281, 50.0, 22.0 ],
					"style" : "",
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"cantchange" : 1,
					"format" : 6,
					"id" : "obj-15",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 715.0, 176.876526, 50.0, 22.0 ],
					"style" : "",
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"cantchange" : 1,
					"format" : 6,
					"id" : "obj-12",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 715.0, 147.942093, 50.0, 22.0 ],
					"style" : "",
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 529.0, 278.725739, 87.0, 26.0 ],
					"style" : "newobjYellow",
					"text" : "biquad~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 604.0, 306.502777, 90.0, 20.0 ],
					"style" : "",
					"text" : "Biquad volume"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 164.0, 301.888885, 47.0, 33.0 ],
					"style" : "",
					"text" : "Dry volume"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 164.0, 140.833328, 206.0, 20.0 ],
					"style" : "",
					"text" : "Play sample back at different pitches"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-23",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 554.0, 306.502777, 50.0, 22.0 ],
					"style" : "numberGold"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 529.0, 338.909332, 44.0, 26.0 ],
					"style" : "",
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 107.0, 28.0, 79.0, 26.0 ],
					"style" : "",
					"text" : "loadmess 57"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-21",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 141.0, 266.499969, 50.0, 22.0 ],
					"style" : "numberGold"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 107.0, 305.388885, 33.0, 26.0 ],
					"style" : "",
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 158.0, 375.945404, 80.0, 20.0 ],
					"style" : "",
					"text" : "Audio On/Off"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 107.0, 362.333344, 44.0, 44.0 ],
					"prototypename" : "helpfile",
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 107.0, 77.111115, 336.0, 53.0 ],
					"presentation_rect" : [ 15.0, 15.0, 336.0, 53.0 ],
					"style" : "ksliderWhite"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 107.0, 223.5, 94.0, 26.0 ],
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
					"style" : "",
					"text" : "groove~ chords"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 194.0, 28.0, 141.0, 26.0 ],
					"style" : "",
					"text" : "buffer~ chords sacre.aiff"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-3",
					"maxclass" : "filtergraph~",
					"nfilters" : 1,
					"numinlets" : 8,
					"numoutlets" : 7,
					"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 543.0, 119.007652, 166.0, 85.0 ],
					"setfilter" : [ 0, 1, 1, 0, 0, 2260.742188, 1.735527, 0.803713, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
					"style" : "filtergraphBronze"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 270.0, 734.888916, 44.0, 44.0 ],
					"prototypename" : "helpfile",
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 811.0, 617.388916, 61.0, 20.0 ],
					"style" : "",
					"text" : "Q / Slope"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 811.0, 582.666687, 36.0, 20.0 ],
					"style" : "",
					"text" : "Gain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 811.0, 525.722229, 90.0, 33.0 ],
					"style" : "",
					"text" : "Center / Cutoff Frequency"
				}

			}
, 			{
				"box" : 				{
					"cantchange" : 1,
					"format" : 6,
					"id" : "obj-63",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 758.0, 546.555542, 50.0, 22.0 ],
					"style" : "",
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"cantchange" : 1,
					"format" : 6,
					"id" : "obj-64",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 758.0, 617.388916, 50.0, 22.0 ],
					"style" : "",
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"cantchange" : 1,
					"format" : 6,
					"id" : "obj-65",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 758.0, 582.666687, 50.0, 22.0 ],
					"style" : "",
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 394.0, 482.666656, 78.0, 18.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-54", "filtergraph~", "nfilters", 5, 9, "obj-54", "filtergraph~", "setoptions", 4, 1, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 4, 14656.225586, 0.629202, 1.0, 9, "obj-54", "filtergraph~", "setoptions", 3, 5, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 3, 2382.736572, 6.004982, 0.933673, 9, "obj-54", "filtergraph~", "setoptions", 2, 5, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 2, 412.208435, 6.623326, 1.486463, 9, "obj-54", "filtergraph~", "setoptions", 1, 5, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 1, 169.220505, 4.261147, 2.151512, 9, "obj-54", "filtergraph~", "setoptions", 0, 2, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 0, 42.766808, 1.250874, 0.761749 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-54", "filtergraph~", "nfilters", 5, 9, "obj-54", "filtergraph~", "setoptions", 4, 1, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 4, 14656.225586, 0.629202, 1.0, 9, "obj-54", "filtergraph~", "setoptions", 3, 5, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 3, 2382.736572, 6.004982, 0.933673, 9, "obj-54", "filtergraph~", "setoptions", 2, 5, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 2, 412.208435, 6.623326, 1.486463, 9, "obj-54", "filtergraph~", "setoptions", 1, 5, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 1, 166.4422, 0.129933, 2.151512, 9, "obj-54", "filtergraph~", "setoptions", 0, 2, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 0, 42.766808, 1.250874, 0.761749 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-54", "filtergraph~", "nfilters", 5, 9, "obj-54", "filtergraph~", "setoptions", 4, 1, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 4, 14656.225586, 0.629202, 1.0, 9, "obj-54", "filtergraph~", "setoptions", 3, 5, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 3, 1387.887329, 31.770037, 0.933673, 9, "obj-54", "filtergraph~", "setoptions", 2, 5, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 2, 891.609985, 0.083034, 1.486463, 9, "obj-54", "filtergraph~", "setoptions", 1, 5, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 1, 166.4422, 0.129933, 2.151512, 9, "obj-54", "filtergraph~", "setoptions", 0, 2, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 0, 42.766808, 1.250874, 0.761749 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-54", "filtergraph~", "nfilters", 5, 9, "obj-54", "filtergraph~", "setoptions", 4, 1, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 4, 14656.225586, 0.629202, 1.0, 9, "obj-54", "filtergraph~", "setoptions", 3, 5, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 3, 1321.320312, 30.251003, 0.933673, 9, "obj-54", "filtergraph~", "setoptions", 2, 5, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 2, 821.424255, 0.02865, 2.607257, 9, "obj-54", "filtergraph~", "setoptions", 1, 5, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 1, 385.971161, 16.80349, 2.151512, 9, "obj-54", "filtergraph~", "setoptions", 0, 2, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 0, 42.766808, 1.250874, 0.761749 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-54", "filtergraph~", "nfilters", 5, 9, "obj-54", "filtergraph~", "setoptions", 4, 1, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 4, 14656.225586, 0.629202, 1.0, 9, "obj-54", "filtergraph~", "setoptions", 3, 5, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 3, 3768.308594, 0.150758, 0.933673, 9, "obj-54", "filtergraph~", "setoptions", 2, 5, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 2, 921.331726, 1.133973, 2.607257, 9, "obj-54", "filtergraph~", "setoptions", 1, 5, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 1, 385.971161, 16.80349, 2.151512, 9, "obj-54", "filtergraph~", "setoptions", 0, 2, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 0, 264.309937, 0.844758, 0.761749 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-54", "filtergraph~", "nfilters", 5, 9, "obj-54", "filtergraph~", "setoptions", 4, 1, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 4, 6792.419434, 3.023584, 1.0, 9, "obj-54", "filtergraph~", "setoptions", 3, 5, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 3, 1121.611694, 0.087283, 0.933673, 9, "obj-54", "filtergraph~", "setoptions", 2, 5, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 2, 921.331726, 1.133973, 2.607257, 9, "obj-54", "filtergraph~", "setoptions", 1, 5, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 1, 129.788589, 0.129933, 2.151512, 9, "obj-54", "filtergraph~", "setoptions", 0, 2, 1, 0, 0, 8, "obj-54", "filtergraph~", "params", 0, 34.19035, 1.37981, 0.761749 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "<invalid>", "filtergraph~", "nfilters", 1, 9, "<invalid>", "filtergraph~", "setoptions", 0, 7, 1, 0, 0, 8, "<invalid>", "filtergraph~", "params", 0, 2550.387207, 3.972871, 1.009255, 5, "<invalid>", "umenu", "int", 7 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "<invalid>", "filtergraph~", "nfilters", 1, 9, "<invalid>", "filtergraph~", "setoptions", 0, 8, 1, 0, 0, 8, "<invalid>", "filtergraph~", "params", 0, 1652.661621, 2.650975, 1.892189, 5, "<invalid>", "umenu", "int", 8 ]
						}
, 						{
							"number" : 9,
							"data" : [ 5, "<invalid>", "filtergraph~", "nfilters", 1, 9, "<invalid>", "filtergraph~", "setoptions", 0, 9, 1, 0, 0, 8, "<invalid>", "filtergraph~", "params", 0, 1652.661621, 1.078389, 0.773087, 5, "<invalid>", "umenu", "int", 9 ]
						}
 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-54",
					"maxclass" : "filtergraph~",
					"nfilters" : 5,
					"numinlets" : 8,
					"numoutlets" : 7,
					"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 313.0, 521.555542, 417.0, 113.0 ],
					"setfilter" : [ 4, 1, 1, 0, 0, 14656.225586, 0.629202, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3, 5, 1, 0, 0, 2382.736572, 6.004982, 0.933673, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2, 5, 1, 0, 0, 412.208435, 6.623326, 1.486463, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1, 5, 1, 0, 0, 169.220505, 4.261147, 2.151512, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 2, 1, 0, 0, 42.766808, 1.250874, 0.761749, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
					"style" : "filtergraphBronze"
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
					"gradient" : 1,
					"id" : "obj-53",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 313.0, 482.666656, 71.0, 22.0 ],
					"style" : "",
					"text" : "selectfilt $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "number",
					"maximum" : 4,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 313.0, 439.611115, 50.0, 22.0 ],
					"style" : "numberGold"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 228.0, 617.388916, 37.0, 22.0 ],
					"style" : "messageRed",
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 194.0, 690.555542, 60.0, 33.0 ],
					"style" : "",
					"text" : "Cascade volume"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-36",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 194.0, 650.722229, 50.0, 22.0 ],
					"style" : "numberGold"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 270.0, 697.555542, 49.0, 26.0 ],
					"style" : "",
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 270.0, 650.722229, 62.0, 26.0 ],
					"style" : "newobjBlue",
					"text" : "cascade~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 461.5, 41.0, 419.0, 391.0 ],
					"style" : "panelBlue"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 182.0, 435.611115, 737.0, 356.0 ],
					"style" : "panelGreen"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 59.5, 64.850281, 387.5, 105.091812 ],
					"style" : "panelGold"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 116.5, 347.055573, 141.5, 347.055573 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 116.5, 347.055573, 116.5, 347.055573 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 538.5, 368.422455, 563.5, 368.422455 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 501.5, 80.814209, 479.0, 80.814209, 479.0, 122.47979, 539.0, 122.47979, 539.0, 115.53553, 552.5, 115.53553 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 601.5, 230.115875, 710.0, 230.115875, 710.0, 143.312576, 724.5, 143.312576 ],
					"source" : [ "obj-3", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 626.0, 230.115875, 710.0, 230.115875, 710.0, 171.08963, 724.5, 171.08963 ],
					"source" : [ "obj-3", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 577.0, 230.115875, 710.0, 230.115875, 710.0, 112.063393, 724.5, 112.063393 ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 552.5, 219.699478, 831.5, 219.699478 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 279.5, 728.722229, 304.5, 728.722229 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 279.5, 728.722229, 279.5, 728.722229 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 116.5, 255.612854, 538.5, 255.612854 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 116.5, 257.444458, 279.5, 257.444458 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-47", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 388.833344, 688.222229, 737.0, 688.222229, 737.0, 539.611084, 767.5, 539.611084 ],
					"source" : [ "obj-54", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 521.5, 717.388916, 752.0, 717.388916, 752.0, 610.444458, 767.5, 610.444458 ],
					"source" : [ "obj-54", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 455.166656, 702.111084, 745.0, 702.111084, 745.0, 577.111084, 767.5, 577.111084 ],
					"source" : [ "obj-54", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 403.5, 510.444458, 322.5, 510.444458 ],
					"source" : [ "obj-57", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"embedsnapshot" : 0,
		"styles" : [ 			{
				"name" : "filtergraphBronze",
				"default" : 				{
					"color" : [ 0.010881, 0.909804, 0.896768, 1.0 ],
					"bgcolor" : [ 0.285714, 0.256629, 0.217237, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "ksliderWhite",
				"default" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "messageRed",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.52549, 0.062745, 0.003922, 1.0 ],
						"color1" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
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
, 			{
				"name" : "newobjBlue",
				"default" : 				{
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
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
				"name" : "panelBlue",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.317647, 0.654902, 0.976471, 0.25 ],
						"color1" : [ 0.435294, 0.462745, 0.498039, 1.0 ],
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
, 			{
				"name" : "panelGold",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.639216, 0.458824, 0.070588, 0.25 ],
						"color1" : [ 0.435294, 0.462745, 0.498039, 1.0 ],
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
, 			{
				"name" : "panelGreen",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.439216, 0.74902, 0.254902, 0.25 ],
						"color1" : [ 0.435294, 0.462745, 0.498039, 1.0 ],
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
