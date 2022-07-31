import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:med_block_chain_doctors/Pages/HomePage.dart';

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
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
                                    "Full Name: ",style:TextStyle(
                                    fontSize: 30,
                                    fontFamily: "Monda",
                                    color: Color.fromRGBO(255, 255, 255, 1.0)
                                )),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                    "Thomas Alot",style:TextStyle(
                                    fontSize: 25,
                                    fontFamily: "Monda",
                                    color: Color.fromRGBO(255, 255, 255, 1.0)
                                ))

                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                    "Phone Number: ",style:TextStyle(
                                    fontSize: 30 ,
                                    fontFamily: "Monda",
                                    color: Color.fromRGBO(255, 255, 255, 1.0)
                                )),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                    "0761146465",style:TextStyle(
                                    fontSize: 25,
                                    fontFamily: "Monda",
                                    color: Color.fromRGBO(255, 255, 255, 1.0)
                                ))
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
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                    "0605161645546",style:TextStyle(
                                    fontSize: 25,
                                    fontFamily: "Monda",
                                    color: Color.fromRGBO(255, 255, 255, 1.0)
                                ))
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
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",style:TextStyle(
                                    fontSize: 25,
                                    fontFamily: "Monda",
                                    color: Color.fromRGBO(255, 255, 255, 1.0)
                                ))
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
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",style:TextStyle(
                                    fontSize: 25,
                                    fontFamily: "Monda",
                                    color: Color.fromRGBO(255, 255, 255, 1.0)
                                ))
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
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",style:TextStyle(
                                    fontSize: 25,
                                    fontFamily: "Monda",
                                    color: Color.fromRGBO(255, 255, 255, 1.0)
                                ))
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
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                    "15 March 2022",style:TextStyle(
                                    fontSize: 25,
                                    fontFamily: "Monda",
                                    color: Color.fromRGBO(255, 255, 255, 1.0)
                                ))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                              },
                              child: Text(
                                "Close",
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
