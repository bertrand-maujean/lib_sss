
	// Table de polynômes irréductibles de F2[X]
	// Utilisée pour les calculs dans GF(2^n)
	// Polynômes de degré mutliple de 8, jusqu'à 10000
	// Structure de la table : suite d'entier avec <nb coeff>, <coeff dominant>, <coeff suivant>...
	// Nb : le coeff dominant donne le degré. Le coeff constant n'est pas toujours stocké, il est toujours à 1

static const uint16_t coeffs[] = {
	4,8,4,3,1,
	4,16,5,3,1,	4,24,4,3,1,	4,32,7,3,2,	4,40,5,4,3,	4,48,5,3,2,	4,56,7,4,2,	4,64,4,3,1,	4,72,10,9,3,
	4,80,9,4,2,	4,88,7,6,2,	4,96,10,9,6,	4,104,4,3,1,	4,112,5,4,3,	4,120,4,3,1,	4,128,7,2,1,	4,136,5,3,2,
	4,144,7,4,2,	4,152,6,3,2,	4,160,5,3,2,	4,168,15,3,2,	4,176,11,3,2,	4,184,9,8,7,	4,192,7,2,1,	4,200,5,3,2,
	4,208,9,3,1,	4,216,7,3,1,	4,224,9,8,3,	4,232,9,4,2,	4,240,8,5,3,	4,248,15,14,10,	4,256,10,5,2,	4,264,9,6,2,
	4,272,9,3,2,	4,280,9,5,2,	4,288,11,10,1,	4,296,7,3,2,	4,304,11,2,1,	4,312,9,7,4,	4,320,4,3,1,	4,328,8,3,1,
	4,336,7,4,1,	4,344,7,2,1,	4,352,13,11,6,	4,360,5,3,2,	4,368,7,3,2,	4,376,8,7,5,	4,384,12,3,2,	4,392,13,10,6,
	4,400,5,3,2,	4,408,5,3,2,	4,416,9,5,2,	4,424,9,7,2,	4,432,13,4,3,	4,440,4,3,1,	4,448,11,6,4,	4,456,18,9,6,
	4,464,19,18,13,	4,472,11,3,2,	4,480,15,9,6,	4,488,4,3,1,	4,496,16,5,2,	4,504,15,14,6,	4,512,8,5,2,	4,520,15,11,2,
	4,528,11,6,2,	4,536,7,5,3,	4,544,8,3,1,	4,552,19,16,9,	4,560,11,9,6,	4,568,15,7,6,	4,576,13,4,3,	4,584,14,13,3,
	4,592,13,6,3,	4,600,9,5,2,	4,608,19,13,6,	4,616,19,10,3,	4,624,11,6,5,	4,632,9,2,1,	4,640,14,3,2,	4,648,13,3,1,
	4,656,7,5,4,	4,664,11,9,8,	4,672,11,6,5,	4,680,23,16,9,	4,688,19,14,6,	4,696,23,10,2,	4,704,8,3,2,	4,712,5,4,3,
	4,720,9,6,4,	4,728,4,3,2,	4,736,13,8,6,	4,744,13,11,1,	4,752,13,10,3,	4,760,11,6,5,	4,768,19,17,4,	4,776,15,14,7,
	4,784,13,9,6,	4,792,9,7,3,	4,800,9,7,1,	4,808,14,3,2,	4,816,11,8,2,	4,824,11,6,4,	4,832,13,5,2,	4,840,11,5,1,
	4,848,11,4,1,	4,856,19,10,3,	4,864,21,10,6,	4,872,13,3,1,	4,880,15,7,5,	4,888,19,18,10,	4,896,7,5,3,	4,904,12,7,2,
	4,912,7,5,1,	4,920,14,9,6,	4,928,10,3,2,	4,936,15,13,12,	4,944,12,11,9,	4,952,16,9,7,	4,960,12,9,3,	4,968,9,5,2,
	4,976,17,10,6,	4,984,24,9,3,	4,992,17,15,13,	4,1000,5,4,3,	4,1008,19,17,8,	4,1016,15,6,3,	4,1024,19,6,1,	4,1032,21,15,3,
	4,1040,15,10,8,	4,1048,15,7,2,	4,1056,11,2,1,	4,1064,13,11,9,	4,1072,19,9,8,	4,1080,15,9,6,	4,1088,22,21,10,	4,1096,24,15,6,
	4,1104,21,9,6,	4,1112,15,8,6,	4,1120,13,9,6,	4,1128,7,3,1,	4,1136,9,4,2,	4,1144,11,9,7,	4,1152,15,3,2,	4,1160,15,11,2,
	4,1168,12,7,2,	4,1176,11,9,3,	4,1184,5,3,2,	4,1192,9,8,7,	4,1200,15,9,6,	4,1208,11,10,6,	4,1216,27,25,9,	4,1224,12,9,7,
	4,1232,25,10,2,	4,1240,17,7,5,	4,1248,15,5,3,	4,1256,31,30,2,	4,1264,5,3,2,	4,1272,16,9,7,	4,1280,12,7,5,	4,1288,23,16,6,
	4,1296,15,14,2,	4,1304,20,17,15,	4,1312,15,14,2,	4,1320,12,9,3,	4,1328,21,11,3,	4,1336,8,3,2,	4,1344,15,6,1,	4,1352,17,14,6,
	4,1360,5,3,2,	4,1368,15,9,5,	4,1376,19,18,10,	4,1384,11,5,1,	4,1392,17,15,5,	4,1400,8,3,1,	4,1408,14,13,6,	4,1416,10,9,6,
	4,1424,11,6,2,	4,1432,11,10,6,	4,1440,14,13,7,	4,1448,11,3,2,	4,1456,9,4,2,	4,1464,12,9,3,	4,1472,11,4,1,	4,1480,11,10,2,
	4,1488,9,8,6,	4,1496,13,11,4,	4,1504,8,3,2,	4,1512,10,9,3,	4,1520,13,10,3,	4,1528,18,17,7,	4,1536,21,6,2,	4,1544,11,7,1,
	4,1552,19,12,2,	4,1560,8,5,2,	4,1568,21,10,7,	4,1576,20,9,2,	4,1584,21,19,13,	4,1592,12,7,5,	4,1600,14,11,1,	4,1608,15,13,1,
	4,1616,13,4,3,	4,1624,13,11,5,	4,1632,17,15,3,	4,1640,7,5,1,	4,1648,18,13,1,	4,1656,19,15,10,	4,1664,17,9,6,	4,1672,5,4,3,
	4,1680,11,6,2,	4,1688,15,8,6,	4,1696,15,6,3,	4,1704,14,11,3,	4,1712,15,12,5,	4,1720,17,14,10,	4,1728,11,10,5,	4,1736,19,14,6,
	4,1744,19,18,2,	4,1752,6,3,2,	4,1760,8,3,2,	4,1768,25,6,5,	4,1776,10,9,3,	4,1784,23,21,6,	4,1792,17,14,3,	4,1800,22,5,2,
	4,1808,19,16,9,	4,1816,23,18,1,	4,1824,7,5,1,	4,1832,18,13,7,	4,1840,21,10,2,	4,1848,16,13,3,	4,1856,11,9,4,	4,1864,11,9,1,
	4,1872,10,5,2,	4,1880,15,4,2,	4,1888,17,13,2,	4,1896,26,11,2,	4,1904,12,11,1,	4,1912,20,15,10,	4,1920,11,3,2,	4,1928,17,16,7,
	4,1936,15,10,1,	4,1944,27,22,18,	4,1952,15,14,6,	4,1960,17,15,2,	4,1968,25,19,14,	4,1976,25,19,17,	4,1984,13,11,5,	4,1992,6,3,2,
	4,2000,13,10,6,	4,2008,26,23,13,	4,2016,21,15,7,	4,2024,40,35,9,	4,2032,7,6,2,	4,2040,7,2,1,	4,2048,19,14,13,	4,2056,13,12,3,
	4,2064,17,9,2,	4,2072,13,10,3,	4,2080,4,3,1,	4,2088,18,11,5,	4,2096,19,4,2,	4,2104,19,15,9,	4,2112,16,13,7,	4,2120,17,14,6,
	4,2128,23,9,1,	4,2136,15,12,9,	4,2144,13,7,3,	4,2152,24,13,7,	4,2160,31,25,14,	4,2168,11,9,3,	4,2176,15,8,1,	4,2184,11,10,5,
	4,2192,8,5,3,	4,2200,20,15,5,	4,2208,21,16,6,	4,2216,24,7,2,	4,2224,21,19,5,	4,2232,19,17,4,	4,2240,23,7,1,	4,2248,9,4,3,
	4,2256,14,9,6,	4,2264,15,7,2,	4,2272,21,10,9,	4,2280,13,4,2,	4,2288,17,16,7,	4,2296,15,10,1,	4,2304,8,7,5,	4,2312,19,6,4,
	4,2320,13,11,5,	4,2328,15,9,2,	4,2336,15,10,8,	4,2344,27,26,14,	4,2352,23,20,2,	4,2360,19,10,8,	4,2368,13,11,8,	4,2376,7,5,4,
	4,2384,21,19,1,	4,2392,31,13,3,	4,2400,20,19,17,	4,2408,23,6,4,	4,2416,23,6,5,	4,2424,21,16,6,	4,2432,29,22,19,	4,2440,12,7,5,
	4,2448,21,10,4,	4,2456,12,5,3,	4,2464,5,4,3,	4,2472,12,3,1,	4,2480,20,5,2,	4,2488,23,13,9,	4,2496,12,3,1,	4,2504,19,8,6,
	4,2512,29,21,7,	4,2520,31,15,13,	4,2528,19,9,4,	4,2536,21,10,9,	4,2544,21,20,6,	4,2552,28,3,2,	4,2560,9,3,1,	4,2568,8,5,2,
	4,2576,7,2,1,	4,2584,25,19,12,	4,2592,15,12,5,	4,2600,14,13,7,	4,2608,15,11,2,	4,2616,17,8,7,	4,2624,15,10,4,	4,2632,19,5,3,
	4,2640,23,11,9,	4,2648,15,8,1,	4,2656,19,11,5,	4,2664,27,21,19,	4,2672,18,7,1,	4,2680,15,9,4,	4,2688,21,10,6,	4,2696,17,15,12,
	4,2704,12,9,7,	4,2712,21,12,7,	4,2720,25,18,1,	4,2728,21,7,5,	4,2736,16,3,1,	4,2744,19,18,10,	4,2752,15,4,2,	4,2760,29,26,7,
	4,2768,25,19,15,	4,2776,7,3,2,	4,2784,29,21,15,	4,2792,12,7,2,	4,2800,17,14,6,	4,2808,15,13,1,	4,2816,21,19,8,	4,2824,15,14,10,
	4,2832,27,18,1,	4,2840,20,15,9,	4,2848,15,8,1,	4,2856,15,13,3,	4,2864,21,17,15,	4,2872,21,5,2,	4,2880,13,10,6,	4,2888,11,4,1,
	4,2896,29,6,1,	4,2904,27,15,6,	4,2912,16,9,2,	4,2920,19,9,5,	4,2928,24,21,11,	4,2936,5,3,2,	4,2944,5,3,2,	4,2952,17,13,2,
	4,2960,12,3,2,	4,2968,29,27,4,	4,2976,21,10,3,	4,2984,17,9,6,	4,2992,23,3,1,	4,3000,15,12,9,	4,3008,15,13,1,	4,3016,38,25,9,
	4,3024,32,3,2,	4,3032,17,15,4,	4,3040,27,21,3,	4,3048,18,3,2,	4,3056,5,4,3,	4,3064,25,11,9,	4,3072,11,10,5,	4,3080,21,19,16,
	4,3088,20,13,11,	4,3096,33,29,14,	4,3104,23,9,5,	4,3112,17,15,1,	4,3120,18,17,11,	4,3128,30,19,11,	4,3136,15,12,10,	4,3144,23,21,8,
	4,3152,21,17,6,	4,3160,7,6,2,	4,3168,33,31,18,	4,3176,13,10,5,	4,3184,11,10,2,	4,3192,25,8,7,	4,3200,11,6,4,	4,3208,16,13,3,
	4,3216,21,11,3,	4,3224,23,19,1,	4,3232,12,9,7,	4,3240,12,3,2,	4,3248,15,8,1,	4,3256,31,26,2,	4,3264,17,5,2,	4,3272,23,10,1,
	4,3280,16,15,6,	4,3288,21,18,11,	4,3296,19,14,13,	4,3304,19,17,3,	4,3312,14,9,3,	4,3320,17,10,4,	4,3328,17,9,2,	4,3336,11,10,5,
	4,3344,30,27,15,	4,3352,21,20,19,	4,3360,18,15,5,	4,3368,7,5,1,	4,3376,11,9,1,	4,3384,21,9,3,	4,3392,23,13,6,	4,3400,14,13,6,
	4,3408,16,15,6,	4,3416,28,27,1,	4,3424,22,15,6,	4,3432,25,2,1,	4,3440,27,16,1,	4,3448,17,11,6,	4,3456,19,18,9,	4,3464,11,6,3,
	4,3472,17,14,7,	4,3480,19,15,13,	4,3488,12,11,1,	4,3496,35,21,4,	4,3504,23,17,10,	4,3512,37,35,6,	4,3520,32,29,3,	4,3528,25,18,7,
	4,3536,12,7,5,	4,3544,21,14,2,	4,3552,15,9,6,	4,3560,17,3,2,	4,3568,21,12,10,	4,3576,19,10,3,	4,3584,25,12,10,	4,3592,38,33,14,
	4,3600,9,5,2,	4,3608,15,14,10,	4,3616,25,18,7,	4,3624,29,27,12,	4,3632,26,17,5,	4,3640,20,15,10,	4,3648,23,7,2,	4,3656,17,12,11,
	4,3664,35,24,14,	4,3672,19,17,8,	4,3680,14,13,7,	4,3688,32,13,11,	4,3696,36,33,22,	4,3704,14,13,1,	4,3712,13,12,7,	4,3720,17,15,11,
	4,3728,9,4,2,	4,3736,33,22,18,	4,3744,27,14,2,	4,3752,9,4,2,	4,3760,23,9,1,	4,3768,14,7,2,	4,3776,7,5,4,	4,3784,29,13,6,
	4,3792,20,7,5,	4,3800,24,23,21,	4,3808,29,18,4,	4,3816,19,13,9,	4,3824,19,13,2,	4,3832,35,13,2,	4,3840,27,9,1,	4,3848,29,18,13,
	4,3856,39,25,3,	4,3864,19,15,9,	4,3872,10,3,2,	4,3880,27,5,1,	4,3888,45,42,6,	4,3896,15,7,5,	4,3904,17,13,2,	4,3912,24,11,2,
	4,3920,15,13,8,	4,3928,8,7,5,	4,3936,15,5,3,	4,3944,31,29,28,	4,3952,11,6,5,	4,3960,29,15,2,	4,3968,25,18,14,	4,3976,36,3,1,
	4,3984,19,5,2,	4,3992,27,8,6,	4,4000,31,18,17,	4,4008,24,9,6,	4,4016,33,32,23,	4,4024,16,9,7,	4,4032,15,13,6,	4,4040,29,20,15,
	4,4048,21,5,2,	4,4056,21,17,6,	4,4064,33,29,7,	4,4072,13,10,6,	4,4080,15,9,6,	4,4088,15,7,2,	4,4096,27,15,1,	4,4104,30,13,3,
	4,4112,23,12,1,	4,4120,26,17,9,	4,4128,31,2,1,	4,4136,31,29,15,	4,4144,15,10,1,	4,4152,25,13,3,	4,4160,27,18,12,	4,4168,17,10,6,
	4,4176,26,15,5,	4,4184,29,15,7,	4,4192,15,11,5,	4,4200,12,5,2,	4,4208,15,6,3,	4,4216,13,3,2,	4,4224,8,3,2,	4,4232,18,13,7,
	4,4240,31,6,1,	4,4248,11,6,2,	4,4256,15,13,8,	4,4264,15,14,5,	4,4272,11,8,1,	4,4280,17,14,5,	4,4288,5,4,3,	4,4296,14,5,2,
	4,4304,12,7,2,	4,4312,21,5,2,	4,4320,21,20,14,	4,4328,20,17,15,	4,4336,18,11,5,	4,4344,8,7,5,	4,4352,33,27,20,	4,4360,21,4,2,
	4,4368,27,12,6,	4,4376,18,7,1,	4,4384,27,19,17,	4,4392,20,19,5,	4,4400,37,35,3,	4,4408,9,8,7,	4,4416,31,10,6,	4,4424,21,19,13,
	4,4432,25,5,3,	4,4440,26,21,14,	4,4448,11,9,8,	4,4456,24,9,7,	4,4464,13,3,1,	4,4472,30,7,2,	4,4480,28,21,15,	4,4488,38,35,13,
	4,4496,17,10,7,	4,4504,12,9,6,	4,4512,12,3,1,	4,4520,39,25,23,	4,4528,23,13,9,	4,4536,25,11,7,	4,4544,25,14,7,	4,4552,34,27,18,
	4,4560,14,13,7,	4,4568,22,17,6,	4,4576,26,19,9,	4,4584,19,15,9,	4,4592,21,16,11,	4,4600,17,14,1,	4,4608,23,20,13,	4,4616,27,23,5,
	4,4624,26,23,10,	4,4632,19,16,2,	4,4640,25,8,7,	4,4648,8,5,3,	4,4656,27,25,4,	4,4664,37,6,5,	4,4672,27,25,23,	4,4680,10,9,3,
	4,4688,13,7,6,	4,4696,18,17,11,	4,4704,11,8,1,	4,4712,25,16,6,	4,4720,24,19,9,	4,4728,26,21,14,	4,4736,15,10,1,	4,4744,19,14,6,
	4,4752,29,5,2,	4,4760,28,11,9,	4,4768,25,17,3,	4,4776,27,23,6,	4,4784,30,29,7,	4,4792,29,18,4,	4,4800,29,19,11,	4,4808,13,4,2,
	4,4816,33,31,25,	4,4824,25,16,3,	4,4832,33,30,5,	4,4840,25,21,2,	4,4848,28,27,6,	4,4856,27,23,21,	4,4864,29,22,17,	4,4872,24,9,2,
	4,4880,32,21,7,	4,4888,35,21,8,	4,4896,21,19,12,	4,4904,27,18,15,	4,4912,30,29,7,	4,4920,11,9,5,	4,4928,29,9,3,	4,4936,27,22,15,
	4,4944,19,6,4,	4,4952,29,11,5,	4,4960,25,20,6,	4,4968,26,25,17,	4,4976,42,7,1,	4,4984,23,16,9,	4,4992,15,8,6,	4,5000,17,15,7,
	4,5008,21,10,3,	4,5016,15,12,9,	4,5024,33,23,14,	4,5032,25,6,2,	4,5040,24,5,3,	4,5048,34,15,10,	4,5056,22,9,6,	4,5064,21,12,11,
	4,5072,25,5,3,	4,5080,21,7,6,	4,5088,22,21,3,	4,5096,19,18,13,	4,5104,30,13,2,	4,5112,42,33,9,	4,5120,33,27,5,	4,5128,24,15,6,
	4,5136,27,25,4,	4,5144,15,11,5,	4,5152,15,8,1,	4,5160,35,31,13,	4,5168,15,11,5,	4,5176,24,21,3,	4,5184,20,11,5,	4,5192,11,8,2,
	4,5200,33,27,19,	4,5208,23,22,2,	4,5216,27,19,2,	4,5224,29,15,1,	4,5232,21,11,2,	4,5240,33,27,21,	4,5248,27,18,1,	4,5256,9,5,2,
	4,5264,16,11,9,	4,5272,29,18,10,	4,5280,13,11,1,	4,5288,11,10,1,	4,5296,8,3,2,	4,5304,27,6,5,	4,5312,22,3,2,	4,5320,19,17,3,
	4,5328,30,27,9,	4,5336,23,21,8,	4,5344,17,11,10,	4,5352,23,20,1,	4,5360,19,11,1,	4,5368,19,18,3,	4,5376,7,4,1,	4,5384,17,15,4,
	4,5392,7,3,2,	4,5400,33,17,3,	4,5408,30,23,1,	4,5416,34,31,19,	4,5424,16,15,13,	4,5432,37,34,23,	4,5440,24,15,10,	4,5448,43,33,15,
	4,5456,21,14,10,	4,5464,15,5,2,	4,5472,21,15,3,	4,5480,13,10,3,	4,5488,21,19,9,	4,5496,13,11,4,	4,5504,20,19,1,	4,5512,13,11,6,
	4,5520,10,5,2,	4,5528,25,18,14,	4,5536,20,5,3,	4,5544,11,10,2,	4,5552,15,9,8,	4,5560,55,46,10,	4,5568,33,22,7,	4,5576,27,23,6,
	4,5584,13,9,7,	4,5592,29,20,7,	4,5600,8,5,3,	4,5608,22,5,2,	4,5616,30,15,6,	4,5624,21,18,14,	4,5632,17,15,5,	4,5640,29,27,23,
	4,5648,21,15,8,	4,5656,27,12,9,	4,5664,31,29,11,	4,5672,26,25,10,	4,5680,40,17,2,	4,5688,41,20,11,	4,5696,26,21,14,	4,5704,27,25,14,
	4,5712,10,9,3,	4,5720,32,11,2,	4,5728,25,24,7,	4,5736,25,18,10,	4,5744,21,11,8,	4,5752,21,20,7,	4,5760,29,23,10,	4,5768,21,14,3,
	4,5776,19,12,1,	4,5784,25,22,6,	4,5792,33,13,11,	4,5800,25,7,6,	4,5808,43,10,1,	4,5816,17,15,7,	4,5824,23,17,10,	4,5832,21,18,13,
	4,5840,23,14,2,	4,5848,19,8,6,	4,5856,23,15,6,	4,5864,27,11,10,	4,5872,19,15,10,	4,5880,21,10,3,	4,5888,23,10,4,	4,5896,30,23,1,
	4,5904,32,19,5,	4,5912,33,22,13,	4,5920,16,15,6,	4,5928,16,7,2,	4,5936,27,4,1,	4,5944,23,21,14,	4,5952,25,23,2,	4,5960,37,35,25,
	4,5968,21,14,4,	4,5976,18,9,6,	4,5984,17,7,1,	4,5992,29,9,2,	4,6000,23,21,12,	4,6008,30,27,15,	4,6016,35,34,2,	4,6024,39,33,26,
	4,6032,44,21,14,	4,6040,25,11,5,	4,6048,17,15,8,	4,6056,7,6,1,	4,6064,23,18,11,	4,6072,28,15,13,	4,6080,19,8,6,	4,6088,23,10,3,
	4,6096,20,11,2,	4,6104,13,11,6,	4,6112,35,12,1,	4,6120,4,3,1,	4,6128,34,15,2,	4,6136,17,7,5,	4,6144,26,7,1,	4,6152,28,27,13,
	4,6160,38,15,10,	4,6168,20,11,2,	4,6176,29,15,1,	4,6184,39,13,12,	4,6192,20,5,2,	4,6200,29,10,7,	4,6208,25,23,14,	4,6216,39,30,9,
	4,6224,13,4,2,	4,6232,17,3,1,	4,6240,11,10,2,	4,6248,18,7,2,	4,6256,11,10,5,	4,6264,17,16,7,	4,6272,17,10,6,	4,6280,9,7,5,
	4,6288,34,25,5,	4,6296,35,19,10,	4,6304,13,3,1,	4,6312,35,33,14,	4,6320,29,28,10,	4,6328,15,6,1,	4,6336,22,15,9,	4,6344,21,15,2,
	4,6352,21,11,4,	4,6360,13,11,1,	4,6368,31,9,1,	4,6376,28,27,5,	4,6384,34,29,7,	4,6392,39,34,10,	4,6400,37,12,3,	4,6408,31,12,10,
	4,6416,29,15,7,	4,6424,29,18,5,	4,6432,26,13,7,	4,6440,21,18,14,	4,6448,25,23,8,	4,6456,31,25,17,	4,6464,25,22,6,	4,6472,31,30,2,
	4,6480,11,10,1,	4,6488,21,13,7,	4,6496,21,5,2,	4,6504,23,15,9,	4,6512,29,27,13,	4,6520,37,29,11,	4,6528,16,7,2,	4,6536,25,10,9,
	4,6544,19,15,1,	4,6552,27,22,6,	4,6560,19,13,11,	4,6568,19,15,1,	4,6576,27,25,19,	4,6584,37,23,7,	4,6592,45,42,1,	4,6600,21,19,16,
	4,6608,9,4,2,	4,6616,33,9,3,	4,6624,15,14,9,	4,6632,27,20,17,	4,6640,43,32,9,	4,6648,25,19,16,	4,6656,19,15,1,	4,6664,24,15,6,
	4,6672,26,21,5,	4,6680,29,7,3,	4,6688,55,32,9,	4,6696,45,19,7,	4,6704,11,10,6,	4,6712,31,26,2,	4,6720,12,9,7,	4,6728,21,8,2,
	4,6736,27,14,2,	4,6744,29,21,15,	4,6752,11,8,2,	4,6760,37,15,7,	4,6768,18,15,10,	4,6776,25,11,6,	4,6784,16,15,1,	4,6792,27,25,24,
	4,6800,26,25,1,	4,6808,37,19,13,	4,6816,22,5,2,	4,6824,21,14,10,	4,6832,35,32,25,	4,6840,14,9,3,	4,6848,29,22,18,	4,6856,30,29,17,
	4,6864,11,5,2,	4,6872,25,13,2,	4,6880,31,30,19,	4,6888,24,11,9,	4,6896,29,17,11,	4,6904,36,13,11,	4,6912,25,15,12,	4,6920,8,3,1,
	4,6928,8,7,5,	4,6936,37,31,30,	4,6944,23,21,8,	4,6952,32,21,19,	4,6960,14,9,3,	4,6968,35,32,17,	4,6976,19,18,9,	4,6984,8,3,2,
	4,6992,27,11,9,	4,7000,27,26,11,	4,7008,33,25,6,	4,7016,23,10,7,	4,7024,22,15,10,	4,7032,19,13,9,	4,7040,19,18,7,	4,7048,39,17,4,
	4,7056,27,24,10,	4,7064,11,5,2,	4,7072,37,26,17,	4,7080,27,18,16,	4,7088,32,5,2,	4,7096,27,17,13,	4,7104,15,10,4,	4,7112,35,5,2,
	4,7120,17,15,5,	4,7128,19,13,2,	4,7136,16,3,2,	4,7144,33,13,3,	4,7152,37,23,16,	4,7160,27,26,9,	4,7168,13,10,6,	4,7176,33,31,21,
	4,7184,33,27,2,	4,7192,29,14,6,	4,7200,29,23,3,	4,7208,29,23,21,	4,7216,15,8,1,	4,7224,15,12,10,	4,7232,35,12,9,	4,7240,33,14,2,
	4,7248,17,7,4,	4,7256,22,21,7,	4,7264,41,36,19,	4,7272,23,10,4,	4,7280,37,6,4,	4,7288,25,23,17,	4,7296,37,7,2,	4,7304,37,30,17,
	4,7312,25,24,3,	4,7320,35,28,10,	4,7328,41,30,26,	4,7336,34,21,5,	4,7344,33,28,3,	4,7352,20,5,3,	4,7360,23,18,2,	4,7368,19,13,11,
	4,7376,41,22,16,	4,7384,31,26,9,	4,7392,33,27,21,	4,7400,19,9,5,	4,7408,13,3,1,	4,7416,35,23,9,	4,7424,18,13,7,	4,7432,30,19,7,
	4,7440,22,21,15,	4,7448,21,20,14,	4,7456,27,8,1,	4,7464,21,18,14,	4,7472,23,13,7,	4,7480,32,15,2,	4,7488,21,16,6,	4,7496,23,21,12,
	4,7504,45,17,2,	4,7512,22,21,3,	4,7520,19,9,7,	4,7528,18,13,1,	4,7536,42,21,14,	4,7544,23,13,7,	4,7552,17,8,3,	4,7560,41,21,3,
	4,7568,15,5,3,	4,7576,41,40,11,	4,7584,51,46,10,	4,7592,45,10,1,	4,7600,19,18,2,	4,7608,39,25,10,	4,7616,31,21,14,	4,7624,9,2,1,
	4,7632,54,3,2,	4,7640,29,3,2,	4,7648,37,33,10,	4,7656,30,13,7,	4,7664,30,23,5,	4,7672,39,5,1,	4,7680,27,9,3,	4,7688,35,16,6,
	4,7696,17,16,15,	4,7704,15,12,10,	4,7712,27,22,5,	4,7720,27,25,4,	4,7728,21,6,3,	4,7736,22,11,3,	4,7744,33,28,27,	4,7752,35,30,2,
	4,7760,32,23,21,	4,7768,27,18,15,	4,7776,41,39,36,	4,7784,7,4,2,	4,7792,47,31,29,	4,7800,11,10,5,	4,7808,25,24,10,	4,7816,20,3,2,
	4,7824,39,36,14,	4,7832,37,19,3,	4,7840,33,29,23,	4,7848,34,31,21,	4,7856,12,3,2,	4,7864,19,13,1,	4,7872,27,22,18,	4,7880,25,19,17,
	4,7888,12,9,7,	4,7896,45,39,7,	4,7904,45,34,25,	4,7912,7,3,2,	4,7920,20,19,5,	4,7928,23,15,5,	4,7936,40,23,21,	4,7944,14,7,1,
	4,7952,19,13,2,	4,7960,19,13,12,	4,7968,27,13,12,	4,7976,44,5,3,	4,7984,37,18,2,	4,7992,26,25,17,	4,8000,16,3,1,	4,8008,23,22,17,
	4,8016,31,30,25,	4,8024,21,14,11,	4,8032,19,15,13,	4,8040,39,13,7,	4,8048,30,23,3,	4,8056,27,16,5,	4,8064,27,23,9,	4,8072,23,11,6,
	4,8080,39,14,11,	4,8088,25,10,8,	4,8096,32,11,2,	4,8104,30,23,17,	4,8112,15,12,2,	4,8120,8,3,2,	4,8128,25,24,19,	4,8136,11,3,2,
	4,8144,28,27,17,	4,8152,29,25,14,	4,8160,52,45,10,	4,8168,25,16,6,	4,8176,43,32,21,	4,8184,32,27,6,	4,8192,9,5,2,	4,8200,18,15,3,
	4,8208,19,13,11,	4,8216,27,24,17,	4,8224,39,36,25,	4,8232,22,15,9,	4,8240,14,13,7,	4,8248,25,15,13,	4,8256,32,21,14,	4,8264,15,6,3,
	4,8272,32,25,23,	4,8280,30,19,9,	4,8288,27,5,4,	4,8296,37,19,6,	4,8304,32,17,15,	4,8312,45,44,30,	4,8320,41,39,5,	4,8328,37,23,14,
	4,8336,33,10,2,	4,8344,27,15,1,	4,8352,35,18,14,	4,8360,15,14,5,	4,8368,35,17,4,	4,8376,45,39,17,	4,8384,19,4,2,	4,8392,17,11,1,
	4,8400,29,28,11,	4,8408,20,9,2,	4,8416,40,33,22,	4,8424,33,31,28,	4,8432,17,15,13,	4,8440,18,9,6,	4,8448,21,17,6,	4,8456,15,13,8,
	4,8464,34,15,5,	4,8472,30,21,5,	4,8480,21,6,3,	4,8488,13,6,3,	4,8496,25,19,3,	4,8504,35,24,10,	4,8512,33,27,4,	4,8520,28,15,13,
	4,8528,15,4,2,	4,8536,19,10,3,	4,8544,31,5,2,	4,8552,29,10,1,	4,8560,21,13,3,	4,8568,28,25,10,	4,8576,19,9,1,	4,8584,32,15,13,
	4,8592,23,5,4,	4,8600,21,14,3,	4,8608,47,44,33,	4,8616,22,19,11,	4,8624,4,3,2,	4,8632,41,32,3,	4,8640,23,10,4,	4,8648,31,17,6,
	4,8656,39,14,4,	4,8664,29,19,11,	4,8672,29,23,12,	4,8680,32,7,2,	4,8688,25,20,7,	4,8696,25,20,6,	4,8704,39,20,2,	4,8712,30,13,3,
	4,8720,27,17,5,	4,8728,13,7,1,	4,8736,35,33,24,	4,8744,45,12,11,	4,8752,30,29,11,	4,8760,27,9,4,	4,8768,27,10,8,	4,8776,26,19,9,
	4,8784,26,25,7,	4,8792,24,9,2,	4,8800,25,14,6,	4,8808,15,9,6,	4,8816,17,8,6,	4,8824,19,14,6,	4,8832,15,9,6,	4,8840,33,22,16,
	4,8848,33,4,3,	4,8856,14,5,2,	4,8864,37,12,7,	4,8872,51,4,2,	4,8880,36,9,6,	4,8888,43,13,9,	4,8896,41,10,6,	4,8904,40,25,10,
	4,8912,18,17,1,	4,8920,33,32,31,	4,8928,35,29,2,	4,8936,17,3,1,	4,8944,39,34,1,	4,8952,27,14,2,	4,8960,12,7,5,	4,8968,29,11,10,
	4,8976,23,8,2,	4,8984,9,8,6,	4,8992,35,6,2,	4,9000,28,19,17,	4,9008,31,17,7,	4,9016,23,21,8,	4,9024,32,29,11,	4,9032,45,19,1,
	4,9040,9,6,4,	4,9048,23,16,10,	4,9056,11,3,2,	4,9064,33,4,2,	4,9072,45,38,6,	4,9080,17,10,7,	4,9088,33,31,1,	4,9096,27,26,11,
	4,9104,47,33,24,	4,9112,9,7,5,	4,9120,35,25,5,	4,9128,39,25,22,	4,9136,21,14,1,	4,9144,35,25,4,	4,9152,33,29,7,	4,9160,22,15,3,
	4,9168,15,10,4,	4,9176,43,37,30,	4,9184,33,26,14,	4,9192,21,18,13,	4,9200,31,24,2,	4,9208,35,10,9,	4,9216,21,14,8,	4,9224,35,21,7,
	4,9232,49,18,8,	4,9240,17,11,7,	4,9248,37,18,13,	4,9256,19,6,4,	4,9264,39,17,14,	4,9272,13,4,3,	4,9280,23,7,2,	4,9288,49,43,18,
	4,9296,29,17,15,	4,9304,27,13,9,	4,9312,21,19,16,	4,9320,55,22,8,	4,9328,21,14,8,	4,9336,17,5,3,	4,9344,51,44,5,	4,9352,31,26,15,
	4,9360,28,23,1,	4,9368,38,7,1,	4,9376,23,5,1,	4,9384,17,11,6,	4,9392,29,24,11,	4,9400,18,13,1,	4,9408,28,15,6,	4,9416,19,11,6,
	4,9424,22,9,6,	4,9432,52,43,25,	4,9440,25,22,14,	4,9448,23,21,20,	4,9456,35,19,5,	4,9464,37,18,13,	4,9472,45,40,15,	4,9480,18,9,2,
	4,9488,25,12,7,	4,9496,29,17,15,	4,9504,19,15,6,	4,9512,39,17,16,	4,9520,13,5,2,	4,9528,37,33,22,	4,9536,31,26,6,	4,9544,43,32,9,
	4,9552,11,4,1,	4,9560,27,13,2,	4,9568,49,26,14,	4,9576,29,25,7,	4,9584,36,29,27,	4,9592,15,8,1,	4,9600,19,6,4,	4,9608,14,13,1,
	4,9616,25,8,2,	4,9624,31,17,7,	4,9632,30,23,5,	4,9640,33,7,3,	4,9648,31,24,21,	4,9656,19,16,2,	4,9664,35,21,1,	4,9672,17,9,3,
	4,9680,25,6,2,	4,9688,20,9,2,	4,9696,36,27,21,	4,9704,7,3,2,	4,9712,27,19,17,	4,9720,37,4,2,	4,9728,30,5,2,	4,9736,15,7,6,
	4,9744,36,9,2,	4,9752,42,17,3,	4,9760,56,49,47,	4,9768,41,23,22,	4,9776,24,19,1,	4,9784,38,37,9,	4,9792,27,26,21,	4,9800,42,41,10,
	4,9808,43,32,21,	4,9816,46,33,22,	4,9824,13,10,3,	4,9832,39,37,25,	4,9840,49,47,13,	4,9848,25,23,10,	4,9856,36,15,1,	4,9864,35,32,21,
	4,9872,13,11,3,	4,9880,35,28,5,	4,9888,33,6,4,	4,9896,39,38,26,	4,9904,21,10,2,	4,9912,42,35,15,	4,9920,49,18,14,	4,9928,39,38,31,
	4,9936,22,21,1,	4,9944,15,14,6,	4,9952,31,30,11,	4,9960,30,15,10,	4,9968,36,3,2,	4,9976,21,19,5,	4,9984,27,10,7,	4,9992,7,4,2,
	4,10000,19,13,9,
	0
};