import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffDBDBDB),
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: CustomScrollView(slivers: [
          SliverToBoxAdapter(
              child: SizedBox(
            height: 50,
          )),
          Column(
            children: [
              Expanded(
                flex: 3,
                child: SizedBox(
                  child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisSpacing: 30,
                              crossAxisSpacing: 30,
                              crossAxisCount: 2),
                      itemBuilder: (context, index) => Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(child: Text("Hello")))),
                ),
              ),
              Expanded(
                flex: 2,
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey.shade300,
                          ),
                        ),
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 20,
                        ),
                    itemCount: 10),
              )
            ],
          ),
        ])));
  }
}
