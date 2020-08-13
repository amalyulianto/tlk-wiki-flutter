import 'character.dart';

class CharactersData {
  List<Character> _characters = [
    Character(
      name: 'Uhtred of Bebbanburg',
      detail: 'Uhtred was born into status as son of Ealdorman Uhtred, Lord of Bebbanburg, and raised to have hatred towards the surrounding kingdoms of Mercia, East Anglia, Wessex, Scotland and the Danes. Uhtred was originally called Osbert and was the younger of Ealdorman Uhtred\'s sons. The name Uhtred was given always to the oldest son, but after his older brother was killed in a failed attack on the Danes, Osbert\'s name was changed to Uhtred. Uhtred was never taught swordsmanship in his nine years at Bebbanburg as his step-mother wanted him to pursue a life dedicated to being a priest.\n' +
          'In 866, the first of the Danish army began to arrive in Northumbria. In their speed, the Danes were able to capture Eoferwic (York). At this time, the young Uhtred was 19 years of age whilst Osbert was around 9/10 years old. Ealdorman Uhtred was killed in the failed assault to reclaim Eoferwic at the Battle of Eoferwic, and Uhtred, his only living son son, was captured by the Danes following his furious but feeble attack on a Danish warlord. That warlord, Earl Ragnar the Fearless, son of Ravn, decided to nurture Uhtred\'s fury into a suitable fighting spirit and so adopted him. Uhtred found that living with the Danes was a much freer existence than with the pious Christians and their dour priests at Bebbanburg and embraced the Danish gods of Thor, Odin, and Hoder. Uhtred came to love Ragnar as a father and became a brother to Ragnar\'s sons, Ragnar and Rorik, and daughter, Thyra.\n' +
          'Living in Ragnar\'s company was enjoyable, even after Rorik\'s death of sickness, until everything changed. Ragnar had made an enemy in a man named Kjartan due to an incident between Thyra and Kjartan\'s son, Sven. The enmity came to a head one night when Uhtred was in the forest making charcoal for weapons. Kjartan led a war-band to where Ragnar and his family were sleeping and set their hall on fire, killing them all. Kjartan initially believed Uhtred to have also died in the fire. Uhtred was crushed by Ragnar\'s death and left Northumbria to find family amongst the Saxons in Mercia, to the south.\n',
      photo: 'assets/images/uhtred.png',
      gender: 'Male',
      residence: "Cookham, Wessex (currently)\n" +
          "Lyscombe, Wessex (formerly)\n" +
          "Bebbanburg, Northumbria (originally)",
      relatives: "Ealdorman Uhtred (Father)\n" +
          "Earl Ragnar (Foster Father)\n" +
          "Ragnar Ragnarsson (Foster Brother)\n" +
          "Thyra (Foster Sister)\n" +
          "Gisela (Wife)\n" +
          "Young Uhtred (Son)\n" +
          "Stiorra (Daughter)\n" +
          "Hild (Former Lover)",
    ),
    Character(
      name: 'Alfred',
      detail: 'Alfred was based on real person, Alfred The Great, King of Wessex. In The Last Kingdom, He was the King of the Wessex. He eventually styled himself as the \"King of the Anglo-Saxons\", and is driven by a vision for a united Kingdom of all the English (England). Alfred is a king of cunning, bravery, wisdom, piety and intelligence, who uses his deep Christian beliefs and innate drive towards a Kingdom of the English to gain alliances and defeat his enemies.\n' +
          '\n' +
          'His father was King Æthelwulf, and he succeeded his brother King Æthelred following battle against the Danes. King Alfred defeated the Norse at the Battle of Ethandun, secured a treaty defining his kingdom and the Danelaw with Earl Guthrum, and made Guthrum convert to Christianity under the name King Æthelstan of East Anglia. ',
      photo: 'assets/images/alfred.png',
      gender: 'Male',
      residence: "Winchester, Wessex",
      relatives: "Aethelred of Wessex (Brother)\n" +
          "Aelswith (Wife)\n" +
          "Edward (Son)\n" +
          "Aethelflaed (Daughter)\n" +
          "Osferth (Bastard Son)",
    ),
    Character(
      name: 'Beocca',
      detail:
          'Known as Father Beocca, he was one of Alfred\'s priest. He baptized Uhtred in his childhood, and later became one of Uhtred\'s closest friend, and only family left from Bebbanburg.',
      photo: 'assets/images/beocca.png',
      gender: 'Male',
      residence: "Winchester, Wessex\n" + "Cookham, Wessex",
      relatives: "Thyra (Wife)",
    ),
    Character(
      name: 'Ragnar Ragnarsson',
      detail:
          'Ragnar Ragnarsson was son of Earl Ragnar. After his father\'s death, he later inherited the status as an Earl. He was brave, loyal, fair, and would always come to Uhtred\'s aid when he\'s most needed, despite struggling with his brother\'s enduring loyalty to Alfred and the Saxon cause. ',
      photo: 'assets/images/ragnar.png',
      gender: 'Male',
      residence: 'Northumbria',
      relatives: "Earl Ragnar (Father)\n" +
          "Thyra (Sister)\n" +
          "Uhtred (Foster Brother)\n" +
          "Brida (Wife)",
    ),
    Character(
      name: 'Hild',
      detail:
          "Hild was one of Uhtred's trusted friends and warriors. He was a nun before joining the team. During the attack on Winchester, Hild was caught by Danes and was raped. After serving as a warrior alongside Uhtred, he became an abbess in Winchester and now known as Abbess Hildegyth.",
      photo: 'assets/images/hild.png',
      gender: 'Female',
      residence: "Winchester, Wessex\n" + "Cookham, Wessex",
      relatives: 'Uhtred (Former Lover)',
    ),
    Character(
      name: 'Finan',
      detail:
          "Finan was an Irish man and Uhtred's second in command. He met Uhtred when they were slaves on an Icelandic ship, and successfully fled together. After killing his slaver, he joined Uhtred's team and developed as a great warrior, followed Uhtred in many great battles.",
      photo: 'assets/images/finan.png',
      gender: 'Male',
      residence: "Irland (originally)\n" + "Cookham, Wessex",
      relatives: '',
    ),
    Character(
      name: 'Sithric',
      detail:
          "He is the son of Kjartan and a Saxon slave, his father wanted nothing to do with him. Uhtred took Sihtric into his service after convincing himself that Sihtric had no loyalty to Kjartan. Sihtric later becomes one of Uhtred's most trusted allies.",
      photo: 'assets/images/sithric.png',
      gender: 'Male',
      residence: "Northumbria (formerly)\n" + "Cookham, Wessex",
      relatives: 'Kjartan (Father)',
    ),
    Character(
      name: 'Osferth',
      detail:
          "A bastard son to Alfred, he was sent to the church and served as a novice monk. He then joined Uhtred as a warrior, even though he lacked courage and battle skills. After surviving many battles, with luck, he then became a competent warrior and one of Uhtred's trusted friends.",
      photo: 'assets/images/osferth.png',
      gender: 'Male',
      residence: "Winchester, Wessex (formerly)\n" + "Cookham, Wessex",
      relatives: 'Alfred',
    ),
    Character(
      name: 'Young Uhtred',
      detail:
          "He is Uhtred's son with Lady Gisela. After Alfred made Uhtred an outlaw, Young Uhtred was sent to the monastery by the king and educated as a priest, a life his father didn't like. He then reunited with his father and had journeys together, before he decided to dedicate.",
      photo: 'assets/images/young_uhtred.png',
      gender: 'Male',
      residence:
          "Cookham, Wessex (originally)\n" + "St. Wilfrid's Church, Wessex",
      relatives:
          "Uhtred (Father) \n" + "Gisela (Mother)\n" + "Stiorra (Sister)",
    ),
    Character(
      name: 'Stiorra',
      detail:
          "Young Uhtred's younger sister, she was also sent to the monastery. But she is just like her father, a pagan. She left the monastery before her brohter and joined her father. Dreamed of a life like Uhtred, she then deicded to go with Sigtryggr, a Dane Warlord.",
      photo: 'assets/images/stiorra.png',
      gender: 'Female',
      residence: "Cookham, Wessex (originally)\n" + "Eoferwic, Northumbria",
      relatives:
          "Uhtred (Father)\n" + "Gisela (Mother)\n" + "Young Uhtred (Brother)",
    ),
  ];

  List<Character> get data => _characters;
}
