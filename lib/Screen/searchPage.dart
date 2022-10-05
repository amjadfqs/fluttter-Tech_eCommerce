// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lab_2/Components/MiddleAppBar.dart';
import 'package:lab_2/Components/search_item.dart';
import 'package:lab_2/Components/text_input.dart';
import 'package:lab_2/Constant/AppTitle.dart';
import 'package:lab_2/Constant/SizeConfig.dart';
import 'package:lab_2/Constant/bottomBar.dart';
import 'package:lab_2/Screen/CategoriesPage.dart';
import 'package:lab_2/Screen/Home.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
// var
  final List<Map> _allPodcasts = [
    {'id': 1, 'name': 'product1', 'cat': 'laptop'},
    {'id': 2, 'name': 'product2', 'cat': 'laptop'},
    {'id': 3, 'name': 'product3', 'cat': 'laptop'},
    {'id': 4, 'name': 'product4', 'cat': 'laptop'},
    {'id': 5, 'name': 'product5', 'cat': 'laptop'},
    {'id': 6, 'name': 'product6', 'cat': 'Pc'},
    {'id': 7, 'name': 'product7', 'cat': 'Pc'},
    {'id': 8, 'name': 'product8', 'cat': 'Pc'},
    {'id': 9, 'name': 'product9', 'cat': 'screen'},
    {'id': 10, 'name': 'product10', 'cat': 'screen'},
    {'id': 11, 'name': 'product11', 'cat': 'screen'},
    {'id': 12, 'name': 'product12', 'cat': 'screen'},
  ];

  List<Map> _foundPodcasts = [];

// fun
  void search(String inputSearch) {
    List<Map> result = [];
    if (inputSearch.isEmpty) {
      result = _allPodcasts;
    } else {
      result = _allPodcasts.where((element) {
        return element.toString().toLowerCase().contains(inputSearch.trim());
      }).toList();
    }

    setState(() {
      _foundPodcasts = result;
    });
  }

  // build

  var buttonBaN = 1;

  @override
  void initState() {
    _foundPodcasts = _allPodcasts;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTitle("search", context),
                  SizedBox(height: getHeightScreen(20)),
                  // search felid
                  text_input(context, 'Search here ...', icon: Icons.search,
                      onChanged: (input) {
                    search(input);
                  }),
                  SizedBox(height: getHeightScreen(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MiddleAppBar("Categories", Icons.list_sharp, () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoriesPage()));
                      }),
                      MiddleAppBar(
                          "Favorite", Icons.star_border_outlined, () {}),
                      MiddleAppBar(
                          "Gifts", Icons.card_giftcard_outlined, () {}),
                      MiddleAppBar(
                          "Best selling", Icons.trending_up_outlined, () {}),
                    ],
                  ),
                  SizedBox(height: getHeightScreen(20)),
                  // item list
                  Expanded(
                    child: ListView.builder(
                      itemCount: _foundPodcasts.length,
                      itemBuilder: (BuildContext context, int index) {
                        return search_item(context,
                            title: _foundPodcasts[index]['name'],
                            subtitle: _foundPodcasts[index]['cat']);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(
          BottomNu: buttonBaN,
          callBack: (int index) {
            buttonBaN = index;
            setState(() {
              if (buttonBaN == 0) {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              } else if (buttonBaN == 1) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchPage()));
              }
            });
          }),
    );
    ;
  }
}
