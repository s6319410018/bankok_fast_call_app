//คลาสประเภทโมเดล เป็นคลาสที่ใช้ทำงานกับข้อมูลต่างๆ
class PoliceList {
  String policeImage = '';
  String policeName = '';
  String policePhone = '';
  String policeWeb = '';
  String policeFacebook = '';
  String policeLatitude = '';
  String policeLongitude = '';

  PoliceList({
    required this.policeFacebook,
    required this.policeImage,
    required this.policeLatitude,
    required this.policeLongitude,
    required this.policeName,
    required this.policePhone,
    required this.policeWeb,
  });
}
