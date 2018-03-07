package hko;

using Lambda;

enum Station {
	ChekLapKok;
	CheungChau;
	HappyValley;
	HKObservatory;
	HKPark;
	KauSaiChau;
	KingsPark;
	KowloonCity;
	KwunTong;
	LauFauShan;
	NgongPing;
	PakTamChung;
	PengChau;
	SaiKung;
	ShaTin;
	ShamShuiPo;
	ShauKeiWan;
	ShekKong;
	SheungShui;
	Stanley;
	TaKwuLing;
	TaiMeiTuk;
	TaiMoShan;
	TaiPo;
	TatesCairn;
	ThePeak;
	TseungKwanO;
	TsingYi;
	TsuenWanShingMunValley;
	TuenMun;
	WaglanIsland;
	WetlandPark;
	WongChukHang;
	WongTaiSin;
	YuenLongPark;
	CheungChauBeach;
	GreenIsland;
	KaiTak;
	ShaChau;
	StarFerry;
	TaiPoKau;
	TapMun;
	Central;
}

class Stations {
	
	/**
	 *  Data: http://www.hko.gov.hk/cis/annex/hkwxstn_e.htm
	 */
	static var list = [
		{
			name: 'Hong Kong Observatory',
			// date: '(10/07/1984)',
			latitude: 22 + 18 / 60 + 7 / 3600,
			longitude: 114 + 10 / 60 + 27 / 3600,
			elevation: 32,
			terminated: false
		},
		{
			name: 'Hong Kong International Airport',
			// date: '(01/06/1997)',
			latitude: 22 + 18 / 60 + 34 / 3600,
			longitude: 113 + 55 / 60 + 19 / 3600,
			elevation: 6,
			terminated: false
		},
		{
			name: 'Sha Tin',
			// date: '(01/10/1984)',
			latitude: 22 + 24 / 60 + 9 / 3600,
			longitude: 114 + 12 / 60 + 36 / 3600,
			elevation: 6,
			terminated: false
		},
		{
			name: 'Lau Fau Shan',
			// date: '(16/09/1985)',
			latitude: 22 + 28 / 60 + 8 / 3600,
			longitude: 113 + 59 / 60 + 1 / 3600,
			elevation: 31,
			terminated: false
		},
		{
			name: 'Ta Kwu Ling',
			// date: '(14/10/1985)',
			latitude: 22 + 31 / 60 + 43 / 3600,
			longitude: 114 + 9 / 60 + 24 / 3600,
			elevation: 15,
			terminated: false
		},
		{
			name: 'Ching Pak House (Tsing Yi)',
			// date: '(01/07/1987)',
			latitude: 22 + 20 / 60 + 53 / 3600,
			longitude: 114 + 6 / 60 + 33 / 3600,
			elevation: 122,
			terminated: false
		},
		{
			name: 'Bluff Head',
			// date: '(13/03/1989)',
			latitude: 22 + 11 / 60 + 51 / 3600,
			longitude: 114 + 12 / 60 + 43 / 3600,
			elevation: 94,
			terminated: false
		},
		{
			name: 'Wong Chuk Hang',
			// date: '(01/08/1989)',
			latitude: 22 + 14 / 60 + 52 / 3600,
			longitude: 114 + 10 / 60 + 25 / 3600,
			elevation: 5,
			terminated: false
		},
		{
			name: 'Waglan Island',
			// date: '(22/08/1989)',
			latitude: 22 + 10 / 60 + 56 / 3600,
			longitude: 114 + 18 / 60 + 12 / 3600,
			elevation: 56,
			terminated: false
		},
		{
			name: 'Green Island',
			// date: '(11/09/1989)',
			latitude: 22 + 17 / 60 + 6 / 3600,
			longitude: 114 + 6 / 60 + 46 / 3600,
			elevation: 88,
			terminated: false
		},
		{
			name: 'Tseung Kwan O',
			// date: '(01/12/1991)',
			latitude: 22 + 18 / 60 + 57 / 3600,
			longitude: 114 + 15 / 60 + 20 / 3600,
			elevation: 38,
			terminated: false
		},
		{
			name: 'Cheung Chau',
			// date: '(30/03/1992)',
			latitude: 22 + 12 / 60 + 4 / 3600,
			longitude: 114 + 1 / 60 + 36 / 3600,
			elevation: 72,
			terminated: false
		},
		{
			name: 'King\'s Park',
			// date: '(01/07/1992)',
			latitude: 22 + 18 / 60 + 43 / 3600,
			longitude: 114 + 10 / 60 + 22 / 3600,
			elevation: 65,
			terminated: false
		},
		{
			name: 'Ping Chau',
			// date: '(01/01/1993)',
			latitude: 22 + 32 / 60 + 48 / 3600,
			longitude: 114 + 25 / 60 + 42 / 3600,
			elevation: 29,
			terminated: false
		},
		{
			name: 'Tai Mei Tuk',
			// date: '(01/01/1993)',
			latitude: 22 + 28 / 60 + 31 / 3600,
			longitude: 114 + 14 / 60 + 15 / 3600,
			elevation: 51,
			terminated: false
		},
		{
			name: 'Kat O',
			// date: '(01/01/1993)',
			latitude: 22 + 32 / 60 + 11 / 3600,
			longitude: 114 + 18 / 60 + 7 / 3600,
			elevation: 10,
			terminated: false
		},
		{
			name: 'Sha Lo Wan',
			// date: '(25/02/1993)',
			latitude: 22 + 17 / 60 + 28 / 3600,
			longitude: 113 + 54 / 60 + 25 / 3600,
			elevation: 61,
			terminated: false
		},
		{
			name: 'Sai Kung',
			// date: '(03/03/1993)',
			latitude: 22 + 22 / 60 + 32 / 3600,
			longitude: 114 + 16 / 60 + 28 / 3600,
			elevation: 4,
			terminated: false
		},
		{
			name: 'Tap Mun',
			// date: '(15/09/1993)',
			latitude: 22 + 28 / 60 + 17 / 3600,
			longitude: 114 + 21 / 60 + 38 / 3600,
			elevation: 15,
			terminated: false
		},
		{
			name: 'Pak Tam Chung (Tsak Yue Wu)',
			// date: '(01/10/1995)',
			latitude: 22 + 24 / 60 + 10 / 3600,
			longitude: 114 + 19 / 60 + 23 / 3600,
			elevation: 5,
			terminated: false
		},
		{
			name: 'Shek Kong',
			// date: '(04/11/1996)',
			latitude: 22 + 26 / 60 + 10 / 3600,
			longitude: 114 + 5 / 60 + 5 / 3600,
			elevation: 16,
			terminated: false
		},
		{
			name: 'Tai Mo Shan',
			// date: '(20/12/1996)',
			latitude: 22 + 24 / 60 + 38 / 3600,
			longitude: 114 + 7 / 60 + 28 / 3600,
			elevation: 955,
			terminated: false
		},
		{
			name: 'Tate\'s Cairn',
			// date: '(18/12/1997)',
			latitude: 22 + 21 / 60 + 28 / 3600,
			longitude: 114 + 13 / 60 + 4 / 3600,
			elevation: 575,
			terminated: false
		},
		{
			name: 'Nei Lak Shan',
			// date: '(12/02/1998)',
			latitude: 22 + 15 / 60 + 48 / 3600,
			longitude: 113 + 54 / 60 + 40 / 3600,
			elevation: 747,
			terminated: false
		},
		{
			name: 'Kowloon City',
			// date: '(04/09/1998)',
			latitude: 22 + 20 / 60 + 6 / 3600,
			longitude: 114 + 11 / 60 + 5 / 3600,
			elevation: 92,
			terminated: false
		},
		{
			name: 'Kai Tak',
			// date: '(04/09/1998)',
			latitude: 22 + 18 / 60 + 35 / 3600,
			longitude: 114 + 12 / 60 + 48 / 3600,
			elevation: 10,
			terminated: false
		},
		{
			name: 'Tai Po',
			// date: '(03/02/1999)',
			latitude: 22 + 26 / 60 + 46 / 3600,
			longitude: 114 + 10 / 60 + 44 / 3600,
			elevation: 15,
			terminated: false
		},
		{
			name: 'Ngong Ping',
			// date: '(01/01/2002)',
			latitude: 22 + 15 / 60 + 31 / 3600,
			longitude: 113 + 54 / 60 + 46 / 3600,
			elevation: 593,
			terminated: false
		},
		{
			name: 'The Peak',
			// date: '(17/02/2003)',
			latitude: 22 + 15 / 60 + 51 / 3600,
			longitude: 114 + 9 / 60 + 18 / 3600,
			elevation: 406,
			terminated: false
		},
		{
			name: 'Peng Chau',
			// date: '(01/06/2004)',
			latitude: 22 + 17 / 60 + 28 / 3600,
			longitude: 114 + 2 / 60 + 36 / 3600,
			elevation: 34,
			terminated: false
		},
		{
			name: 'Sheung Shui',
			// date: '(09/07/2004)',
			latitude: 22 + 30 / 60 + 7 / 3600,
			longitude: 114 + 6 / 60 + 40 / 3600,
			elevation: 10,
			terminated: false
		},
		{
			name: 'Wetland Park',
			// date: '(10/11/2005)',
			latitude: 22 + 28 / 60 + 0 / 3600,
			longitude: 114 + 0 / 60 + 32 / 3600,
			elevation: 4,
			terminated: false
		},
		{
			name: 'Central Pier',
			// date: '(20/12/2005)',
			latitude: 22 + 17 / 60 + 20 / 3600,
			longitude: 114 + 9 / 60 + 21 / 3600,
			elevation: 16,
			terminated: false
		},
		{
			name: 'Tsuen Wan',
			// date: '(25/04/2006)',
			latitude: 22 + 23 / 60 + 1 / 3600,
			longitude: 114 + 6 / 60 + 28 / 3600,
			elevation: 142,
			terminated: false
		},
		{
			name: 'Hong Kong Park',
			// date: '(04/09/2007)',
			latitude: 22 + 16 / 60 + 42 / 3600,
			longitude: 114 + 9 / 60 + 44 / 3600,
			elevation: 26,
			terminated: false
		},
		{
			name: 'Shau Kei Wan',
			// date: '(17/09/2007)',
			latitude: 22 + 16 / 60 + 54 / 3600,
			longitude: 114 + 14 / 60 + 10 / 3600,
			elevation: 53,
			terminated: false
		},
		{
			name: 'Tuen Mun Children and Juvenile Home',
			// date: '(01/01/2007)',
			latitude: 22 + 23 / 60 + 9 / 3600,
			longitude: 113 + 57 / 60 + 51 / 3600,
			elevation: 28,
			terminated: false
		},
		{
			name: 'Kau Sai Chau',
			// date: '(03/07/2008)',
			latitude: 22 + 22 / 60 + 13 / 3600,
			longitude: 114 + 18 / 60 + 45 / 3600,
			elevation: 39,
			terminated: false
		},
		{
			name: 'Happy Valley',
			// date: '(01/12/2008)',
			latitude: 22 + 16 / 60 + 14 / 3600,
			longitude: 114 + 11 / 60 + 1 / 3600,
			elevation: 5,
			terminated: false
		},
		{
			name: 'Stanley',
			// date: '(12/06/2009)',
			latitude: 22 + 12 / 60 + 51 / 3600,
			longitude: 114 + 13 / 60 + 7 / 3600,
			elevation: 31,
			terminated: false
		},
		{
			name: 'Wong Tai Sin',
			// date: '(27/03/2009)',
			latitude: 22 + 20 / 60 + 22 / 3600,
			longitude: 114 + 12 / 60 + 19 / 3600,
			elevation: 21,
			terminated: false
		},
		{
			name: 'Kwun Tong',
			// date: '(21/10/2009)',
			latitude: 22 + 19 / 60 + 7 / 3600,
			longitude: 114 + 13 / 60 + 29 / 3600,
			elevation: 90,
			terminated: false
		},
		{
			name: 'Sham Shui Po',
			// date: '(09/03/2010)',
			latitude: 22 + 20 / 60 + 9 / 3600,
			longitude: 114 + 8 / 60 + 13 / 3600,
			elevation: 11,
			terminated: false
		},
		{
			name: 'New Tsing Yi Station',
			// date: '(23/08/2010)',
			latitude: 22 + 20 / 60 + 39 / 3600,
			longitude: 114 + 6 / 60 + 36 / 3600,
			elevation: 8,
			terminated: false
		},
		{
			name: 'Kardoorie Farm and Botanic Garden',
			// date: '(01/12/2010)',
			latitude: 22 + 25 / 60 + 58 / 3600,
			longitude: 114 + 7 / 60 + 15 / 3600,
			elevation: 307,
			terminated: false
		},
		{
			name: 'Tsuen Wan Shing Mun Valley',
			// date: '(07/12/2010)',
			latitude: 22 + 22 / 60 + 32 / 3600,
			longitude: 114 + 7 / 60 + 26 / 3600,
			elevation: 35,
			terminated: false
		},
		{
			name: 'Lamma Island',
			// date: '(25/07/2011)',
			latitude: 22 + 13 / 60 + 34 / 3600,
			longitude: 114 + 6 / 60 + 31 / 3600,
			elevation: 11,
			terminated: false
		},
		{
			name: 'Tuen Mun Government Offices',
			// date: '(23/10/1987)',
			latitude: 22 + 23 / 60 + 26 / 3600,
			longitude: 113 + 58 / 60 + 36 / 3600,
			elevation: 69,
			terminated: false
		},
		{
			name: 'Star Ferry (Kowloon)',
			// date: '(15/12/1987)',
			latitude: 22 + 17 / 60 + 35 / 3600,
			longitude: 114 + 10 / 60 + 7 / 3600,
			elevation: 18,
			terminated: false
		},
		{
			name: 'North Point',
			// date: '(04/09/1998)',
			latitude: 22 + 17 / 60 + 40 / 3600,
			longitude: 114 + 11 / 60 + 59 / 3600,
			elevation: 26,
			terminated: false
		},
		{
			name: 'Shell Oil Depot',
			// date: '(01/12/1992)',
			latitude: 22 + 20 / 60 + 48 / 3600,
			longitude: 114 + 5 / 60 + 11 / 3600,
			elevation: 43,
			terminated: false
		},
		{
			name: 'Siu Ho Wan',
			// date: '(08/09/1997)',
			latitude: 22 + 18 / 60 + 21 / 3600,
			longitude: 113 + 58 / 60 + 45 / 3600,
			elevation: 15,
			terminated: false
		},
		{
			name: 'Tai Mo To',
			// date: '(17/10/1997)',
			latitude: 22 + 19 / 60 + 47 / 3600,
			longitude: 113 + 58 / 60 + 0 / 3600,
			elevation: 15,
			terminated: false
		},
		{
			name: 'Yi Tung Shan',
			// date: '(30/10/1997)',
			latitude: 22 + 15 / 60 + 33 / 3600,
			longitude: 113 + 57 / 60 + 51 / 3600,
			elevation: 752,
			terminated: false
		},
		{
			name: 'Sha Chau',
			// date: '(22/11/1997)',
			latitude: 22 + 20 / 60 + 45 / 3600,
			longitude: 113 + 53 / 60 + 28 / 3600,
			elevation: 31,
			terminated: false
		},
		{
			name: 'Sham Wat',
			// date: '(14/08/1998)',
			latitude: 22 + 16 / 60 + 7 / 3600,
			longitude: 113 + 53 / 60 + 13 / 3600,
			elevation: 13,
			terminated: false
		},
		{
			name: 'Tai O',
			// date: '(24/05/2004)',
			latitude: 22 + 15 / 60 + 22 / 3600,
			longitude: 113 + 51 / 60 + 17 / 3600,
			elevation: 105,
			terminated: false
		},
		{
			name: 'Cheung Chau Beach',
			// date: '(14/09/2009)',
			latitude: 22 + 12 / 60 + 39 / 3600,
			longitude: 114 + 1 / 60 + 45 / 3600,
			elevation: 27,
			terminated: false
		},
		{
			name: 'Tai Po Kau',
			// date: '(01/12/2010)',
			latitude: 22 + 26 / 60 + 33 / 3600,
			longitude: 114 + 11 / 60 + 3 / 3600,
			elevation: 11,
			terminated: false
		},
		{
			name: 'Discovery Bay',
			// date: '(30/12/1984)',
			latitude: 22 + 17 / 60 + 29 / 3600,
			longitude: 114 + 0 / 60 + 33 / 3600,
			elevation: 106,
			terminated: false
		},
		{
			name: 'Lamma Island',
			// date: '(30/12/1984)',
			latitude: 22 + 13 / 60 + 11 / 3600,
			longitude: 114 + 7 / 60 + 5 / 3600,
			elevation: 32,
			terminated: false
		},
		{
			name: 'Tap Shek Kok',
			// date: '(30/12/1984)',
			latitude: 22 + 22 / 60 + 45 / 3600,
			longitude: 113 + 55 / 60 + 12 / 3600,
			elevation: 28,
			terminated: false
		},
		{
			name: 'Tsim Bei Tsui',
			// date: '(30/12/1984)',
			latitude: 22 + 29 / 60 + 11 / 3600,
			longitude: 114 + 0 / 60 + 42 / 3600,
			elevation: 8,
			terminated: false
		},
		{
			name: 'Tai Po Wong Shiu Chi Secondary School',
			// date: '(30/12/1984)',
			latitude: 22 + 26 / 60 + 44 / 3600,
			longitude: 114 + 10 / 60 + 18 / 3600,
			elevation: 23,
			terminated: false
		},
		{
			name: 'Sha Tau Kok',
			// date: '(30/12/1984)',
			latitude: 22 + 32 / 60 + 15 / 3600,
			longitude: 114 + 12 / 60 + 39 / 3600,
			elevation: 39,
			terminated: false
		},
		{
			name: 'Pak Tam Au',
			// date: '(30/12/1984)',
			latitude: 22 + 24 / 60 + 47 / 3600,
			longitude: 114 + 19 / 60 + 47 / 3600,
			elevation: 106,
			terminated: false
		},
		{
			name: 'Cape D\'Aguilar',
			// date: '(31/03/1985)',
			latitude: 22 + 12 / 60 + 34 / 3600,
			longitude: 114 + 15 / 60 + 18 / 3600,
			elevation: 45,
			terminated: false
		},
		{
			name: 'Sai Kung Sam Yuk Middle School',
			// date: '(30/06/1985)',
			latitude: 22 + 18 / 60 + 27 / 3600,
			longitude: 114 + 17 / 60 + 13 / 3600,
			elevation: 122,
			terminated: false
		},
		{
			name: 'Yuen Long',
			// date: '(30/06/1985)',
			latitude: 22 + 25 / 60 + 8 / 3600,
			longitude: 113 + 59 / 60 + 46 / 3600,
			elevation: 102,
			terminated: false
		},
		{
			name: 'Au Tau',
			// date: '(30/06/1985)',
			latitude: 22 + 27 / 60 + 0 / 3600,
			longitude: 114 + 3 / 60 + 11 / 3600,
			elevation: 3,
			terminated: false
		},
		{
			name: 'Lok Ma Chau',
			// date: '(30/06/1985)',
			latitude: 22 + 30 / 60 + 42 / 3600,
			longitude: 114 + 4 / 60 + 49 / 3600,
			elevation: 67,
			terminated: false
		},
		{
			name: 'Tai Mei Tuk Pumping Station',
			// date: '(30/06/1985)',
			latitude: 22 + 28 / 60 + 42 / 3600,
			longitude: 114 + 14 / 60 + 20 / 3600,
			elevation: 24,
			terminated: false
		},
		{
			name: 'Po Pin Chau',
			// date: '(06/06/2014)',
			latitude: 22 + 21 / 60 + 42 / 3600,
			longitude: 114 + 22 / 60 + 17 / 3600,
			elevation: 68,
			terminated: false
		},
		{
			name: 'Quarry Bay',
			// date: '(30/04/1992)',
			latitude: 22 + 17 / 60 + 28 / 3600,
			longitude: 114 + 12 / 60 + 48 / 3600,
			elevation: 7,
			terminated: false
		},
		{
			name: 'Ngong Ping Fresh Water Reservoir',
			// date: '(01/09/2006)',
			latitude: 22 + 15 / 60 + 20 / 3600,
			longitude: 113 + 54 / 60 + 41 / 3600,
			elevation: 479,
			terminated: false
		},


		{
			name: 'Yau Yat Chuen',
			// date: '(30/10/1998 - 31/12/2007)',
			latitude: 22 + 19 / 60 + 57 / 3600,
			longitude: 114 + 10 / 60 + 21 / 3600,
			elevation: 64,
			terminated: true
		},
		{
			name: 'Central Plaza',
			// date: '(04/05/1993 - 31/12/2007)',
			latitude: 22 + 16 / 60 + 53 / 3600,
			longitude: 114 + 10 / 60 + 16 / 3600,
			elevation: 378,
			terminated: true
		},
		{
			name: 'Kat O Fisheries Research Sub-Station',
			// date: '(30/06/1985 - 31/12/2008)',
			latitude: 22 + 32 / 60 + 10 / 3600,
			longitude: 114 + 8 / 60 + 7 / 3600,
			elevation: 10,
			terminated: true
		},
		{
			name: 'Cheung Sha Wan',
			// date: '(15/08/1988 - 17/12/2010)',
			latitude: 22 + 19 / 60 + 58 / 3600,
			longitude: 114 + 9 / 60 + 14 / 3600,
			elevation: 30,
			terminated: true
		},
		{
			name: 'Leung Shuen Wan',
			// date: '(30/09/1985 - 30/03/2014)',
			latitude: 22 + 21 / 60 + 7 / 3600,
			longitude: 114 + 21 / 60 + 11 / 3600,
			elevation: 23,
			terminated: true
		},
	];
	
	public static function parseName(name:String) {
		return switch name {
			case 'Chek Lap Kok' | 'Hong Kong International Airport': ChekLapKok;
			case 'Cheung Chau': CheungChau;
			case 'Happy Valley': HappyValley;
			case 'HK Observatory' | 'Hong Kong Observatory': HKObservatory;
			case 'HK Park' | 'Hong Kong Park': HKPark;
			case 'Kau Sai Chau': KauSaiChau;
			case 'King\'s Park': KingsPark;
			case 'Kowloon City': KowloonCity;
			case 'Kwun Tong': KwunTong;
			case 'Lau Fau Shan': LauFauShan;
			case 'Ngong Ping': NgongPing;
			case 'Pak Tam Chung' | 'Pak Tam Au': PakTamChung;
			case 'Peng Chau': PengChau;
			case 'Sai Kung': SaiKung;
			case 'Sha Tin': ShaTin;
			case 'Sham Shui Po': ShamShuiPo;
			case 'Shau Kei Wan' | 'Sai Wan Ho': ShauKeiWan;
			case 'Shek Kong': ShekKong;
			case 'Sheung Shui': SheungShui;
			case 'Stanley': Stanley;
			case 'Ta Kwu Ling': TaKwuLing;
			case 'Tai Mei Tuk': TaiMeiTuk;
			case 'Tai Mo Shan': TaiMoShan;
			case 'Tai Po': TaiPo;
			case 'Tate\'s Cairn': TatesCairn;
			case 'The Peak': ThePeak;
			case 'Tseung Kwan O': TseungKwanO;
			case 'Tsing Yi' | 'New Tsing Yi Station': TsingYi;
			case 'Tsuen Wan Ho Koon' | 'Tsuen Wan Shing Mun Valley': TsuenWanShingMunValley;
			case 'Tuen Mun' | 'Tuen Mun Children and Juvenile Home': TuenMun;
			case 'Waglan Island': WaglanIsland;
			case 'Wetland Park': WetlandPark;
			case 'Wong Chuk Hang': WongChukHang;
			case 'Wong Tai Sin': WongTaiSin;
			case 'Yuen Long Park' | 'Yuen Long': YuenLongPark;
			case 'Cheung Chau Beach': CheungChauBeach;
			case 'Green Island': GreenIsland;
			case 'Kai Tak' | 'Kai Tak Runway Park': KaiTak;
			case 'Sha Chau': ShaChau;
			case 'Star Ferry' | 'Star Ferry (Kowloon)': StarFerry;
			case 'Tai Po Kau': TaiPoKau;
			case 'Tap Mun': TapMun;
			case 'Central' | 'Central Pier': Central;
			case _: null;
		}
	}
	
	public static function get(name:String) {
		return switch parseName(name) {
			case null: null;
			case id: list.find(function(station) return parseName(station.name) == id);
		}
	}
}
 	 	 	 	 	 		 	 	 	 