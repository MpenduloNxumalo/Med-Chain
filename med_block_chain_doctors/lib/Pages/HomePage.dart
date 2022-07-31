import 'dart:convert';
import 'dart:js';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:med_block_chain_doctors/Pages/PatientRecords.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'View.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                "Accessible Files",
                style:TextStyle(
                  fontSize: 30,
                  fontFamily: "Monda",
                  color: Color.fromRGBO(188, 14, 72, 1.0)
                )
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(100, 0, 100, 0),
                child: Row(
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30,0,30,0),
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {  },
                              icon: Icon(Icons.search),
                            ),
                            hintText: "Search",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(188, 14, 72, 1.0)
                              ),
                             borderRadius: BorderRadius.all(Radius.circular(20)),
                            )
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      onPressed: (){},
                      child: Text(
                          "Filter Search",
                        style: TextStyle(
                          fontFamily: "Monda",
                          fontSize: 20
                        ),
                      ),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          )
                        ),
                        minimumSize: MaterialStateProperty.all(Size(200, 50)),
                        backgroundColor: MaterialStateProperty.all(Color.fromRGBO(188, 14, 72, 1.0))
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index){
                      return Material(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(50, 20, 50, 20),
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Color.fromRGBO(188, 14, 72, 1.0)
                                ),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Patient ID:",
                                          style: TextStyle(
                                              fontFamily: "Monda",
                                              color: Color.fromRGBO(188, 14, 72, 1.0),
                                              fontSize: 20
                                          ),),
                                        Text(
                                          "165",
                                          style: TextStyle(
                                              fontFamily: "Monda",
                                              color: Color.fromRGBO(188, 14, 72, 1.0),
                                              fontSize: 20
                                          ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("Patient Name:",
                                          style: TextStyle(
                                              fontFamily: "Monda",
                                              color: Color.fromRGBO(188, 14, 72, 1.0),
                                              fontSize: 20
                                          ),),
                                        Text("Thomas Alot",
                                          style: TextStyle(
                                              fontFamily: "Monda",
                                              color: Color.fromRGBO(188, 14, 72, 1.0),
                                              fontSize: 20
                                          ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Consultation Date:",
                                          style: TextStyle(
                                              fontFamily: "Monda",
                                              color: Color.fromRGBO(188, 14, 72, 1.0),
                                              fontSize: 20
                                          ),),
                                        Text("15 March 2021",style: TextStyle(
                                            fontFamily: "Monda",
                                            color: Color.fromRGBO(188, 14, 72, 1.0),
                                            fontSize: 20
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("ICD10:",style: TextStyle(
                                            fontFamily: "Monda",
                                            color: Color.fromRGBO(188, 14, 72, 1.0),
                                            fontSize: 20
                                        ),),
                                        Text("J18.0",style: TextStyle(
                                            fontFamily: "Monda",
                                            color: Color.fromRGBO(188, 14, 72, 1.0),
                                            fontSize: 20
                                        ),),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Treatment code: ",style: TextStyle(
                                            fontFamily: "Monda",
                                            color: Color.fromRGBO(188, 14, 72, 1.0),
                                            fontSize: 20
                                        ),),
                                        Text("72605",style: TextStyle(
                                            fontFamily: "Monda",
                                            color: Color.fromRGBO(188, 14, 72, 1.0),
                                            fontSize: 20
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                                ElevatedButton(
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => View()));
                                  },
                                  child: Text(
                                    "View",
                                    style: TextStyle(
                                        fontFamily: "Monda",
                                        color: Color.fromRGBO(188, 14, 72, 1.0),
                                        fontSize: 20
                                    ),
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Color.fromRGBO(
                                          138, 158, 167, 1.0)),
                                      minimumSize: MaterialStateProperty.all(Size(160, 40))

                                  ),
                                )
                              ],
                            ),

                          ),
                        ),
                      );
                    }),
              ),
              ElevatedButton(
                onPressed: () => showSimpleDialog(context),
                child: Text(
                  "Access Patient Records",
                  style: TextStyle(
                      fontFamily: "Monda",
                      fontWeight: FontWeight.w900,
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                      fontSize: 20
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color.fromRGBO(
                        138, 158, 167, 1.0)),
                    minimumSize: MaterialStateProperty.all(Size(400, 60))

                ),
              )

            ],
          )
        ),
      ),
    );
  }
}

void showSimpleDialog(BuildContext context){

  var license_URL = "https://cdn.edhub.ama-assn.org/ama/content_public/multimedia/imi200012audioa_thumb.jpeg?Expires=2147483647&Signature=DdLijKQL14ku87eLF3hS8ilg4~q12MmmKvRQq798cyilca0Oq2rP2q1bBJVeZrHgErKn6hGUI1vK5Y7JYZdpI48TLtveKo2q1I2z-bs6cF6C4riYh-~4pDFAQw72bmuoNjqynHOUJDULKrON8pOO5iNv-6GkCLatPJzR5Sf5YESCgWyrzFfy2tU2G3pPB950Op3CKZ0pInNTRfNA4Hm5aEjFFUvH1aRenYza75mw7EZiRDuLUDDvZANXg0HB-WKXXLtR5z6nIhGCjZqIroRLBXjAXJzO9~aKTGudTvSN8sbK~5a3v~dcF4WrFsy6daiMG3u2fW-p4q2piFLMRkYFww__&Key-Pair-Id=APKAIE5G5CRDK6RD3PGA";
  var board_URL = "https://els-jbs-prod-cdn.jbs.elsevierhealth.com/cms/attachment/374d77b3-6311-43d5-b822-f48b85ec4997/fx1_lrg.jpg";
  var hashCode = Random().nextDouble();
  var bytes = utf8.encode(hashCode.toString()); // data being hashed
  var digest = sha1.convert(bytes);

  var DoctorDetails = {
    "hash": digest,
    "name":"Dr Yako",
    "license_num":"2194412",
    "practice_num":"2376",
    "location":"3814-8 Ralerata St, Mohlakeng, Randfontein, 1759",
    "license":license_URL,
    "board":board_URL
  };

  showDialog(
      context: context,
      builder: (ctx) =>SimpleDialog(
        children: [
          Container(
            width: 600,
            height: 600,
            child: Column(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PatientRecords()));
                  },
                  child: QrImage(
                    data: DoctorDetails.toString(),
                    version: QrVersions.auto ,
                    size: 250,
                    foregroundColor: Color.fromRGBO(188, 14, 72, 1.0),
                  ),
                ),

                Container(
                    width: 500,
                    child: Text(
                        "Let your patient scan your QR code to give you access to their medical records",
                        textAlign: TextAlign.center,
                        style:TextStyle(
                            fontSize: 30,
                            fontFamily: "Monda",
                            color: Color.fromRGBO(188, 14, 72, 1.0),

                    )
                ),),

                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text(
                    "Close",
                    style: TextStyle(
                        fontFamily: "Monda",
                        fontWeight: FontWeight.w900,
                        color: Color.fromRGBO(255, 255, 255, 1.0),
                        fontSize: 20
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color.fromRGBO(
                          188, 14, 72, 1.0)),
                      minimumSize: MaterialStateProperty.all(Size(400, 60))

                  ),
                )

              ],
            ),
          )
        ],
    
  ));
  
}
