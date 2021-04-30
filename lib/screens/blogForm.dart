import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covicare/models/blog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:covicare/helpers/database.dart';

class BlogForm extends StatefulWidget {
  @override
  _BlogFormState createState() => _BlogFormState();
}

final _auth = FirebaseAuth.instance;
dynamic user;

class _BlogFormState extends State<BlogForm> {
  final _blogFormKey = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();
  TextEditingController designation = TextEditingController();
  TextEditingController title = TextEditingController();
  TextEditingController content = TextEditingController();
  TextEditingController tags = TextEditingController();
  bool anonymous = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add Blog"),
          backgroundColor: Colors.cyan[500],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Create your own Blog!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.cyan),
                ),
                SizedBox(
                  height: 20.0,
                ),
                //Name Field

                TextFormField(
                  controller: name,
                  maxLength: 40,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Colors.cyan,
                    ),
                    labelText: 'Name of the Publisher',
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),

                    //DesignationField

                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.cyan, width: 3.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),

                // Designation Field

                TextFormField(
                  controller: designation,
                  maxLength: 40,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.work,
                      color: Colors.cyan,
                    ),
                    labelText: "Publisher's Designation",
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.cyan, width: 3.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),

                // Title field

                TextFormField(
                  controller: title,
                  maxLength: 40,
                  decoration: InputDecoration(
                    icon: Icon(Icons.favorite, color: Colors.cyan),
                    labelText: 'Title of the Article',
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.cyan, width: 3.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),

                //  Content Field

                TextFormField(
                  controller: content,
                  keyboardType: TextInputType.multiline,
                  minLines: 7,
                  maxLines: 10,
                  decoration: InputDecoration(
                    icon: Icon(Icons.article_outlined, color: Colors.cyan),
                    fillColor: Colors.grey[300],
                    filled: true,
                    labelText: 'Article Content',
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.cyan, width: 3.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  controller: tags,
                  keyboardType: TextInputType.multiline,
                  minLines: 2,
                  maxLines: 3,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.article_outlined,
                      color: Colors.cyan,
                    ),
                    fillColor: Colors.grey[300],
                    filled: true,
                    labelText:
                        'Add maximum five keywords related to your Article',
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.cyan,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.cyan, width: 3.0),
                    ),
                  ),
                ),
                CheckboxListTile(
                  title: Text("Write Anonymously ?"),
                  tristate: true,
                  value: anonymous,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool value) {
                    setState(() {
                      anonymous = value;
                    });
                  },
                ),
                GestureDetector(
                  onTap: () async {
                    print("Entered");
                    Blog blog = Blog(
                      name: name.text,
                      designation:designation.text,
                      title: title.text,
                      content:content.text,
                      anonymous:anonymous,
                      tags:tags.text,
                    );
                    user = _auth.currentUser;
                    print("Blog-database=================");
                    await DatabaseService(uid: user.uid)
                        .updateBlogData(blog);
                  },
                  child: new Container(
                    padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                    child: new ElevatedButton(
                      child: const Text('Submit'),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.cyan),
                          padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                          textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 15))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
