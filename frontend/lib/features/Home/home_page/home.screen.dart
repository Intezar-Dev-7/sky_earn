import 'package:flutter/material.dart';
import 'package:frontend/features/Home/home_page/widgets/container_widget.dart';
import 'package:frontend/features/Home/tasks/task.dart';
import 'package:frontend/utils/constants/colors.dart';
import 'package:frontend/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text(
          "Home",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(224, 226, 252, 1).withOpacity(0.1),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  // Change Column to Row
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, // Push elements apart
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Available coins",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(height: 5),
                        Row(
                          // For icon and text
                          children: [
                            Image.asset(coinIcon, width: 20),
                            SizedBox(width: 7),
                            Text(
                              "200",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(120, 40),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        Get.offAll(() => TasksScreen());
                      },
                      child: Text(
                        "Earn More",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 19, 2, 49),
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 40,
                    childAspectRatio: 1.4,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return ContainerWidget(
                      diamondsNumber: '${(index + 1) * 100} ',
                      coinsNumber: '${(index + 1) * 800} coins',
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
