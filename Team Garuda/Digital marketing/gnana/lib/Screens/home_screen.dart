import 'package:flutter/material.dart';
import 'package:gnana/Resources/resources.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            color: l1,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  constraints: const BoxConstraints(
                    maxWidth: 1300,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 150,
                      ),

                      InkWell(
                          onTap: () {},
                          child: Image.asset('lib/Assets/Logos/mainlogo.png')),
                      const Spacer(),

                      // ignore: prefer_const_constructors
                      Row(
                        children: [
                          HomeMenu(
                            press: () {},
                            title: 'Home',
                          ),
                          spacemenu(),
                          HomeMenu(
                            press: () {},
                            title: 'About',
                          ),
                          spacemenu(),
                          HomeMenu(
                            press: () {},
                            title: 'Services',
                          ),
                          spacemenu(),
                          HomeMenu(
                            press: () {},
                            title: 'Our Works',
                          ),
                          spacemenu(),
                          HomeMenu(
                            press: () {},
                            title: 'Login',
                          ),
                          spacemenu(),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: kblack,
                              ),
                              width: 155,
                              height: 65,
                              child: Center(
                                child: Text(
                                  'Lets Talk',
                                  style: kNunmed.copyWith(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox spacemenu() {
    return const SizedBox(
      width: 40,
    );
  }
}

class HomeMenu extends StatelessWidget {
  const HomeMenu({
    super.key,
    required this.title,
    required this.press,
  });

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: SizedBox(
        child: Text(
          title,
          style: kNunmed.copyWith(fontSize: 20),
        ),
      ),
    );
  }
}
