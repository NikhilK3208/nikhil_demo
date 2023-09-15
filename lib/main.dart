
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("Validation Data")
        ),
        body: NewForm(),

      ),
    );
  }
}

class NewForm extends StatefulWidget {



  @override
  State<NewForm> createState() => NewFormState();


}

class NewFormState extends State<NewForm> {


  final  formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Form(
        key: formKey,
        child: Column(
          children: [
            Text("SignUp Page"),
            Padding(padding: EdgeInsets.all(30),
              child: TextFormField(
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Please Enter value';
                  }
                  return null;
                },
              ),
            ),
            ElevatedButton(onPressed: (){
              if(formKey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Processing Data")));

              }
            }, child: Text("OK"))
          ],
        )


    );
  }

}





