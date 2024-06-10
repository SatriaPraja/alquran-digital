class DoaModel {
  int nomor;
  String judul;
  String arab;
  String latin;
  String arti;

  DoaModel({
    required this.nomor,
    required this.judul,
    required this.arab,
    required this.latin,
    required this.arti,
  });
}

List<DoaModel> doaModel = [
  DoaModel(
    nomor: 1,
    judul: 'Doa Sebelum Tidur',
    arab: 'باسْمِكَ اللهُمَّ أَحْيَا وَبِاسْمِكَ أَمُوتُ',
    latin: "Bismika Allaahumma ahyaa wa bismika amuut",
    arti: '"Dengan menyebut nama-Mu, ya Allah, aku hidup dan mati."',
  ),
  DoaModel(
      nomor: 2,
      judul: 'Doa Bangun Tidur',
      arab:
          'اَلْحَمْدُ لِلَّهِ الَّذِي أَحْيَانَا بَعْدَ مَا أَمَاتَنَا وَإِلَيْهِ النُّشُوْرُ',
      latin:
          "Alhamdulillahi alladzi ahyaanaa ba'da maa amaatanaa wa ilaihi an-nusyuur",
      arti:
          '"Segala puji bagi-Mu, ya Allah, yang telah menghidupkan kembali diriku setelah kematianku, dan hanya kepada-Nya nantinya kami semua akan dihidupkan kembali." (HR Ahmad, Bukhari & Muslim)'),
  DoaModel(
    nomor: 3,
    judul: 'Doa Masuk Kamar Mandi',
    arab:
        'بِاسْمِ اللهِ اللَّهُمَّ إِنِّي أَعُوْذُ بِكَ مِنَ الْخُبُثِ وَالْخَبَاءِثِ',
    latin:
        "Bismillahi Allahumma inni a-'udzuu bika minal khubutsi wal khabaaits",
    arti:
        '"Dengan menyebut nama Allah. Ya Allah, sesungguhnya aku berlindung kepada-Mu dari setan laki-laki dan setan perempuan." (HR Bukhari & Muslim, dari Anas bin Malik)',
  ),
  DoaModel(
    nomor: 4,
    judul: 'Doa Keluar Kamar Mandi',
    arab:
        'وَعَافَانِي الْأَذَى عَنِّي أَذْهَبَ الَّذِي لِلَّهِ الْحَمْدُ غُفْرَانَكَ',
    latin:
        "Wa 'aafaanii al-adza 'annii adzhaba Alladzi lillahil hamdu ghufraanaka",
    arti:
        '"Aku memohon ampunan-Mu, segala pui bagi Allah yang telah melenyapkan gangguan (penyakit) dariku dan telah membuatku sehat." (HR Abu Dawud, Tirmidzi, An-Nasa i & Ibnu Majah, dari Aisyah)',
  ),
  DoaModel(
    nomor: 5,
    judul: 'Doa Sebelum Wudhu',
    arab: 'بِاسْمِ اللهِ',
    latin: "Bismillahi",
    arti:
        '"Dengan menyebut nama Allah." (HR Tirmidzi, Abu Dawud, & Ibnu Majah)',
  ),
  DoaModel(
    nomor: 6,
    judul: 'Doa Setelah Wudhu',
    arab:
        'أَشْهَدُ أَنْ لا إلهَ إِلَّا اللهُ وَحْدَهُ لا شَرِيكَ لَهُ وَأَشْهَدُ أَنَّ مُحَمَّدًا عَبْدُهُ وَرَسُولُهُ اللهُمَّ اجْعَلْنِي مِنَ التَّوَّابِينَ وَاجْعَلْنِي مِنَ الْمُتَطَهِّرِينَ',
    latin:
        "Asyhadu an laa ilaaha illa Allah wahdahu laa syariika lahu wa asyhadu anna muhammadan 'abduhu warasuuluhu Allahummaj 'alnii mina attawwaabiina waj'alnii minal mutathohhiriina",
    arti:
        '"Aku bersaksi bahwa tidak ada Tuhan yang patut untuk disembah selain Allah dan tiada sekutu bagi-Nya. Aku juga bersaksi bahwa Muhammad adalah hamba sekaligus rasul-Nya. Ya Allah, jadikanlah aku termasuk golongan orang-orang yang bertaubat dan jadikan pula aku termasuk golongan orang-orang yang menyucikan diri." (HR Muslim & Tirmidzi, dari Uqbah bin Amir & Umar bin Khaththab',
  ),
  DoaModel(
    nomor: 7,
    judul: 'Doa Bercermin',
    arab:
        'اللَّهُمَّ كَمَا حَسَنْتَ خَلْقِي فَأَحْسِنُ خُلُقِي وَحَرِّمْ وَجْهِي عَلَى النَّارِ',
    latin:
        "Allahumma kamaa hasanta khalqii fa ahsin khuluqii wa harrim wajhii 'ala annaar",
    arti:
        '"Ya Allah, sebagaimana Engkau telah membaguskan penciptaanku, maka baguskanlah pula akhlakku, dan haramkanlah wajahku atas neraka." (HR Bazzar)',
  ),
  DoaModel(
    nomor: 8,
    judul: 'Doa Makan',
    arab:
        'اللَّهُمَّ بَارِكْ لَنَا فِيْمَا رَزَقْتَنَا وَقِنَا عَذَابَ النَّارِ',
    latin: "Allahumma baarik lanaa fiimaa razaqtanaa wa quinoa 'adzaaba annaar",
    arti:
        '"Ya Allah, limpahkanlah keberkahan kepada kami atas apa yang telah Engkau rezekikan kepada kami, dan jauhkanlah kami dari siksa neraka." (HR Malik)',
  ),
];
