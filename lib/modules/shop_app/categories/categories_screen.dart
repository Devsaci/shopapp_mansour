import 'package:app_theme_mansour/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context,index) => buildCatItem(),
      separatorBuilder: (context,index) => myDivider(),
      itemCount: 10,
    );
  }

  Widget buildCatItem() => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: const [
            Image(
              image: NetworkImage(
                'https://student.valuxapps.com/storage/uploads/banners/1619472351ITAM5.3bb51c97376281.5ec3ca8c1e8c5.jpg',
              ),
              width: 120.0,
              height: 120.0,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              'model.name',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
            ),
          ],
        ),
      );
}
