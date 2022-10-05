// ignore_for_file: prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lab_2/Components/search_item.dart';
import 'package:lab_2/Constant/SizeConfig.dart';
import 'package:lab_2/api/model/resource_model.dart';
import 'package:lab_2/api/resource_api.dart';

class ApiTestPage extends StatefulWidget {
  ApiTestPage({Key? key}) : super(key: key);

  @override
  State<ApiTestPage> createState() => _ApiTestPageState();
}

class _ApiTestPageState extends State<ApiTestPage> {
  var resource = [];

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState

    ResourceApi().getAllData(entryPoint: 'job').then((response) {
      // print("res " + response.body.toString());
      List list = json.decode(response.body);
      resource = list.map((model) => ResourceModel.fromJson(model)).toList();
      print(resource.length);
      print(ResourceApi().getStorageUrl());
    });

    super.initState();
  }

  // build
  @override
  Widget build(BuildContext context) {
    SizeOfConfig().init(context);

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(19),
        child: Column(
          children: [
            Expanded(
                child: ListView(
                    children: resource
                        .map((item) => search_item(context,
                            title: item.title.substring(0, 4) + '...',
                            subtitle: item.company.substring(0, 1) + '...',
                            img: item.logo))
                        .toList())),
          ],
        ),
      )),
    );
  }
}
