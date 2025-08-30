import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../model/category_model.dart';
import 'build_category.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isExpanded;
  final double collapsed;
  final double expanded;
  final VoidCallback function;
  const CustomAppBar({super.key,required this.isExpanded,required this.collapsed,required this.expanded,required this.function});

  @override
  Size get preferredSize => Size.fromHeight(isExpanded ? expanded : collapsed);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: isExpanded ? expanded : collapsed,
      decoration: const BoxDecoration(
        color: Color(0xFF4A69FE),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Good day for shopping',
                style: TextStyle(
                  color: Color(0xFF9C9C9C),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  const Text(
                    'Taimoor Sikander',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: function,
                    icon: AnimatedRotation(
                      turns: isExpanded ? 0.5 : 0,
                      duration: const Duration(milliseconds: 300),
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              Expanded(
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 25),
                      SearchBar(
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        leading: Icon(Icons.search, size: 30),
                        hintText: 'Search in Store',
                        hintStyle: WidgetStateProperty.all(
                          const TextStyle(color: Color(0xFF9C9C9C), fontSize: 20),
                        ),
                        textStyle: WidgetStateProperty.all(
                          const TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        elevation: WidgetStatePropertyAll(0),
                      ),
                      SizedBox(height: 25),
                      Text(
                        'Popular Categories',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),

                      BuildCategory(category: category,)

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
