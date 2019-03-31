// Table de polynômes irréductibles de F2[X]
// Utilisée pour les calculs dans GF(2^n)
// Polynômes de degré multiple de 64, jusqu'à 9984
// Structure de la table : suite d'entier avec <nb coeff>, <coeff dominant>, <coeff suivant>...
// Nb : le coeff dominant donne le degré. Le coeff constant n'est pas toujours stocké, il est toujours à 1

static const uint16_t coeffs[] = {
	4,64,4,3,1,
	4,128,7,2,1,	4,192,7,2,1,	4,256,10,5,2,	4,320,4,3,1,	4,384,12,3,2,	4,448,11,6,4,	4,512,8,5,2,	4,576,13,4,3,
	4,640,14,3,2,	4,704,8,3,2,	4,768,19,17,4,	4,832,13,5,2,	4,896,7,5,3,	4,960,12,9,3,	4,1024,19,6,1,	4,1088,22,21,10,
	4,1152,15,3,2,	4,1216,27,25,9,	4,1280,12,7,5,	4,1344,15,6,1,	4,1408,14,13,6,	4,1472,11,4,1,	4,1536,21,6,2,	4,1600,14,11,1,
	4,1664,17,9,6,	4,1728,11,10,5,	4,1792,17,14,3,	4,1856,11,9,4,	4,1920,11,3,2,	4,1984,13,11,5,	4,2048,19,14,13,	4,2112,16,13,7,
	4,2176,15,8,1,	4,2240,23,7,1,	4,2304,8,7,5,	4,2368,13,11,8,	4,2432,29,22,19,	4,2496,12,3,1,	4,2560,9,3,1,	4,2624,15,10,4,
	4,2688,21,10,6,	4,2752,15,4,2,	4,2816,21,19,8,	4,2880,13,10,6,	4,2944,5,3,2,	4,3008,15,13,1,	4,3072,11,10,5,	4,3136,15,12,10,
	4,3200,11,6,4,	4,3264,17,5,2,	4,3328,17,9,2,	4,3392,23,13,6,	4,3456,19,18,9,	4,3520,32,29,3,	4,3584,25,12,10,	4,3648,23,7,2,
	4,3712,13,12,7,	4,3776,7,5,4,	4,3840,27,9,1,	4,3904,17,13,2,	4,3968,25,18,14,	4,4032,15,13,6,	4,4096,27,15,1,	4,4160,27,18,12,
	4,4224,8,3,2,	4,4288,5,4,3,	4,4352,33,27,20,	4,4416,31,10,6,	4,4480,28,21,15,	4,4544,25,14,7,	4,4608,23,20,13,	4,4672,27,25,23,
	4,4736,15,10,1,	4,4800,29,19,11,	4,4864,29,22,17,	4,4928,29,9,3,	4,4992,15,8,6,	4,5056,22,9,6,	4,5120,33,27,5,	4,5184,20,11,5,
	4,5248,27,18,1,	4,5312,22,3,2,	4,5376,7,4,1,	4,5440,24,15,10,	4,5504,20,19,1,	4,5568,33,22,7,	4,5632,17,15,5,	4,5696,26,21,14,
	4,5760,29,23,10,	4,5824,23,17,10,	4,5888,23,10,4,	4,5952,25,23,2,	4,6016,35,34,2,	4,6080,19,8,6,	4,6144,26,7,1,	4,6208,25,23,14,
	4,6272,17,10,6,	4,6336,22,15,9,	4,6400,37,12,3,	4,6464,25,22,6,	4,6528,16,7,2,	4,6592,45,42,1,	4,6656,19,15,1,	4,6720,12,9,7,
	4,6784,16,15,1,	4,6848,29,22,18,	4,6912,25,15,12,	4,6976,19,18,9,	4,7040,19,18,7,	4,7104,15,10,4,	4,7168,13,10,6,	4,7232,35,12,9,
	4,7296,37,7,2,	4,7360,23,18,2,	4,7424,18,13,7,	4,7488,21,16,6,	4,7552,17,8,3,	4,7616,31,21,14,	4,7680,27,9,3,	4,7744,33,28,27,
	4,7808,25,24,10,	4,7872,27,22,18,	4,7936,40,23,21,	4,8000,16,3,1,	4,8064,27,23,9,	4,8128,25,24,19,	4,8192,9,5,2,	4,8256,32,21,14,
	4,8320,41,39,5,	4,8384,19,4,2,	4,8448,21,17,6,	4,8512,33,27,4,	4,8576,19,9,1,	4,8640,23,10,4,	4,8704,39,20,2,	4,8768,27,10,8,
	4,8832,15,9,6,	4,8896,41,10,6,	4,8960,12,7,5,	4,9024,32,29,11,	4,9088,33,31,1,	4,9152,33,29,7,	4,9216,21,14,8,	4,9280,23,7,2,
	4,9344,51,44,5,	4,9408,28,15,6,	4,9472,45,40,15,	4,9536,31,26,6,	4,9600,19,6,4,	4,9664,35,21,1,	4,9728,30,5,2,	4,9792,27,26,21,
	4,9856,36,15,1,	4,9920,49,18,14,	4,9984,27,10,7,
	0 };