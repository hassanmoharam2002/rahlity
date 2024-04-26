import 'package:flutter/material.dart';

import '../../component/personal informa/personalinformation.dart';

class AccountSetting extends StatelessWidget {
  const AccountSetting({super.key});
  static const String rountName = 'Slider_Screen' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 10,
          leading: IconButton( onPressed: ()=>Navigator.of(context).pop(), icon: Icon(Icons.arrow_back_ios), ),
          title: const Text('Account Settings',
            style: TextStyle(
              fontSize: 25 ,
              fontWeight: FontWeight.bold ,
              color: Colors.black ,

            ),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            ListTile(

              leading:  Icon(Icons.person),
              title:  Text('Personal Information',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold ,),
              ),
              trailing:  Icon(Icons.arrow_forward_ios, size: 15 ,),
              subtitle:  Text('Update your data and know how it is used',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black45 ,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PersonalInformation()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.details),
              title: const Text('Details',
                style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold ,),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 15 ,),
              subtitle: const Text('Choose the settings you prefer',
                style: TextStyle(
                  fontSize:12  ,
                  color: Colors.black45 ,
                ),
              ),

              onTap: () {
                // Navigate to details page
              },
            ),
            ListTile(
              leading: const Icon(Icons.security),
              title: const Text('Security' ,
                style: TextStyle(
                  fontWeight: FontWeight.bold ,
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 15 ,),
              subtitle: const Text('Change your security settings, set up a security verification process, or delete your account',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black45 ,
                ),
              ),

              onTap: () {
                // Navigate to security page
              },
            ),
            ListTile(
              leading: const Icon(Icons.payments),
              trailing: const Icon(Icons.arrow_forward_ios, size: 15 ,),
              title: const Text('Payment Information',
                style: TextStyle(
                  fontWeight: FontWeight.bold ,
                  fontSize: 20,
                ),
              ),
              subtitle:const Text('Add or remove payment methods securely to facilitate the payment process',
                style: TextStyle(
                  fontSize: 12 ,
                  color: Colors.black45 ,
                ),
              ) ,
              onTap: () {
                // Navigate to payment information page
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications_active),
              title: const Text('Email notifications',

                style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold ,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 15 ,),
              subtitle: const Text('Determine the things you want to receive notifications about and stop notifications that do not interest you',
                style: TextStyle(
                  fontSize:  12 ,
                  color: Colors.black45 ,

                ),
              ),
              onTap: () {
                // Navigate to notifications page
              },
            ),
            ListTile(
              leading: const Icon(Icons.supervised_user_circle_outlined),
              title: const Text('Other travelers',
                style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold ,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 15 ,),
              subtitle:const Text('Add or edit information about the people you are traveling with',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black45 ,

                ),
              ) ,
              onTap: (){

              },


            ),
          ],
        ),
    );
  }
}
