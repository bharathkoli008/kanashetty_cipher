
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypt',
      home: Center(
        child: pickvars(),
      ),
    );
  }
}



class pickvars extends StatefulWidget {
  const pickvars({Key? key}) : super(key: key);

  @override
  State<pickvars> createState() => _pickvarsState();
}

class _pickvarsState extends State<pickvars> {

  var a;
  var b;
  var c;

  var alphabets = [
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
    'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
  ];

  late var selectedValue1 = alphabets[0];
  late var selectedValue2 = alphabets[1];
  late var selectedValue3 = alphabets[2];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Select 1',
                      style: GoogleFonts.nunito(

                      ),),
                  ),


                  DropdownButton2(
                    buttonDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    dropdownDecoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15)
                        )
                    ),
                    hint: Text(
                        'Select Type',
                        style: GoogleFonts.nunito(
                            fontSize: 15,
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w600
                        )
                    ),
                    items: alphabets
                        .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Text(
                            item,
                            style: GoogleFonts.nunito(
                                fontSize: 15,
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.w600
                            )
                        ),
                      ),
                    ))
                        .toList(),
                    value: selectedValue1,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue1 = newValue!;
                      });
                    },
                    dropdownMaxHeight: 250,
                    buttonHeight: 40,
                    buttonWidth: 140,
                    itemHeight: 40,
                  ),
                ],

              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Select 2',
                      style: GoogleFonts.nunito(

                      ),),
                  ),


                  DropdownButton2(
                    buttonDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    dropdownDecoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15)
                        )
                    ),
                    hint: Text(
                        'Select Type',
                        style: GoogleFonts.nunito(
                            fontSize: 15,
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w600
                        )
                    ),
                    items: alphabets
                        .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Text(
                            item,
                            style: GoogleFonts.nunito(
                                fontSize: 15,
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.w600
                            )
                        ),
                      ),
                    ))
                        .toList(),
                    value: selectedValue2,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue2 = newValue!;
                      });
                    },
                    dropdownMaxHeight: 250,
                    buttonHeight: 40,
                    buttonWidth: 140,
                    itemHeight: 40,
                  ),
                ],

              ),


            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Select 3',
                  style: GoogleFonts.nunito(

                  ),),
              ),


              DropdownButton2(
                buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15)
                ),
                dropdownDecoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15)
                    )
                ),
                hint: Text(
                    'Select Type',
                    style: GoogleFonts.nunito(
                        fontSize: 15,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w600
                    )
                ),
                items: alphabets
                    .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Text(
                        item,
                        style: GoogleFonts.nunito(
                            fontSize: 15,
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w600
                        )
                    ),
                  ),
                ))
                    .toList(),
                value: selectedValue3,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue3 = newValue!;
                  });
                },
                dropdownMaxHeight: 250,
                buttonHeight: 40,
                buttonWidth: 140,
                itemHeight: 40,
              ),
            ],

          ),


          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                textfield(
                  a: selectedValue1,
                  b: selectedValue2,
                  c: selectedValue3,
                )));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("Enter",
                  style: GoogleFonts.nunito(
                    fontSize: 18
                  ),),
                ),
              ),
            ),
          )


        ],
      )
    );
  }
}



class textfield extends StatefulWidget {
  String a;
  String b;
  String c;

  textfield({required this.a,required this.b,required this.c});

  @override
  State<textfield> createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {


  TextEditingController string = TextEditingController();

  String crypt = "";
  var finalvalue = "";
  var obscure = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 120,bottom: 100),
              child: Text("Hello Peter",
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold
              ),),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Switch(value: obscure,
                    onChanged: (value){
                  setState(() {
                    obscure = value;
                  });
                    }),

                GestureDetector(
                  onTap: (){
                    Clipboard.setData(
                      ClipboardData(text: finalvalue)
                    );
                  },
                  child: Icon(
                      Icons.copy,
                    color: Colors.black,
                  ),
                ),

                GestureDetector(
                  onTap: (){
                   if(finalvalue.isNotEmpty){
                     Share.share(
                       finalvalue,
                       subject: 'Cryptic Message',

                     );
                   }else{
                     var snackBar = SnackBar(
                     content: Text('Text is Empty'),
                     );
                     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                   }
                  },
                  child: Icon(
                    Icons.share,
                    color: Colors.black,
                  ),
                ),
                
                
                GestureDetector(
                  onTap: () async{

                    if(finalvalue.isNotEmpty){
                      final url = Uri.parse('whatsapp://send?text=${finalvalue}');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      }
                    } else{
                      var snackBar = SnackBar(
                        content: Text('Text is Empty'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: Image.network("https://toppng.com/uploads/preview/logo-whatsapp-png-blanco-whatsapp-icon-grey-11562899974qqyqc3lb7j.png",
                  height: 35,
                  width: 40,),
                )



              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 12,right: 12),
              child: Container(

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey
                    )
                  ]
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(

                    obscureText: obscure,
                    decoration: InputDecoration(
                      hintText: ' "Type Anything"',
                      border: InputBorder.none
                    ),
                    controller: string,
                    onChanged: (value){

                      crypt = value.toUpperCase();

                      print('======================${crypt.length}');


                      var x = "";

                      for(int i =0; i < crypt.length ; i++){

                        if(crypt[i] == 'A'){
                          crypt[i] == widget.a + widget.a + widget.a;
                          x += widget.a + widget.a + widget.a;
                        }
                        else if(crypt[i] == 'B'){
                          crypt[i] ==  widget.a + widget.b + widget.a;
                          x += widget.a + widget.b + widget.a;
                        }
                        else if(crypt[i] == 'C'){
                          crypt[i] ==  widget.a + widget.c + widget.a;
                          x += widget.a + widget.c + widget.a;
                        }
                        else if(crypt[i] == 'D'){
                          crypt[i] ==  widget.b + widget.a + widget.b;
                          x += widget.a + widget.a + widget.b;
                        }
                        else if(crypt[i] == 'E'){
                          crypt[i] ==  widget.b + widget.b + widget.b;
                          x += widget.a + widget.b + widget.b;
                        }
                        else if(crypt[i] == 'F'){
                          crypt[i] ==  widget.b + widget.c + widget.b;
                          x += widget.a + widget.c + widget.b;
                        }
                        else if(crypt[i] == 'G'){
                          crypt[i] ==  widget.c + widget.a + widget.c;
                          x += widget.a + widget.a + widget.c;
                        }
                        else if(crypt[i] == 'H'){
                          crypt[i] == widget.c + widget.b + widget.c;
                          x += widget.a + widget.b + widget.c;
                        }
                        else if(crypt[i] == 'I'){
                          crypt[i] == widget.c + widget.c + widget.c;
                          x += widget.a + widget.c + widget.c;
                        }
                        else if(crypt[i] == 'J'){
                          crypt[i] == 'ABA';
                          x += widget.b + widget.a + widget.a;
                        }
                        else if(crypt[i] == 'K'){
                          crypt[i] == 'ABA';
                          x += widget.b + widget.b + widget.a;
                        }
                        else if(crypt[i] == 'L'){
                          crypt[i] == 'ABA';
                          x += widget.b + widget.c + widget.a;
                        }
                        else if(crypt[i] == 'M'){
                          crypt[i] == 'ABA';
                          x += widget.b + widget.a + widget.b;
                        }
                        else if(crypt[i] == 'N'){
                          crypt[i] == 'ABA';
                          x += widget.b + widget.b + widget.b;
                        }
                        else if(crypt[i] == 'O'){
                          crypt[i] == 'ABA';
                          x += widget.b + widget.c + widget.b;
                        }
                        else if(crypt[i] == 'P'){
                          crypt[i] == 'ABA';
                          x += widget.b + widget.a + widget.c;
                        }else if(crypt[i] == 'Q'){
                          crypt[i] == 'ABA';
                          x += widget.b + widget.b + widget.c;
                        }
                        else if(crypt[i] == 'R'){
                          crypt[i] == 'ABA';
                          x += widget.b + widget.c + widget.c;
                        }else if(crypt[i] == 'S'){
                          crypt[i] == 'ABA';
                          x += widget.c + widget.a + widget.a;
                        }
                        else if(crypt[i] == 'T'){
                          crypt[i] == 'ABA';
                          x += widget.c + widget.b + widget.a;
                        }else if(crypt[i] == 'U'){
                          crypt[i] == 'ABA';
                          x += widget.c + widget.c + widget.a;
                        }else if(crypt[i] == 'V'){
                          crypt[i] == 'ABA';
                          x += widget.c + widget.a + widget.b;
                        }else if(crypt[i] == 'W'){
                          crypt[i] == 'ABA';
                          x += widget.c + widget.b + widget.b;
                        }else if(crypt[i] == 'X'){
                          crypt[i] == 'ABA';
                          x += widget.c + widget.c + widget.b;
                        }else if(crypt[i] == 'Y'){
                          crypt[i] == 'ABA';
                          x += widget.c + widget.a + widget.c;
                        }
                        else if(crypt[i] == 'Z'){
                          crypt[i] == 'ABA';
                          x += widget.c + widget.b + widget.c;
                        }
                        else{
                          crypt[i] == ' ';
                          x += widget.c + widget.c + widget.c;
                        }


                      }
                      setState(() {
                        finalvalue = x;
                      });
                    },
                  ),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(
                top: 25,right: 10,left: 10
              ),
              child: Container(
                child: Text(
                    finalvalue,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w600,
                    fontSize: 15
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
