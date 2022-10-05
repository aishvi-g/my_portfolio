import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//you can write it anywhere outside the class
Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}


class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Projects'),
        
      ),
      backgroundColor: Colors.grey[100],
      body: Center(
        child:ListView(
          children: const [
            ListTile(
              
              title: Text('Spam Mail Detection'),

              subtitle : Text(" For detecting spam mails using basic ML models")
    
              
            ),
            ListTile(
              
              title: Text('Recipick'),
              subtitle : Text(" A web-application to pick your recipe based on available ingredients")
              
            ),

            ListTile(
              
              title: Text('Canteen Food Ordering App'),
              subtitle : Text("A food ordering app for the university's canteen")
             
             )
          ],
        ),//List View
      ),
    );
  }
}


      