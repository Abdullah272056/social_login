
import 'package:flutter/material.dart';



class ChattingPageScreen4 extends StatefulWidget {
  String userName;
  String email;
  String photo;
  String userId;


  ChattingPageScreen4({required this.userName, required this.email, required this.photo, required this.userId});

  @override
  State<ChattingPageScreen4> createState() => _ChatPageScreenState(this.userName, this.email, this.photo, this.userId);
}

class _ChatPageScreenState extends State<ChattingPageScreen4> {
  String userName;
  String email;
  String photo;
  String userId;


  _ChatPageScreenState(this.userName, this.email, this.photo, this.userId);

  @override
  @mustCallSuper
  void initState() {
    super.initState();



  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    //var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.orange,

      body:Column(
        children: [

          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child:FadeInImage.assetNetwork(
                          height: 150,
                          width: 150,
                          fit: BoxFit.fill,
                          placeholder: 'assets/images/images_avater.png',
                          image:photo,
                          imageErrorBuilder: (context, url, error) =>
                              Image.asset(
                                'assets/images/images_avater.png',
                                fit: BoxFit.fill,
                              ),
                        ),
                      )),

                  SizedBox(height: 8,),

                  Text(
                      "User Name= "+userName,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize:18
                    ),
                  ),

                  SizedBox(height: 5,),

                  Text(
                    "Email= "+email,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize:16
                    ),
                  ),

                  SizedBox(height: 5,),

                  Text(
                    "User Id= "+ userId,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize:16
                    ),
                  ),

                ],
              ),
            ),
          ),


        ],
      ),


    );
  }



}
