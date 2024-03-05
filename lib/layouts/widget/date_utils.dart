import 'package:intl/intl.dart';

class MyDateUtalis{
  static  String formatTaskDate(DateTime dateTime){
    DateFormat formatter =DateFormat('dd/MM/yyyy');
    return formatter.format(dateTime);
  }

  static DateTime extractDateOnly(DateTime dateTime){

return DateTime(dateTime.year,
dateTime.month,
dateTime.day
);
  }

}
//extention function
// new way or aanother
extension DateTimeExtension on DateTime{
  extractDateonly(){
   // consider you  inside date time scope
    return DateTime(
      this.month,this.year,this.day
    );
  }
}