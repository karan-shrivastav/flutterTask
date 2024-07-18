import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/first_screen_widget.dart';
import 'package:flutter_task/widgets/second_screen_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Color> colors = [
    Colors.red,
    Colors.green,
  ];
  final List<Widget> contentData = [
    const FirstScreenWidget(),
    const SecondScreenWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Row(
          children: [
            Icon(
              Icons.arrow_back_ios_new,
              color: Colors.blue,
              size: 15,
            ),
            Text(
              'Account',
              style: TextStyle(fontSize: 10, color: Colors.blue),
            )
          ],
        ),
        title: const Text("Transfer"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 10),
              width: MediaQuery.of(context).size.width - 50,
              child: const Text(
                'Who do you want to transfer money to?',
                style: TextStyle(fontSize: 24, color: Color(0xFF818183)),
              )),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: 100,
            decoration: BoxDecoration(
                color: const Color(0xFF4c4a5c),
                borderRadius: BorderRadius.circular(15)),
            child: const Row(
              children: [
                Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                Text(
                  "New",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Expanded(
            child: PageView.builder(
              itemCount: contentData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    child: contentData[index],
                  ),
                );
              },
            ),
          ),
          Row(
            children: [
              Container(
                height: 200,
                width: 200,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Color(0xFF2e66ff),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(150),
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SALARY',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Text(
                      "12,475",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Drag to the person you want to transfer money',
                      style: TextStyle(color: Color(0xFF4877fd), fontSize: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const CircleAvatar(
                radius: 45,
                backgroundColor: Color(0xFFdedee7),
                child: Text(
                  "View All",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}