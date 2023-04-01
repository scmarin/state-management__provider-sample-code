import 'package:flutter/material.dart';

import 'data_class.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfefcff),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            children: [
              // display counter value
              // TODO: put here the Consumer widget
              Text("0",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Spacer(),
              Text(
                "Total",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            children: [
              // TODO: add method to increment value inside onPressed
              ElevatedButton(onPressed: () {}, child: const Text("ADD")),
              const Spacer(),
              Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      // next page button
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/second");
                          },
                          child: const Text(
                            "Next Page",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                      const Spacer(),
                      const Icon(Icons.skip_next, color: Colors.white)
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
