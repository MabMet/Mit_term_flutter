import 'package:flutter/material.dart';
import 'package:mid_term_flutter_app/widgets/list.dart';

import '../../utilitys/detail_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        leading: const Padding(
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: AssetImage('images/profile.jpg'),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Korim',
              style: TextStyle(
                fontSize: 15,
                color: grayColor.withOpacity(
                  0.5,
                ),
              ),
            ),
            const Text(
              'Let\'s Find Best Hotel',
              style: TextStyle(
                color: grayColor,
              ),
            ),
          ],
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: grayColor.withOpacity(0.5),
                ),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none,
                  color: grayColor,
                ),
                splashRadius: 25,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(width: 3, color: Colors.greenAccent),
                  ),
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search for hotel',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                'Explore City',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(23),
                            child: Icon(
                              Icons.location_on,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('Nearby'),
                      ],
                    ),
                  ),
                  ...List.generate(
                    ExploreCityList.list.length,
                    (index) => Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            backgroundImage: NetworkImage(
                                ExploreCityList.list[index].urlImage),
                            radius: 35,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(ExploreCityList.list[index].nameCity),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Text(
                'Recommended for your next trip',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    RecommendList.list.length,
                    (index) => Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 150,
                                    width: 270,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20),),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: SizedBox.fromSize(
                                        size: const Size.fromRadius(48),
                                        // Image radius
                                        child: Image.network(
                                          RecommendList.list[index].urlImage,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 10,
                                    top: 10,
                                    child: Text(
                                      RecommendList.list[index].price,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 10,
                                    top: 10,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grayColor.withOpacity(0.5),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                      RecommendList.list[index].iconData2,
                                      size: 20,
                                      color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                    ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Text(
                                RecommendList.list[index].nameCity,
                                style: const TextStyle(
                                  fontSize: 19,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: orangeColor,
                                  ),
                                  Text(
                                    RecommendList.list[index].kilometer,
                                    style: const TextStyle(
                                      fontSize: 17,
                                      color: grayColor,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 38,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        RecommendList.list[index].iconData,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular Hotel',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  TextButton(onPressed: (){}, child: const Text('See More'),),
                ],
              ),
            ),
            ...List.generate(PopularList.list.length, (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10,),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(20),),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(30),
                            // Image radius
                            child: Image.network(
                              PopularList.list[index].urlImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(PopularList.list[index].nameCity,style: const TextStyle(fontSize: 16,),),
                        const SizedBox(height: 10,),
                        Text(PopularList.list[index].kilometer,style: const TextStyle(fontSize: 14,),),
                        const SizedBox(height: 10,),
                        Text(PopularList.list[index].price,style: const TextStyle(fontSize: 15,),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Icon(Icons.star_rate,color: orangeColor,),
                          Text(PopularList.list[index].rate,style: const TextStyle(fontSize: 15,),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
