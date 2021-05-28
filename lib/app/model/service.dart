class Service {
  Service({required this.image, required this.title});
  final String? image, title;

  List<Service> allServicesList = [];

  List<Service> get instantService => _instantService;

  List<Service> _instantService = [
    Service(image: 'assets/send-money.jpg', title: 'Send Money'),
    Service(image: 'assets/easyload.jpg', title: 'Easyload'),
    Service(image: 'assets/mobile-packages.jpg', title: 'Mobile Packages'),
    Service(image: 'assets/bill-payment.jpg', title: 'Bill Payment'),
  ];
}
