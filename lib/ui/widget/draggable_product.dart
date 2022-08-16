import 'package:e_learning_uji/core/models/products_model.dart';
import 'package:e_learning_uji/data/data%20_new.dart';
import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

import '../../core/constans/api.dart';

class DraggableProduct extends StatelessWidget {
  final ProductModel product;

  const DraggableProduct({
    Key? key,
    required this.product,
  }) : super(key: key);

  static double size = 100;

  @override
  Widget build(BuildContext context) => Draggable<ProductModel>(
        data: product,
        feedback: buildImage(),
        child: buildImage(),
        childWhenDragging: buildImage(),
      );

  Widget buildImage() => SizedBox(
        height: size,
        width: size,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network(
            '${BaseUrl().rg + BaseUrl().imagerg}/${product.gambar}',
            fit: BoxFit.fill,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return SkeletonAnimation(
                child: Container(
                  height: size,
                  width: size,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade300,
                  ),
                ),
              );
            },
          ),
        ),
      );
}
