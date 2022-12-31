import 'package:demo/controllers/home_page_controller.dart';
import 'package:demo/ids/app_ids.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            GetBuilder<HomePageController>(
              id: AppId.couterId,
              builder: (controller) {
                return Text(
                  controller.conter.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            GetBuilder<HomePageController>(
              builder: (controller) {
                return Text(
                  controller.conter.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            Obx(
              () => Text(
                controller.counter1.toString(),
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.obsIncremnetCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
