import 'package:ombc/common/image_path.dart';

class StoreLocationModal {
  String cityName;
  String image;
  List<StoreLocationAddressModal> storeList;

  StoreLocationModal(
      {required this.cityName, required this.image, required this.storeList});
}

class StoreLocationAddressModal {
  String area;
  String address;
  String phoneNumber;

  StoreLocationAddressModal(
      {required this.phoneNumber, required this.address, required this.area});
}

List<StoreLocationModal> storeLocationList = [
  StoreLocationModal(image: ImagePath.chennai, cityName: "Chennai", storeList: [
    StoreLocationAddressModal(
        address:
            "279, TTKrishnamachari Road, Sri Ram Nagar,Alwarpet, Chennai, Tamilnadu, 600018.",
        area: "ALWARPET",
        phoneNumber: "044 4208 4422"),
    StoreLocationAddressModal(
        address:
            "36, 1st Cross Street, Kasturbai Nagar, Adyar, Chennai, Tamilnadu, 600020.",
        area: "ADYAR",
        phoneNumber: "044 4321 0033"),
    StoreLocationAddressModal(
        address:
            "No 91/1, Harrington Road, Chetpet, Chennai, Tamilnadu, 600031.",
        area: "HARRINGTON ROAD",
        phoneNumber: "044 4206 8417"),
    StoreLocationAddressModal(
        address:
            "No. Ad 13/83, 5th Avenue, Anna Nagar, Near Axis Bank, Chennai, Tamilnadu, 600040.",
        area: "ANNA NAGAR",
        phoneNumber: "07358405561"),
    StoreLocationAddressModal(
        address:
            "No 25A (Old No 11), Landons Road, Kilpauk, Chennai, Tamilnadu, 600040.",
        area: "KILPAUK",
        phoneNumber: "044 48514580"),
    StoreLocationAddressModal(
        address:
            "Khader Nawaz Khan Road: Brindavan Apartments, No 11 Khader Nawaz Khan Road, Nugambakkam, Chennai-600006",
        area: "NUGAMBAKKAM",
        phoneNumber: "044 48528215"),
    StoreLocationAddressModal(
        address:
            "Old No 131, New No 94 Habibullah Road, TNagar, Chennai 600017. Opposite Karnataka Sanga School",
        area: "T. NAGAR",
        phoneNumber: "044 48648629"),
  ]),
  StoreLocationModal(
      image: ImagePath.hyderabad,
      cityName: "Hyderabad",
      storeList: [
        StoreLocationAddressModal(
            address:
                "1 & 2 Meenakshi Bamboo's, Commercial Complex. near Ramky Tower's, Gachibowli, Hyderabad, 500081.",
            area: "Gachibowli",
            phoneNumber: "044 48648629"),
        StoreLocationAddressModal(
            address:
                "BRatna Arcade, cellar survey No 128, National Highway 44 Kompally, Secunderabad, Telangana 500014 Beside Sree Vensai Towers",
            area: "Kompally",
            phoneNumber: "7287824444"),
        StoreLocationAddressModal(
            address:
                "7-90/1, Brindavan Colony, Gandipet Road Hyderabad, Telangana 500075 Near CBIT",
            area: "Kokapet",
            phoneNumber: "7287824444"),
      ])
];
