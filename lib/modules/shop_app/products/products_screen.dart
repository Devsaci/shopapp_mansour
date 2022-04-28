import 'package:app_theme_mansour/models/shop_app/home_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../layout/shop_app/cubit/cubit.dart';
import '../../../layout/shop_app/cubit/states.dart';
import '../../../shared/styles/colors.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit, ShopStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, Object? state) {
        return ConditionalBuilder(
          condition: ShopCubit.get(context).homeModel != null,
          builder: (context) =>
              builderWidget(ShopCubit.get(context).homeModel!),
          fallback: (context) =>
              const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }

  Widget builderWidget(HomeModel model) => SingleChildScrollView(
    physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              items: model.data?.banners
                  .map(
                    (e) => Image(
                      image: NetworkImage('${e.image}'),
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                height: 200.0,
                initialPage: 0,
                viewportFraction: 1.0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(seconds: 1),
                autoPlayCurve: Curves.fastOutSlowIn,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Categories",
                    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    color: Colors.black,
                    height: 150,
                    child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => buildCategoryItem(),
                      separatorBuilder: (context, index) => const SizedBox(width: 5.0),
                      itemCount: 10,
                    ),
                  ),
                  const SizedBox(height: 20.0),// List  Item Categories
                  const Text("New Products",
                      style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w800)),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              color: Colors.black12,
              child: GridView.count(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 5.0,
                childAspectRatio: 1 / 1.85,
                children: List.generate(
                  model.data!.products.length,
                  (index) => buildGridProduct(model.data!.products[index]),
                ),
              ),
            ),
          ],
        ),
      );

  Widget buildCategoryItem() => Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          const Image(
            image: NetworkImage(
                'https://student.valuxapps.com/storage/uploads/banners/1619472351ITAM5.3bb51c97376281.5ec3ca8c1e8c5.jpg'),
            height: 150.0,
            width: 150.0,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.7),
            width: 150,
            child: const Text(
              "Electronics",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      );

  Widget buildGridProduct(ProductModel model) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              Image(
                image: NetworkImage(model.image!),
                width: double.infinity,
                // fit: BoxFit.contain,
                height: 200,
                // height: 180.0,
              ),
              if (model.discount != 0)
                Container(
                  color: Colors.red,
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: const Text(
                    "DISCOuNT",
                    style: TextStyle(fontSize: 12.0, color: Colors.white),
                  ),
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Text(
                  model.name!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14.0,
                    height: 1.3,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '${model.price.round()}',
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: defaultColor,
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    if (model.discount != 0)
                      Text(
                        '${model.oldPrice.round()}',
                        style: const TextStyle(
                          fontSize: 10.0,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    const Spacer(),
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        size: 19.0,
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
