import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:students_app_provider/providers/controller.dart';
import 'package:students_app_provider/screens/add_student.dart';
import 'package:students_app_provider/screens/search_screen.dart';
import 'package:students_app_provider/screens/student_List.dart';
import 'package:students_app_provider/screens/studentlist_grid_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _viewMode = 0; // 0 for list, 1 for grid
  @override
  Widget build(BuildContext context) {
    final dataController = Provider.of<DataController>(context);
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: AppBar(
          title: const Text(
            'Students Record',
            style: TextStyle(
                color: Color.fromARGB(255, 183, 215, 143),
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color(0xFF1E1E2F),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctxs) => const SearchScreen()));
                },
                icon: const Icon(
                  Icons.search_rounded,
                  color: const Color.fromARGB(255, 183, 215, 143),
                ))
          ],
        ),
      ),
      body: dataController.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                Expanded(
                    child: _viewMode == 0
                        ? const StudentListGridView()
                        : const StudentList()),
              ],
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Visibility(
        visible: true, // Show the add button
        child: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 239, 235, 235),
          shape: const CircleBorder(),
          elevation: 2, // shadow
          onPressed: () {
            addstudent(context);
          },
          child: const Icon(
            Icons.add,
            color: Color.fromARGB(255, 52, 121, 54),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.cyan,
        backgroundColor: const Color(0xFF1E1E2F),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.grid_3x3_rounded,
              color: _selectedIndex == 0
                  ? const Color.fromARGB(255, 183, 215, 143)
                  : Colors.grey,
            ),
            label: 'Grid',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
                color: _selectedIndex == 0
                    ? const Color.fromARGB(255, 183, 215, 143)
                    : Colors.grey,
                // color: const Color.fromARGB(255, 183, 215, 143),
              ),
              label: 'List')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 183, 215, 143),
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            _viewMode = index; // Set the view mode based on the tapped index
          });
        },
      ),
    );
  }

  void addstudent(gtx) {
    Navigator.of(gtx)
        .push(MaterialPageRoute(builder: (gtx) => const AddStudent()));
  }
}
