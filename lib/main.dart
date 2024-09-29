import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  GlobalKey<FormState> field = GlobalKey<FormState>();
  GlobalKey<FormState>_field = GlobalKey<FormState>();
  void _validator(){
    if(field.currentState!.validate()){
      print("form is valid");
    }else{
      print("form isnot valid");
    }
  }
  void _verifta3nam(){
    if(_field.currentState!.validate()){
      print('ezab');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.blue,
          child: ListView(
            children: [
              ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),

            ],
          ),
        ),
        appBar: AppBar(
          leading: Builder(builder:(context){
            return IconButton(
              icon:const Icon(Icons.account_balance),onPressed: (){
              Scaffold.of(context).openDrawer();
            }, );

          }),
          shadowColor: Colors.grey,
          title: Text('Home',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,),),
          backgroundColor: Colors.red,
          centerTitle: true,
          elevation: 20,
          actions: [
            Icon(Icons.next_plan,color: Colors.white,)
          ],

        ),


        body: Container(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Form(
                          key: field,
                          child: TextFormField(
                            validator: (value) {
                              if(value!.isEmpty){
                                return 'please correct it max 8';
                              }
                              return null;
                            },
                          )
                      ),
                    ),
                    MaterialButton(onPressed: _validator,
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('data'),)
                  ],
                ),
              ),
              Container(
                child:Form(
                  key: _field,
                  child:TextFormField(
                  validator: (value) {
                    if(value!.length<7){
                      return 'ezibb zab zebi';
                    }
                    return null ;
                  },
                ),
                ),
              ),
              MaterialButton(onPressed: _verifta3nam,
              child: Text('Nam'),)
            ],
          )
        ),
      ),
    );
  }
}
