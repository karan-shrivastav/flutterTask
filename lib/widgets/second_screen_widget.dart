import 'package:flutter/material.dart';

class SecondScreenWidget extends StatelessWidget {
  const SecondScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      child: const Stack(
        children: [
          Positioned(
            top: 25,
            child: CircleAvatar(
              radius: 65,
              backgroundImage: NetworkImage(
                  'https://static.vecteezy.com/system/resources/previews/032/324/030/non_2x/young-man-working-on-laptop-boy-freelancer-or-student-with-computer-in-cafe-at-table-looking-in-camera-ai-generative-free-photo.jpg'),
              //backgroundColor: Colors.pink,
            ),
          ),
          Positioned(
            top: 60,
            left: 155,
            child: CircleAvatar(
              radius: 45,
              backgroundImage: NetworkImage(
                  'https://www.visualsstock.com/details_watermark.php?filename=55415'),
              // backgroundColor: Colors.green,
            ),
          ),
          Positioned(
            top: 45,
            right: 0,
            child: CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                  'https://img.freepik.com/free-photo/portrait-indian-happy-businessman-using-laptop-computer-office_231208-2581.jpg'),
              //backgroundColor: Colors.orange,
            ),
          ),
          Positioned(
            top: 150,
            right: 20,
            child: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                  "https://plus.unsplash.com/premium_photo-1661717876697-1c47186f54fd?fm=jpg&w=3000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8b2ZmaWNlJTIwZ2lybHxlbnwwfHwwfHx8MA%3D%3D"),
              // backgroundColor: Colors.yellow,
            ),
          ),
          Positioned(
            top: 170,
            right: 130,
            child: CircleAvatar(
              radius: 55,
              backgroundImage: NetworkImage(
                  'https://static.vecteezy.com/system/resources/previews/036/054/437/non_2x/ai-generated-smiling-businessman-in-the-office-handsome-and-confident-photo.jpg'),
              //backgroundColor: Colors.grey,
            ),
          ),
          Positioned(
            top: 180,
            left: 30,
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://previews.123rf.com/images/kumarjatinder/kumarjatinder1808/kumarjatinder180800465/107298094-young-boy-looking-phone-sitting-on-the-chair-in-the-office-isolated-on-white-background.jpg'),
              //backgroundColor: Colors.deepPurple,
            ),
          )
        ],
      ),
    );
  }
}
