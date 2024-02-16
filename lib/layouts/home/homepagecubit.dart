// import 'dart:ffi';
//
// import 'package:abdulaah_mansour/module.archive.dart';
// import 'package:abdulaah_mansour/module.doneTask.dart';
// import 'package:abdulaah_mansour/module.tasks.dart';
// import 'package:abdulaah_mansour/shared/cubit/states.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:sqflite/sqflite.dart';
//
//
// class AppCubit extends Cubit<AppStates>{
//
//   AppCubit(): super(AppInitialStates());
//
//   static AppCubit get(context)=>BlocProvider.of(context);
//   int currentIndex = 0;
//   List<Widget> screens = [
//     tasks(),
//     donetaskscreen(),
//     archivetaskscreen(),
//   ];
//   List<String> title = [
//     'tasks',
//     'done task',
//     'archive tasks',
//   ];
//   void changeIndex(int index){
//     currentIndex=index;
//     emit(AppChangeButtonNavBarStates());
//
//   }
//   late Database database;
//   List<Map> newTaskes=[];
//   List<Map> doneTaskes=[];
//   List<Map> archiveTaskes=[];
//   void createDatabase()  {
//     openDatabase(
//       'todo.db',
//       version: 1,
//       onCreate: (database, version) {
//         // ID INTEGER
//         // TITLE STRING
//         //DATE STRING
//         // TIME STRING
//         //SSTATUS STRING
//         print('database created');
//         database
//             .execute(
//             'CREATE TABLE tasks( id INTEGER PRIMARY KEY, title TEXT,date TEXT,time TEXT,status TEXT)')
//             .then((value) {
//           print('table created');
//         }).catchError((erorr) {
//           print('error when creat tAble ${erorr.toString()}');
//         });
//       },
//       onOpen: (database) {
//         print('database opened');
//         getDataFromDatabase(database);
//
//       },
//     ).then((value) {
//       database = value;
//       emit(AppCreateDatabaseStates());
//     });
//   }
//
//   insertDatabase({
//     required String title,
//     required String time,
//     required String date,}) async{
//     await database.transaction((txn) async {
//       txn
//           .rawInsert(
//           'INSERT INTO tasks(title,date,time,status) VALUES("$title","$date","$time","new")')
//           .then((value) {
//         print(' ${value}insert seccessfully');
//         emit(AppInsertDatabaseStates());
//         getDataFromDatabase(database);
//       }).catchError((erorr) {
//         print('error when inserting new raw${erorr.toString()}');
//       });
//     });
//   }
//
//
//   void getDataFromDatabase(database){
//     newTaskes = [];
//     doneTaskes = [];
//     archiveTaskes = [];
//
//
//     emit(AppGetDataBaseLoadingStates());
//
//     database.rawQuery('SELECT * FROM tasks').then((value) {
//
//
//
//       value.forEach((element) {
//         if(element['status'] == 'new')
//           newTaskes.add(element);
//         else if(element['status'] == 'done')
//           doneTaskes.add(element);
//         else(element['status'] == 'archive');
//         archiveTaskes.add(element);
//
//
//
//
//       });
//       emit(AppGetDatabaseStates());
//
//     });
//   }
//   bool isbottomsheetshow = false;
//   IconData fabicon = Icons.edit;
//   void changeBottomSheetState({
//     required bool isShow,
//     required IconData icon,
//   }){
//     isbottomsheetshow=isShow;
//     fabicon= icon ;
//     emit(AppChangeButtonSheetStates());
//   }
//
//   void updateDatabase(
//       {required String status,
//         required int id ,
//       })
//   {
//
//     database.rawUpdate(
//         'UPDATE tasks SET status = ? WHERE id = ? ',
//         ['$status',id]
//     ).then((value){
//       getDataFromDatabase(database);
//       emit(AppUpdateDataBaseStates());
//
//     } );
//   }
//
//   void deleteDatabase(
//       {
//         required int id ,
//       })
//   {
//
//     database.rawDelete(
//         'DELETE FROM tasks  WHERE id = ? ', [id]).then((value){
//       getDataFromDatabase(database);
//       emit(AppDeleteDataBaseStates());
//
//     } );
//   }
//
// }