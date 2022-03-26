import 'package:flutter/material.dart'; 
 
class ProfilePage extends StatelessWidget { 
  Widget textfield({@required hintText}) { 
    return Material( 
      elevation: 4, 
      shadowColor: Color.fromARGB(255, 57, 136, 135), 
      shape: RoundedRectangleBorder( 
        borderRadius: BorderRadius.circular(10), 
      ), 
      child: TextField( 
        decoration: InputDecoration( 
            hintText: hintText, 
            hintStyle: TextStyle( 
              letterSpacing: 2, 
              color: Colors.black, 
              fontWeight: FontWeight.bold, 
            ), 
            fillColor: Colors.white30, 
            filled: true, 
            border: OutlineInputBorder( 
                borderRadius: BorderRadius.circular(10.0), 
                borderSide: BorderSide.none)), 
      ), 
    ); 
  } 
 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      body: Stack( 
        alignment: Alignment.center, 
        children: [ 
          Column( 
            mainAxisAlignment: MainAxisAlignment.end, 
            children: [ 
              Container( 
                height: 350, 
                width: double.infinity, 
                margin: EdgeInsets.symmetric(horizontal: 10), 
                child: Column( 
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                  children: [ 
                    textfield( 
                      hintText: 'Nama : Fuji Indah Rahayu', 
                    ), 
                    textfield( 
                      hintText: 'Email : fujindhr@gmail.com', 
                    ),
                    textfield( 
                      hintText: 'Alamat : Bandung', 
                    ), 
                    textfield( 
                      hintText: 'No Hp : 089675462032', 
                    ), 
                  ], 
                ), 
              ) 
            ], 
          ), 
          CustomPaint( 
            child: Container( 
              width: MediaQuery.of(context).size.width, 
              height: MediaQuery.of(context).size.height, 
            ), 
            painter: HeaderCurvedContainer(), 
          ), 
          Column( 
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [ 
              Padding( 
                padding: EdgeInsets.all(40), 
                // child: Text( 
                //   "Profile", 
                //   style: TextStyle( 
                //     fontSize: 35, 
                //     letterSpacing: 1.5, 
                //     color: Colors.white, 
                //     fontWeight: FontWeight.w600, 
                //   ), 
                // ), 
              ), 
              Container( 
                padding: EdgeInsets.all(9.0), 
                width: MediaQuery.of(context).size.width / 2, 
                height: MediaQuery.of(context).size.width / 2, 
                decoration: BoxDecoration( 
                  border: Border.all(color: Color.fromARGB(255, 57, 136, 135), width: 7), 
                  shape: BoxShape.circle, 
                  color: Colors.white, 
                  image: DecorationImage( 
                    fit: BoxFit.cover, 
                    image: AssetImage('assets/images/olahraga.png'), 
                  ), 
                ), 
              ), 
            ], 
          ), 
          // Padding( 
          //   padding: EdgeInsets.only(bottom: 270, left: 184), 
          //   child: CircleAvatar( 
          //     backgroundColor: Colors.black54, 
          //     child: IconButton( 
          //       icon: Icon( 
          //         Icons.edit, 
          //         color: Colors.white, 
          //       ), 
          //       onPressed: () {}, 
          //     ), 
          //   ), 
          // ) 
        ], 
      ), 
    ); 
  } 
} 
 
class HeaderCurvedContainer extends CustomPainter { 
  @override 
  void paint(Canvas canvas, Size size) { 
    Paint paint = Paint()..color = Color.fromARGB(255, 57, 136, 135); 
    Path path = Path() 
      ..relativeLineTo(0, 150) 
      ..quadraticBezierTo(size.width / 2, 225, size.width, 150) 
      ..relativeLineTo(0, -150) 
      ..close(); 
    canvas.drawPath(path,paint); 
  } 
 
  @override 
  bool shouldRepaint(CustomPainter oldDelegate) => false; 
}
