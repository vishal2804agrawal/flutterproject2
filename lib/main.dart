import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> skills = [
      "UI/UX Design",
      "Prototyping",
      "Design Systems",
      "User Research",
      "Wireframing",
      "Interaction Design",
    ];
    final List<Map<String, dynamic>> contactInfo = [
      {
        "icon": Icons.email_outlined,
        "text": "agrawalvishal773@gmail.com",
      },
      {
        "icon": Icons.phone_outlined,
        "text": "(555) 123-4567",
      },
      {
        "icon": Icons.linked_camera,
        "text": "linkedin.com/in/Ishank_Sharma",
      },
    ];

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Profile",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.grey.shade700,
              fontSize: 25,
            ),
          ),
          actions: [
            Icon(Icons.settings_outlined, size: 25, color: Colors.grey.shade600),
            Padding(padding: EdgeInsets.only(right: 16)),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0.5),
            child: Container(
              color: Colors.grey.shade300,
              height: 0.5,
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Container(
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage("assets/images/vishal_image.jpg"),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Vishal Agrawal",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade700,
                          ),
                        ),
                        Text(
                          "Flutter Developer ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Skills",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      SizedBox(height: 10),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: skills
                            .map(
                              (skill) => Chip(
                            label: Text(skill),
                            backgroundColor: Color(0xFFE3DDE5),
                            labelStyle: TextStyle(color: Colors.grey.shade800),
                          ),
                        )
                            .toList(),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Ethan is a product designer with over 5 years of experience in creating user-centered designs. He specializes in UI/UX design, user research, and prototyping. Ethan is passionate about solving complex problems and creating intuitive and engaging user experiences.",
                        style: TextStyle(color: Colors.grey.shade600),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Contact",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 10),
                      ...contactInfo.map(
                            (item) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(
                                  item["icon"],
                                  size: 20,
                                  color: Colors.grey.shade800,
                                ),
                              ),
                              SizedBox(width: 12),
                              Flexible(
                                child: Text(
                                  item["text"],
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.grey.shade300,
                width: 1,
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                offset: Offset(0, -2),
                blurRadius: 6,
              ),
            ],
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 30,
            selectedItemColor: Colors.grey.shade700,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home),
                tooltip: "Home",
              ),
              BottomNavigationBarItem(
                label: "Search",
                icon: Icon(Icons.search),
                tooltip: "Search",
              ),
              BottomNavigationBarItem(
                label: "Add",
                icon: Icon(Icons.add),
                tooltip: "Add",
              ),
              BottomNavigationBarItem(
                label: "Bookmark",
                icon: Icon(Icons.bookmark_border_outlined),
                tooltip: "Bookmark",
              ),
              BottomNavigationBarItem(
                label: "User",
                icon: Icon(Icons.person_2_outlined),
                tooltip: "User",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
