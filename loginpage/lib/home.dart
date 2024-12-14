import 'package:flutter/material.dart';
import 'package:loginpage/loginscreen.dart';
import 'package:loginpage/person.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final borderRadius = BorderRadius.circular(20);

class _HomeState extends State<Home> {
  signOut(BuildContext ctx) {
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => const loginscreen()),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text(
            'Chat',
          ),
          actions: [
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    signOut(context);
                                    usernameController.clear();
                                    passwordController.clear();
                                    isDataMatched = true;
                                  },
                                  child: const Text('Ok'))
                            ],
                            title: const Text('Sign Out'),
                            contentPadding: const EdgeInsets.all(20),
                            content: const Text('Press ok button to SignOut'),
                          );
                        });
                  },
                  child: const Text('Sign Out'),
                ),
              ],
            )
          ],
        ),
        body: SafeArea(
            child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemBuilder: (context, index) {
                  return (index) % 2 == 0
                      ? ListTile(
                          onTap: () {
                            setState(() {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return const Person();
                                },
                              ));
                            });
                          },
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(15.00),
                            child: Container(
                              color: const Color.fromARGB(255, 205, 133, 133),
                              child: Image.asset(
                                'assets/images/women.png',
                              ),
                            ),
                          ),
                          title: Text('PERSON $index'),
                          subtitle: Text('Message $index'),
                          trailing: Text('1$index:00PM'),
                        )
                      : ListTile(
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return const Person();
                            },
                          )),
                          title: Text('PERSON $index'),
                          subtitle: Text('Message $index'),
                          leading: const CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.indigo,
                            backgroundImage:
                                AssetImage('assets/images/man.png'),
                          ),
                          trailing: Text('1$index:00PM'),
                        );
                },
                itemCount: 30)));
  }
}
