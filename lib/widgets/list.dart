import 'package:flutter/material.dart';

class ExploreCityList {
  final String nameCity;
  final String urlImage;

  ExploreCityList({
    required this.nameCity,
    required this.urlImage,
  });

  static List<ExploreCityList> list = [
    ExploreCityList(
        nameCity: 'Dtraka',
        urlImage: 'https://www.ahstatic.com/photos/c096_ho_00_p_1024x768.jpg'),
    ExploreCityList(
        nameCity: 'Luxury',
        urlImage:
            'https://lirp.cdn-website.com/11191c87/dms3rep/multi/opt/building1-feded8e1-640w.jpg'),
    ExploreCityList(
        nameCity: 'Kansas',
        urlImage:
            'https://cdn.loewshotels.com/loewshotels.com-2466770763/cms/cache/v2/5f5a6e0d12749.jpg/1920x1080/fit/80/86e685af18659ee9ecca35c465603812.jpg'),
    ExploreCityList(
        nameCity: 'Marriott',
        urlImage:
            'https://www.marriott.com/content/dam/marriott-renditions/dm-static-renditions/tx/emea/hws/s/seztx/en_us/photo/unlimited/assets/tx-seztx-pool-21834-wide-hor.jpg'),
    ExploreCityList(
        nameCity: 'Pune',
        urlImage:
            'https://www.ohotelsindia.com/pune/images/b32d5dc553ee2097368bae13f83e93cf.jpg'),
    ExploreCityList(
        nameCity: 'Khon',
        urlImage:
            'https://img.wongnai.com/p/400x0/2018/07/20/811dc4eea1c64e7bb410583e276e86a8.jpg'),
  ];
}

class RecommendList {
  final String nameCity;
  final String kilometer;
  final String urlImage;
  final String price;
  final IconData? iconData;
  final IconData? iconData2;

  RecommendList( {
    required this.nameCity,
    required this.urlImage,
    required this.kilometer,
    required this.price,
    this.iconData,
    this.iconData2,
  });

  static List<RecommendList> list = [
    RecommendList(
      nameCity: 'Pan Pacific Sonargaon Dhaka',
      urlImage: 'https://assets.simpleviewinc.com/simpleview/image/upload/c_limit,h_1200,q_75,w_1200/v1/clients/orlandofl/5900_pool_b92df465-0c67-4161-b8bb-67f9fc301094.jpg',
      kilometer: '2,565 Kilometres away',
      iconData: Icons.arrow_forward,
      price: '\$35 per Night',
      iconData2: Icons.favorite_border,
    ),
    RecommendList(
      nameCity: 'Conrad Hotels and Resorts',
      urlImage:
          'https://www.richmondehotels.com.ph/wp-content/uploads/2021/09/rh_home_banner_02.jpg',
      kilometer: '6,565 Kilometres away',
      iconData: Icons.arrow_forward,
      price: '\$45 per Night',
      iconData2: Icons.favorite_border,
    ),
    RecommendList(
      nameCity: 'Leonardo Hotel Bucharest',
      urlImage:
          'https://thehoughtonhotel.com/wp-content/uploads/2023/02/Houghton-Hotel-3-20-scaled.jpg',
      kilometer: '1,565 Kilometres away',
      iconData: Icons.arrow_forward,
      price: '\$25 per Night',
      iconData2: Icons.favorite_border,
    ),
    RecommendList(
      nameCity: 'Metropolitan Hotel Sofia',
      urlImage:
          'https://profitroom-uploads.fra1.digitaloceanspaces.com/hotelfrancuski/1920x1080/16575281142132_hotelfrancuski3.jpg',
      kilometer: '5,565 Kilometres away',
      iconData: Icons.arrow_forward,
      price: '\$50 per Night',
      iconData2: Icons.favorite_border,
    ),
    RecommendList(
      nameCity: 'Pune',
      urlImage:
          'https://luxurylondon.co.uk/wp-content/uploads/2022/08/browns-hotel-mayfair-london-review-04.jpg',
      kilometer: '2,565 Kilometres away',
      iconData: Icons.arrow_forward,
      price: '\$30 per Night',
      iconData2: Icons.favorite_border,
    ),
    RecommendList(
      nameCity: 'Peninsula Hotels',
      urlImage:
          'https://www.britain-magazine.com/wp-content/uploads/Kipling-Suite-Browns.jpg',
      kilometer: '4,565 Kilometres away',
      iconData: Icons.arrow_forward,
      price: '\$40 per Night',
      iconData2: Icons.favorite_border,
    ),
  ];
}

class PopularList {
  final String nameCity;
  final String kilometer;
  final String urlImage;
  final String price;
  final String rate;
  final IconData? iconData;

  PopularList({
    required this.nameCity,
    required this.urlImage,
    required this.kilometer,
    required this.price,
    required this.rate,
    this.iconData,
  });

  static List<PopularList> list = [
    PopularList(
      nameCity: 'Nagar Valley Hotel',
      urlImage: 'https://assets.simpleviewinc.com/simpleview/image/upload/c_limit,h_1200,q_75,w_1200/v1/clients/orlandofl/5900_pool_b92df465-0c67-4161-b8bb-67f9fc301094.jpg',
      kilometer: '12.4 km',
      iconData: Icons.star,
      price: 'Start \$35 per Night',
      rate: '5.4',
    ),
    PopularList(
      nameCity: 'Richmond Hotel',
      urlImage:
      'https://www.richmondehotels.com.ph/wp-content/uploads/2021/09/rh_home_banner_02.jpg',
      kilometer: '10.2 km',
      iconData: Icons.star,
      price: 'Start \$45 per Night',
      rate: '4.8',
    ),
    PopularList(
      nameCity: 'Leonardo Hotel',
      urlImage:
      'https://thehoughtonhotel.com/wp-content/uploads/2023/02/Houghton-Hotel-3-20-scaled.jpg',
      kilometer: '16.3 km',
      iconData: Icons.star,
      price: 'Start \$25 per Night',
      rate: '4.3',
    ),
    PopularList(
      nameCity: 'Metropolitan Hotel',
      urlImage:
      'https://profitroom-uploads.fra1.digitaloceanspaces.com/hotelfrancuski/1920x1080/16575281142132_hotelfrancuski3.jpg',
      kilometer: '9.8 km',
      iconData: Icons.star,
      price: 'Start \$50 per Night',
      rate: '6.7',
    ),
  ];
}
