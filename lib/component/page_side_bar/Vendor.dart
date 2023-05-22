import 'package:eqipped_test/component/page_side_bar/table/horizaontal_table.dart';
import 'package:eqipped_test/component/page_side_bar/widgets/One_add_all.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'grid_text/CardWidget.dart';

class Vendor extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: const Text('Vendor'),
          centerTitle: true,
          backgroundColor: Color(0xffff8f61),
        ),
      body:SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              CardWidget(),
              SizedBox(height: getProportionateScreenWidth(10)),

              One_addAll(),
              SizedBox(height: getProportionateScreenWidth(10)),
              Horizontal_table(),
              SizedBox(height: getProportionateScreenWidth(30)),
            ],
          ),
        ),

    );

}
