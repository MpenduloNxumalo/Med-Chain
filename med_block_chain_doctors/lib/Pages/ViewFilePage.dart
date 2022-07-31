import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'package:med_block_chain_doctors/Pages/PatientRecords.dart';

class ViewFilePage extends StatefulWidget {
  const ViewFilePage({Key? key}) : super(key: key);

  @override
  State<ViewFilePage> createState() => _ViewFilePageState();
}




class _ViewFilePageState extends State<ViewFilePage> {
  TextEditingController fullName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController idNumber = TextEditingController();
  TextEditingController diagnosis = TextEditingController();
  TextEditingController clinicalDetails = TextEditingController();
  TextEditingController clinicalSummary = TextEditingController();
  TextEditingController date = TextEditingController();



  @override
  dispose(){
    fullName.dispose();
    phoneNumber.dispose();
    idNumber.dispose();
    diagnosis.dispose();
    clinicalDetails.dispose();
    clinicalSummary.dispose();
    date.dispose();
    super.dispose();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(

            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0,10,0,0),
                    child: SvgPicture.asset(
                      "assets/caduceus-medical-symbol.svg",
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                Text(
                    "Patient Records",
                    style:TextStyle(
                        fontSize: 30,
                        fontFamily: "Monda",
                        color: Color.fromRGBO(188, 14, 72, 1.0)
                    )
                ),
                SizedBox(
                  height: 50,
                ),
                Card(
                  color: Color.fromRGBO(138, 158, 167, 1.0),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    width: double.infinity,
                    height: 500,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                  "Full Name:",style:TextStyle(
                                  fontSize: 30,
                                  fontFamily: "Monda",
                                  color: Color.fromRGBO(255, 255, 255, 1.0)
                              )),
                              Expanded(
                                child: Container(
                                  child: TextField(
                                    controller: fullName,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,

                                      border: OutlineInputBorder(

                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                      )
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                  "Phone Number:",style:TextStyle(
                                  fontSize: 30,
                                  fontFamily: "Monda",
                                  color: Color.fromRGBO(255, 255, 255, 1.0)
                              )),
                              Expanded(
                                child: Container(
                                  child: TextField(
                                    controller: phoneNumber,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,

                                      border: OutlineInputBorder(

                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                      )
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                  "ID Number:",style:TextStyle(
                                  fontSize: 30,
                                  fontFamily: "Monda",
                                  color: Color.fromRGBO(255, 255, 255, 1.0)
                              )),
                              Expanded(
                                child: Container(
                                  child: TextField(
                                    controller: idNumber,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,

                                      border: OutlineInputBorder(

                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                      )
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                  "Diagnosis:",style:TextStyle(
                                  fontSize: 30,
                                  fontFamily: "Monda",
                                  color: Color.fromRGBO(255, 255, 255, 1.0)
                              )),
                              Expanded(
                                child: Container(
                                  child: TextField(
                                    controller: diagnosis,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,

                                      border: OutlineInputBorder(

                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                      )
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                  "Clinical details:",style:TextStyle(
                                  fontSize: 30,
                                  fontFamily: "Monda",
                                  color: Color.fromRGBO(255, 255, 255, 1.0)
                              )),
                              Expanded(
                                child: Container(
                                  child: TextField(
                                    controller: clinicalDetails,
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,

                                        border: OutlineInputBorder(

                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                        )
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                  "Clinical Summary:",style:TextStyle(
                                  fontSize: 30,
                                  fontFamily: "Monda",
                                  color: Color.fromRGBO(255, 255, 255, 1.0)
                              )),
                              Expanded(
                                child: Container(
                                  child: TextField(
                                    controller: clinicalSummary,
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,

                                        border: OutlineInputBorder(

                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                        )
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                  "Date :",style:TextStyle(
                                  fontSize: 30,
                                  fontFamily: "Monda",
                                  color: Color.fromRGBO(255, 255, 255, 1.0)
                              )),
                              Expanded(
                                child: Container(
                                  child: TextField(
                                    controller: date,
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,

                                        border: OutlineInputBorder(

                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                        )
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              String info = fullName.text + "#"+phoneNumber.text + "#"+idNumber.text + "#"+diagnosis.text + "#"+clinicalDetails.text + "#"+clinicalSummary.text + "#"+date.text + "#";

                              var url = Uri.parse('http://127.0.0.1:8000/mine_block');
                              var response = await http.post(
                                  url,
                                  body: jsonEncode({"_id":"0","Index": "1", "Timestamp": "1","Data":info,"Nonce":"1","Previous_hash":1}),
                                headers: <String, String>{
                                    'Content-Type':'application/json; charset=UTF-8',
                                }
                              );
                              print('Response status: ${response.statusCode}');
                              print('Response body: ${response.body}');
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PatientRecords()));
                              //print(await http.read(Uri.parse('https://example.com/foobar.txt')));
                            },
                            child: Text(
                              "Finish",
                              style: TextStyle(
                                  fontFamily: "Monda",
                                  fontWeight: FontWeight.w900,
                                  color: Color.fromRGBO(188, 14, 72, 1.0),
                                  fontSize: 20
                              ),
                            ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Color.fromRGBO(
                                    217, 217, 217, 1.0)),
                                minimumSize: MaterialStateProperty.all(Size(400, 60)),



                            ),
                          )

                        ],
                      ),
                    ),
                  )
                )


              ],
            )
        ),
      ),
    );
  }
}
