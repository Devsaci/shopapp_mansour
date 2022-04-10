
import '../../modules/shop_app/login/shop_login_screen.dart';
import '../network/local/cache_helper.dart';
import 'components.dart';

void signOut(context){
  CacheHelper.removeData(
    key: 'token',
  ).then((value) {
    if (value) {
      navigateAndFinish(context, ShopLoginScreen());
    }
  });
}

void printFullText(String text)
{
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}








// POST
// UPDATE
// DELETE

// GET

// base url : https://newsapi.org/
// method (url) : v2/top-headlines?
// queries : country=eg&category=business&apiKey=ea0f2b208b944b08ab554dc5e9f5505f
// https://newsapi.org/v2/everything?q=tesla&apiKey=ea0f2b208b944b08ab554dc5e9f5505f


//https://www.getpostman.com/collections/94db931dc503afd508a5 first option
//https://www.getpostman.com/collections/3223d639447a8524e38f second option
// {
// "status": true,
// "message": "تم تسجيل الدخول بنجاح",
// "data": {
// "id": 12820,
// "name": "saci1 zakaria",
// "email": "saci1@gmail.com",
// "phone": "111112",
// "image": "https://student.valuxapps.com/storage/assets/defaults/user.jpg",
// "points": 0,
// "credit": 0,
// "token": "PZ4aAGOvROPiCbGZ7dYRmXSR0GfmTOviIB1IKzsyjaal3mFKFaZE7gHob4LcOpoIobxpp5"
// }
// }
//
// {
// "status": true,
// "message": "تم تسجيل الدخول بنجاح",
// "data": {
// "id": 12820,
// "name": "saci1 zakaria",
// "email": "saci1@gmail.com",
// "phone": "111112",
// "image": "https://student.valuxapps.com/storage/assets/defaults/user.jpg",
// "points": 0,
// "credit": 0,
// "token": "8aU6GtBrzqRXkt6PcaSWHy0AxDvyLcB9SfLBlEYvLjJXmoR2swiBlGAhf7NTGQG01bp4ks"
// }
// }
//
// {
// "status": true,
// "message": "تم تسجيل الدخول بنجاح",
// "data": {
// "id": 13012,
// "name": "abdullah",
// "email": "abdullah.ali@gmail.com",
// "phone": "2514469853250",
// "image": "https://student.valuxapps.com/storage/assets/defaults/user.jpg",
// "points": 0,
// "credit": 0,
// "token": "NXiz5Kej0jd3ex34ycKQXp7ugQjo7F1LcPtobTw5fL9FOqifhdq449LVMaAiOjGH0CIAPp"
// }
// }