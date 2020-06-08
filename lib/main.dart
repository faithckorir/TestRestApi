 import 'package:flutter/material.dart';
import 'package:flutterrestapiapp/services/notes_service.dart';
import 'package:flutterrestapiapp/views/notes_list.dart';
import 'package:get_it/get_it.dart';

 void setupLocator() {
   GetIt.I.registerLazySingleton(() => NotesService());
 }

 void main() {
   setupLocator();
   runApp(App());
 }

 class App extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'Flutter Demo',
       theme: ThemeData(
         primarySwatch: Colors.blue,
       ),
       home: NoteList(),
     );
   }
 }
