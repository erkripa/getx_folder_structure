import 'package:demo/controllers/home_page_controller.dart';
import 'package:demo/global/k_enum.dart';
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
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (controller.loadingStatus.value == LoadingStatus.completed)
              Expanded(
                child: ListView.builder(
                    itemCount: controller.userList.length,
                    itemBuilder: (context, index) {
                      final user = controller.userList[index];
                      return ListTile(
                        title: Text(user.name),
                        subtitle: Text(user.email),
                      );
                    }),
              )
            else
              const Center(child: CircularProgressIndicator())
          ],
        ),
      ),
      //
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.obsIncremnetCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
