
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//you can write it anywhere outside the class
Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}


class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 60,
                
                backgroundImage: AssetImage(
                  'assets/images/aishvi.png'
                  
                ),
              ),
              const Text('Aishvi Guleria',
                  style: TextStyle(
                    fontFamily : 'Lora',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  )),
              const Text(
                'IT Undergrad',
                style: TextStyle(
                  fontFamily : 'Lora',
                  fontSize: 20,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[100],
                ),
                child: Row(
                  children: const [
                    Icon(Icons.email_outlined),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'aishviguleria@gmail.com',
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'projects_page');
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[100],
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.file_copy),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Projects',
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  final Uri _url = Uri.parse('https://www.linkedin.com/in/aishvi-guleria-09a04222b/');
                  _launchUrl(_url);
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[100],
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.connect_without_contact),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Connect with me on LinkedIn!',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}