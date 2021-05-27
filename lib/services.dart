import 'package:flutter/material.dart';

class ServiceModel {
  final String image, title;

  ServiceModel({@required this.image, @required this.title});

  List<ServiceModel> _instantService = [
    ServiceModel(image: 'assets/send-money.jpg', title: 'Send Money'),
    ServiceModel(image: 'assets/easyload.jpg', title: 'Easyload'),
    ServiceModel(image: 'assets/mobile-packages.jpg', title: 'Mobile Packages'),
    ServiceModel(image: 'assets/bill-payment.jpg', title: 'Bill Payment'),
  ];
  List<ServiceModel> allServicesList = [];

  List<ServiceModel> get instantService => _instantService;
}
