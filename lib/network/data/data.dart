import 'package:greencity/screens/clean_my_home/electrician.dart';
import 'package:greencity/screens/clean_my_home/plumber.dart';
import 'package:greencity/screens/facilities/topics/banequet_hall.dart';
import 'package:greencity/screens/facilities/topics/club_house.dart';
import 'package:greencity/screens/facilities/topics/swimming_pool.dart';
import 'package:greencity/screens/self_care/health_checkup.dart';
import 'package:greencity/screens/self_care/lab_test.dart';
import 'package:greencity/screens/self_care/women_care.dart';
import 'package:greencity/utils/strings.dart';

List<Map> rules = [
  {
    'number': '1.',
    'rules': 'Maintenance of flats by members carefully and clean it.'
  },
  {
    'number': '2.',
    'rules': 'Attend all the general body meetings of the society.'
  },
  {
    'number': '3.',
    'rules': 'To pay the maintenance charges and other dues regularly.'
  },
  {
    'number': '4.',
    'rules':
        'When someone is speaking directly to you, give them your attention.'
  },
  {
    'number': '5.',
    'rules': 'Behaving gently and speaking in a normal voice but not loudly.'
  },
  {
    'number': '6.',
    'rules':
        'Don’t lend out what you borrowed. If it is not yours, don’t act as if it is.'
  },
  {
    'number': '7.',
    'rules':
        'If you borrow someone’s car, fill up the tank before you return it.'
  },
  {'number': '8.', 'rules': 'While driving doesn not honk without need'},
  {
    'number': '9.',
    'rules':
        'Two things you shouldn’t offer unless you are asked, an opinion and advice'
  },
  {
    'number': '10.',
    'rules':
        'When someone is speaking directly to you, give them your attention.'
  },
  {
    'number': '11.',
    'rules':
        'When someone is speaking directly to you, give them your attention.'
  },
];

List<Map> notification = [
  {
    'date': '06',
    'year': '2023',
    'icon': 'icon1',
    'title': 'Maintenence ',
    'subtitle': '100 is pay by Annat Rathod A-204',
  },
  {
    'date': '28',
    'year': '2022',
    'icon': 'icon1',
    'title': 'Maintenence',
    'subtitle': 'Rs . 100',
  },
  {
    'date': '22',
    'year': '2022',
    'icon': 'icon1',
    'title': 'Maintenence',
    'subtitle': 'Rs . 100',
  },
  {
    'date': '09 ',
    'year': '2022',
    'icon': 'icon1',
    'title': 'Maintenence',
    'subtitle': 'Rs . 100',
  },
];

List<Map> facilities = [
  {
    'image': 'assets/images/clubhouse.jpeg',
    'name': 'Club house',
    'price': '\$ 150',
    'pageName': const ClubHouseScreen()
  },
  {
    'image': 'assets/images/hall.jpeg',
    'name': 'Banquet hall',
    'price': '\$ 221',
    'pageName': const BanquetHall()
  },
  {
    'image': 'assets/images/pool.jpeg',
    'name': 'Swimming pool',
    'price': '\$ 155',
    'pageName': const SwimmingPoolScreen()
  },
];

List<Map> maintenence = [
  {
    'image': 'assets/images/user.png',
    'name': 'A-103',
    'rupees': '1,000',
    'msg': 'maintenence paid by aniket'
  },
  {
    'image': 'assets/images/user.png',
    'name': 'A-103',
    'rupees': '1,000',
    'msg': 'maintenence paid by aniket'
  },
  {
    'image': 'assets/images/user.png',
    'name': 'A-103',
    'rupees': '1,000',
    'msg': 'maintenence paid by aniket'
  },
  {
    'image': 'assets/images/user.png',
    'name': 'A-103',
    'rupees': '1,000',
    'msg': 'maintenence paid by aniket'
  },
  {
    'image': 'assets/images/user.png',
    'name': 'A-103',
    'rupees': '1,000',
    'msg': 'maintenence paid by aniket'
  },
  {
    'image': 'assets/images/user.png',
    'name': 'A-103',
    'rupees': '1,000',
    'msg': 'maintenence paid by aniket'
  },
];

List<Map> gradiantContainerData = [
  {
    'name': txtelectritionService,
    'color1': 'facd68',
    'color2': 'fc7683',
    'pageName': const Electrition()
  },
  {
    'name': txtPlumbingService,
    'color1': '99d5d5',
    'color2': '089298',
    'pageName': const Plumber_Screen()
  },
  {
    'name': txtWomenCare,
    'color1': 'fbc2eb',
    'color2': 'a18cd4',
    'pageName': const WomenCare()
  },
  {
    'name': txtHealthCheckup,
    'color1': '39d9fc',
    'color2': '6b86e0',
    'pageName': const HealthCheckUp()
  },
  {
    'name': txtlabtest,
    'color1': 'BBD2C6',
    'color2': '536956',
    'pageName': const LabTest()
  },
];
List<Map> clubHouseData = [
  {
    'flatNo': 'B-404',
    'name': 'Bhakti Talaviya',
    'date': '25 august 2023',
    'time': '10:00 am to 12:00 pm',
  },
  {
    'flatNo': 'A-203',
    'name': 'Aniket Polara',
    'date': '08 November 2022',
    'time': '5:30 pm to 12:00 pm',
  },
  {
    'flatNo': 'C-103',
    'name': 'Hemil Zalavadiya',
    'date': '15 December 2023',
    'time': '8:00 pm to 11:00 pm',
  }
];

List<Map> swimmingPool = [
  {
    'date': '28 August 2022',
    'time': '10:00 am to 2:00 pm',
    'name': 'Bhakti Talaviya',
    'flatNo': 'B-405',
    'paid': 'pay rs.550',
  },
  {
    'date': '28 August 2022',
    'time': '10:00 am to 2:00 pm',
    'name': 'Bhakti Talaviya',
    'flatNo': 'B-405',
    'paid': '500 pay by ms.Bhakti Talaviya',
  },
  {
    'date': '28 August 2022',
    'time': '10:00 am to 2:00 pm',
    'name': 'Bhakti Talaviya',
    'flatNo': 'B-405',
    'paid': '500 pay by ms.Bhakti Talaviya',
  },
];

List<Map> banquetHallData = [
  {
    'flatNo': 'B-404',
    'name': 'Bhakti Talaviya',
    'date': '25 august 2023',
    'time': '10:00 am to 12:00 pm',
  },
  {
    'flatNo': 'A-203',
    'name': 'Aniket Polara',
    'date': '08 November 2022',
    'time': '5:30 pm to 12:00 pm',
  },
  {
    'flatNo': 'C-103',
    'name': 'Hemil Zalavadiya',
    'date': '15 December 2023',
    'time': '8:00 pm to 11:00 pm',
  }
];
