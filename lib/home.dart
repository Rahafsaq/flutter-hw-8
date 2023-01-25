import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

var currentIndex = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget body;
    if (currentIndex == 0) {
      body = const AddTask();
    } else {
      body = const Setting();
    }

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          currentIndex = newIndex;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add task',
          ),
        ],
      ),
      body: body,
    );
  }
}

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffb35647),
        title: const Text('Today'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          child: Column(
            children: [
              Row(
                children: const [
                  Text('Jun 8.Today.Wendnesday'),
                ],
              ),
              const Divider(
                color: Colors.grey,
                indent: 0,
                endIndent: 0,
                height: 20,
              ),
              Container(
                child: Row(
                  children: const [
                    Icon(
                      Icons.circle_outlined,
                      color: Color(0xffd6a267),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Shop for groceries'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.grey,
                indent: 0,
                endIndent: 0,
                height: 20,
              ),
              Container(
                child: Row(
                  children: const [
                    Icon(
                      Icons.circle_outlined,
                      color: Color(0xff7694dd),
                    ),
                    SizedBox(
                      width: 5,
                    ),

                    Text('Pack bag'),

                    //  Text('Pack crayons and a soft drink')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: const [
                    Text('Pack crayons and a soft drink'),
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
                indent: 0,
                endIndent: 0,
                height: 20,
              ),
              Container(
                child: Row(
                  children: const [
                    Icon(
                      Icons.circle_outlined,
                      color: Color(0xffc9c9c9),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Create project tag project'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 29),
                child: Row(
                  children: const [
                    Text('Create project tag'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: const Color(0xffb35647),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            //  Container(
            //   decoration: const BoxDecoration(
            //     color: Color(0xfff8f8f8),
            //   ),
            // child:
            Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Container(
                decoration:
                    const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Row(
                  children: [
                    const Icon(Icons.star_border_outlined, color: Colors.yellow),
                    Column(
                      children: const [
                        Text('Todoist pro'),
                        Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Text(
                            'Until jul 8 2022',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 300,
                    ),
                    const Icon(
                      Icons.arrow_right_outlined,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                decoration:
                    const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Row(
                  children: const [
                    Icon(Icons.account_box_outlined, color: Color(0xffb35647)),
                    Text(' Account'),
                    SizedBox(
                      width: 335,
                    ),
                    Icon(
                      Icons.arrow_right_outlined,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                decoration:
                    const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Row(
                  children: const [
                    Icon(Icons.settings, color: Color(0xffb35647)),
                    Text(' General'),
                    SizedBox(
                      width: 339,
                    ),
                    Icon(
                      Icons.arrow_right_outlined,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                decoration:
                    const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Row(
                  children: const [
                    Icon(Icons.color_lens, color: Color(0xffb35647)),
                    Text(' Theme'),
                    SizedBox(
                      width: 287,
                    ),
                    Text(
                      'Todoist',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_right_outlined,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                decoration:
                    const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Row(
                  children: const [
                    Icon(Icons.app_registration, color: Color(0xffb35647)),
                    Text(' App Icon'),
                    SizedBox(
                      width: 274,
                    ),
                    Text(
                      'Todoist',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_right_outlined,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                decoration:
                    const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Row(
                  children: const [
                    Icon(Icons.arrow_drop_up_outlined, color: Color(0xffb35647)),
                    Text(' Productivity'),
                    SizedBox(
                      width: 312,
                    ),
                    Icon(
                      Icons.arrow_right_outlined,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                decoration:
                    const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Row(
                  children: const [
                    Icon(Icons.watch_later, color: Color(0xffb35647)),
                    Text(' Reminder'),
                    SizedBox(
                      width: 328,
                    ),
                    Icon(
                      Icons.arrow_right_outlined,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                decoration:
                    const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Row(
                  children: const [
                    Icon(Icons.notifications_none_outlined, color: Color(0xffb35647)),
                    Text('Notifications '),
                    SizedBox(
                      width: 307,
                    ),
                    Icon(
                      Icons.arrow_right_outlined,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                decoration:
                    const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Row(
                  children: const [
                    Icon(Icons.circle_outlined, color: Colors.blue),
                    Text(' Siri'),
                    SizedBox(
                      width: 366,
                    ),
                    Icon(
                      Icons.arrow_right_outlined,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                decoration:
                    const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Row(
                  children: const [
                    Icon(Icons.question_mark_rounded, color: Color(0xffb35647)),
                    Text('Help and Feedback '),
                    SizedBox(
                      width: 266,
                    ),
                    Icon(
                      Icons.arrow_right_outlined,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
