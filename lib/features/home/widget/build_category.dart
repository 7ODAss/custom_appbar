import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../model/category_model.dart';

class BuildCategory extends StatelessWidget {
  final List<CategoryModel> category;
  const BuildCategory({super.key,required this.category});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 15,),
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.white,
                child: SvgPicture.asset(category[index].image),
              ),
              Text(category[index].name,style: TextStyle(color: Colors.white,fontSize:16,fontWeight: FontWeight.bold ),),
            ],
          );
        },
      ),
    );
  }
}
