import 'package:flutter/material.dart';
import 'package:quanlydatmon/main.dart';

class form extends StatefulWidget {
  const form({super.key});

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  bool isVaild = false;
  bool isHidden=true;
  final _formkey=GlobalKey<FormState>();    

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Column(  
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),

                child: Form(
                  key: _formkey,
                  child: Column(
                    
                    children: [
                      TextFormField(

                        onChanged: (value) {
                          if(value!.length >8){
                            setState(() {
                              isVaild =true;
                            });
                          }
                          else{
                            setState(() {
                              isVaild=false;
                            });
                          }
                        },
                        
                        initialValue: '',
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          filled: true,
                          label: const Text('UserName'),
                          hint: const Text('Nhap UserName'),
                          prefixIcon: const Icon(Icons.supervisor_account),
                          suffixIcon: Icon(Icons.check,color:isVaild==true?Colors.green :Colors.red,),
                        ),
                      ),
                  
                      SizedBox(height: 20,),
                  
                      TextFormField(
                        maxLength: 10,     
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: isHidden, 
                        autovalidateMode: AutovalidateMode.always,
                  
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                  
                          label: Text('PassWord'),
                          hint: Text('Nhap PassWord'),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: isHidden? GestureDetector( onTap: () {
                            setState(() {
                              isHidden=false;
                            });
                          }, child: Icon(Icons.visibility)):  GestureDetector(onTap:() {
                            setState(() {
                              isHidden=true;
                            });
                          },child: Icon(Icons.visibility_off))
                        ),
                      ),
                  
                  
                      ElevatedButton(onPressed:() {
                        // if(_formkey.currentState!.validate()){
                        //     print('hop le');
                        // }
                          Navigator.pushNamed(context, AppPaths.center.path);
                        
                      }, child: Text('Dang Nhap')),
                  
                  ],


                  ), 
                ),
              ),
            ],
          ),
        ),
       ),
    );
  }
}