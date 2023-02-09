import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:torch_controller/torch_controller.dart';

class homescreen extends StatefulWidget {  @override
  State<StatefulWidget> createState() {
    return homescreenstate();
  }
}

class homescreenstate extends State<homescreen>{

   var active = false;
   var controller = TorchController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text('TORCH' ,
        style: GoogleFonts.itim(
          textStyle: TextStyle(
              fontSize: 35 ,
              fontWeight: FontWeight.bold ,
              color: Colors.white)
        ),),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.all(8) ,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          active ? 'assets/logolight.png' :
                              'assets/logodark.png',
                          width: 250,
                          height: 250,
                          scale: 0.2,
                        )
                  ],
                ),
              ),)
          ),
          CircleAvatar(
            minRadius: 30,
              maxRadius: 40,
            child: Transform.scale(
              scale: 1.5,
              child: IconButton(
                  onPressed: (){
                    controller.toggle();
                    active = !active;
                    setState(() {

                    });
                  },
                  icon: Icon(Icons.power_settings_new_rounded)
              ),
            ),
          ),
          SizedBox(height: 80,)
        ],
      ),
    );
  }
}
