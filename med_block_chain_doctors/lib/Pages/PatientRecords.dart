import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:med_block_chain_doctors/Pages/ViewFilePage.dart';

class PatientRecords extends StatefulWidget {
  const PatientRecords({Key? key}) : super(key: key);

  @override
  State<PatientRecords> createState() => _PatientRecordsState();
}

class _PatientRecordsState extends State<PatientRecords> {
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
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index){
                        return Material(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(50, 20, 50, 20),
                            child: ListTile(
                              tileColor: Color.fromRGBO(188, 14, 72, 1.0),
                              shape: RoundedRectangleBorder(
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
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1.0),
                                                fontSize: 20
                                            ),),
                                          Text(
                                            "165",
                                            style: TextStyle(
                                                fontFamily: "Monda",
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1.0),
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
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1.0),
                                                fontSize: 20
                                            ),),
                                          Text("Thomas Alot",
                                            style: TextStyle(
                                                fontFamily: "Monda",
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1.0),
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
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1.0),
                                                fontSize: 20
                                            ),),
                                          Text("15 March 2021",style: TextStyle(
                                              fontFamily: "Monda",
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1.0),
                                              fontSize: 20
                                          ),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("ICD10:",style: TextStyle(
                                              fontFamily: "Monda",
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1.0),
                                              fontSize: 20
                                          ),),
                                          Text("J18.0",style: TextStyle(
                                              fontFamily: "Monda",
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1.0),
                                              fontSize: 20
                                          ),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Treatment code: ",style: TextStyle(
                                              fontFamily: "Monda",
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1.0),
                                              fontSize: 20
                                          ),),
                                          Text("72605",style: TextStyle(
                                              fontFamily: "Monda",
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1.0),
                                              fontSize: 20
                                          ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                  ElevatedButton(
                                    onPressed: (){},
                                    child: Text(
                                      "View",
                                      style: TextStyle(
                                          fontFamily: "Monda",
                                          color: Color.fromRGBO(
                                              255, 255, 255, 1.0),
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
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ViewFilePage()));
                  },
                  child: Text(
                    "Add New Medical Record",
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
