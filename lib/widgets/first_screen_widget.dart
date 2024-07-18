import 'package:flutter/material.dart';

class FirstScreenWidget extends StatelessWidget {
  const FirstScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: double.infinity,
      child: const Stack(
        children: [
          Positioned(
            top: 70,
            child: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                  "https://static.vecteezy.com/system/resources/thumbnails/024/354/241/small_2x/happy-girl-standing-in-creative-office-illustration-ai-generative-free-photo.jpg"),
              //backgroundColor: Colors.pink,
            ),
          ),
          Positioned(
            top: 20,
            left: 120,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  "https://as1.ftcdn.net/v2/jpg/04/99/58/22/1000_F_499582272_UTue1qCOAPQsPrAT4JVS8q2lmtuugGXg.jpg"),
              // backgroundColor: Colors.green,
            ),
          ),
          Positioned(
            top: 20,
            right: 0,
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Color(0xFFff8154),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Family',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Group',
                        style: TextStyle(
                          color: Colors.white12,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 10,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Color(0xFFff8154),
                      child: Text(
                        "4",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 200,
            right: 0,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  "https://media.gettyimages.com/id/1135301823/photo/young-man-talking-on-the-phone-at-home.jpg?s=612x612&w=gi&k=20&c=lGDim6mg1pP89Rp3Jru7kPWYZPXbz4EonyVqBPDamkI="),
              // backgroundColor: Colors.yellow,
            ),
          ),
          Positioned(
            top: 140,
            right: 130,
            child: CircleAvatar(
              radius: 55,
              backgroundImage: NetworkImage(
                  "https://c8.alamy.com/comp/E8170R/indian-business-woman-office-work-E8170R.jpg"),
              //backgroundColor: Colors.grey,
            ),
          ),
          Positioned(
            top: 190,
            left: 0,
            child: CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                  "https://st5.depositphotos.com/1000975/64897/i/450/depositphotos_648974812-stock-photo-young-employee-too-much-work.jpg"),
              //backgroundColor: Colors.deepPurple,
            ),
          )
        ],
      ),
    );
  }
}
