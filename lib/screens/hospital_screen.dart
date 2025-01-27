import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/footer.dart';
import '../screens/tabs/about_tab.dart';
import '../screens/tabs/departments_tab.dart';

class HospitalScreen extends StatefulWidget {
  const HospitalScreen({super.key});

  @override
  State<HospitalScreen> createState() => _HospitalScreenState();
}

class _HospitalScreenState extends State<HospitalScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
 void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomHeader(),
            
            Image.network(
              'https://www.google.com/search?sca_esv=f955a9a40bd85927&sxsrf=ADLYWIIuNbhsEePKPte0knGkHzTLOfBBTg:1736407251857&q=hospital+banadir&udm=2&fbs=AEQNm0Aa4sjWe7Rqy32pFwRj0UkWd8nbOJfsBGGB5IQQO6L3JzWreY9LW7LdGrLDAFqYDH32tgteNhtZOxnGezgnEGc8nJf0T5kIXfpR5VSirtGGTDvS5oWtbiAFedZFmW9WGDZAHp3wm0L6-7Wlad262RqxuN_gPAphyu7_mNDyDeZeq9VkNeQ&sa=X&sqi=2&ved=2ahUKEwissLqLjeiKAxVG9bsIHYFyIiYQtKgLegQIFRAB&biw=1366&bih=633&dpr=1#vhid=OVsSuansc2TwaM&vssid=mosaic',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Banadir Hospital',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'General Hospital',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: 'About'),
                Tab(text: 'Departments'),
              ],
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.blue,
            ),

            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  AboutTab(),
                  DepartmentsTab(),
                ],
              ),
            ),

            const CustomFooter(),
          ],
        ),
      ),
    );
  }
}