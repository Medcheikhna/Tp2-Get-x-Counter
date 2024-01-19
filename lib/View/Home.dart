import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tp_get/controller/homecontroller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get-x Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<HomeController>(
                init: HomeController(),
                builder: ((controller) => Column(
                      children: [
                        Text(
                          "Conter value is : ${controller.count.value} ",
                          style: TextStyle(fontSize: 18),
                        ),

                        //les debus des button
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            controller.increment();
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            controller.decrement();
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.refresh),
                          onPressed: () {
                            controller.resetIncrement();
                          },
                        ),
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
