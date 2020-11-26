//Caution: Only works on Android & iOS platforms
import 'dart:io';

import 'package:chips_choice/chips_choice.dart';
import 'package:custom_switch/custom_switch.dart';
//import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

import '../categoryChoice.dart';

class CreateEvent extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Firebase Storage Demo',
        home: Scaffold(
            appBar: AppBar(

                backgroundColor: Colors.white,
                title: Center(
                  child: ListTile(
                    leading: SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Center(
                          child: Text(
                            'Create event',
                            style: TextStyle(color: Colors.black),
                          ),
                        )),
                    trailing: Text('Step 1 of 2',
                        style: TextStyle(color: Colors.blue, fontSize: 14)),
                  ),
                )),
            body: UploadingImageToFirebaseStorage()));
  }
}

final Color yellow = Color(0xfffbc31b);
final Color orange = Color(0xfffb6900);

class UploadingImageToFirebaseStorage extends StatefulWidget {
  @override
  _UploadingImageToFirebaseStorageState createState() =>
      _UploadingImageToFirebaseStorageState();
}

class _UploadingImageToFirebaseStorageState
    extends State<UploadingImageToFirebaseStorage> {
  bool status = false;
  bool _value = true;
  int tag = 1;
  double _numberOfPerson=1;
  int tagAge = 2;
  int tagGender= 1;
  List<String> options = [
    'Music',
    'Food',
    'Games',
    'Singing',
  ];
  List<String> optionsAge = [
    '18-25',
    '26-35',
    '36-45',
    '46-55',
  ];
  List<String> optionsGender = [
    'Male',
    'Female',
    'Any',
  ];
  File _imageFile;
  final picker = ImagePicker();
  Future pickImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    setState(() {
      _imageFile = File(pickedFile.path);
    });
  }

  Future uploadImageToFirebase(BuildContext context) async {
    String fileName = basename(_imageFile.path);
  /*  StorageReference firebaseStorageRef =
        FirebaseStorage.instance.ref().child('uploads/$fileName');
    StorageUploadTask uploadTask = firebaseStorageRef.putFile(_imageFile);
    StorageTaskSnapshot taskSnapshot = await uploadTask.onComplete;
    taskSnapshot.ref.getDownloadURL().then(
          (value) => print("Done: $value"),
        );*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 260,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)),
                      gradient: LinearGradient(
                          colors: [orange, yellow],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight)),
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(left: 10, right: 20),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Event name',
                            ),
                            onSaved: (String value) {
                              // This optional block of code can be used to run
                              // code when the user saves the form.
                            },
                          ),
                        )
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(left: 10, right: 20),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Ticket Website',
                            ),
                            onSaved: (String value) {
                              // This optional block of code can be used to run
                              // code when the user saves the form.
                            },
                          ),
                        ))
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2,
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: 'Start time',
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        Icons.calendar_today,
                                        color: Colors.orangeAccent,
                                      ),
                                    ),
                                  ),
                                  onSaved: (String value) {
                                    // This optional block of code can be used to run
                                    // code when the user saves the form.
                                  },
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                                child: (Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  //margin: EdgeInsets.only(left: 20, right: 20),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      labelText: 'End Date',
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          Icons.calendar_today,
                                          color: Colors.orangeAccent,
                                        ),
                                      ),
                                    ),
                                    onSaved: (String value) {
                                      // This optional block of code can be used to run
                                      // code when the user saves the form.
                                    },
                                  ),
                                )))
                          ],
                        ))
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2,
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: 'Start Time',
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        Icons.access_time,
                                        color: Colors.orangeAccent,
                                      ),
                                    ),
                                  ),
                                  onSaved: (String value) {
                                    // This optional block of code can be used to run
                                    // code when the user saves the form.
                                  },
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                                child: (Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  //margin: EdgeInsets.only(left: 20, right: 20),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      labelText: 'End Time',
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          Icons.access_time,
                                          color: Colors.orangeAccent,
                                        ),
                                      ),
                                    ),
                                    onSaved: (String value) {
                                      // This optional block of code can be used to run
                                      // code when the user saves the form.
                                    },
                                  ),
                                )))
                          ],
                        ))
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2,
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  'Categorie',style: TextStyle(
                                  color: Colors.blue
                                ),
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                               child: ChipsChoice<int>.single(
                                 value: tag,
                                 onChanged: (val) => setState(() => tag  = val),
                                 choiceItems: C2Choice.listFrom<int, String>(
                                   source: options,
                                   value: (i, v) => i,
                                   label: (i, v) => v,
                                   tooltip: (i, v) => v,
                                 ),
                                 choiceStyle: C2ChoiceStyle(
                                   borderRadius: const BorderRadius.all(
                                       Radius.circular(5)),
                                 ),
                                 wrapped: true,
                               ),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2,
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  'Age group',style: TextStyle(
                                    color: Colors.blue
                                ),
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: ChipsChoice<int>.single(
                                  value: tagAge,
                                  onChanged: (val) => setState(() => tagAge  = val),
                                  choiceItems: C2Choice.listFrom<int, String>(
                                    source: optionsAge,
                                    value: (i, v) => i,
                                    label: (i, v) => v,
                                    tooltip: (i, v) => v,
                                  ),
                                  choiceStyle: C2ChoiceStyle(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5)),
                                  ),
                                  wrapped: true,
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2,
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  'Gender',style: TextStyle(
                                    color: Colors.blue
                                ),
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: ChipsChoice<int>.single(
                                  value: tagGender,
                                  onChanged: (val) => setState(() => tagGender  = val),
                                  choiceItems: C2Choice.listFrom<int, String>(
                                    source: optionsGender,
                                    value: (i, v) => i,
                                    label: (i, v) => v,
                                    tooltip: (i, v) => v,
                                  ),
                                  choiceStyle: C2ChoiceStyle(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5)),
                                  ),
                                  wrapped: true,
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2,
                                margin: EdgeInsets.only(left: 0, right: 0),
                                child: ListTile(
                                  title: Text(
                                    'Promotion',style: TextStyle(
                                      color: Colors.black
                                  ),
                                  ),
                                  subtitle: Text(
                                    'Save up to 50% off tickets',style: TextStyle(
                                      color: Colors.grey
                                  ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2,
                                margin: EdgeInsets.only(left: 0, right: 0),
                                child: ListTile(
                                  title: Text(
                                    'Public Event',style: TextStyle(
                                      color: Colors.black
                                  ),
                                  ),
                                  subtitle: Text(
                                    'By default off Toggle means public',style: TextStyle(
                                      color: Colors.grey
                                  ),
                                  ),
                                  trailing: CustomSwitch(
                                    activeColor: Colors.orangeAccent,
                                    value: status,
                                    onChanged: (value) {
                                      print("VALUE : $value");
                                      setState(() {
                                        status = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
          Row(
                  children: [
                    Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2,
                                margin: EdgeInsets.only(left: 0, right: 0),
                                child: ListTile(
                                  title: Text(
                                    'Number of person required',style: TextStyle(
                                      color: Colors.black
                                  ),
                                  ),
                                  subtitle:
                                  Slider(
                                    value: _numberOfPerson,
                                    onChanged: (newValue) {
                                     setState(() {
                                       _numberOfPerson=newValue;
                                     });
                                    },
                                    min: 0,
                                    max: 50,
                                    divisions: 5,
                                    label: _numberOfPerson.round().toString(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
                Divider(),
                Row(
                  children: [
                    Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2,
                                margin: EdgeInsets.only(left: 0, right: 0),
                                child: ListTile(
                                  title: Text(
                                    'Allow people to auto join this event',style: TextStyle(
                                      color: Colors.black
                                  ),
                                  ),
                                  trailing:Checkbox(
                                    value: _value,
                                    onChanged: (bool newValue) {
                                      setState(() {
                                        _value = newValue;
                                      });
                                    },
                                  )

                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2,
                                margin: EdgeInsets.only(left: 0, right: 0),
                                child: RaisedButton(
                                    color: Colors.orangeAccent,
                                    textColor: Colors.white,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Text("Next"),
                                    onPressed: () async {}
                                ),

                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ],
            ),
          ],
        )
      ),
    );
  }

  Widget uploadImageButton(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
            margin: const EdgeInsets.only(
                top: 30, left: 20.0, right: 20.0, bottom: 20.0),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [yellow, orange],
                ),
                borderRadius: BorderRadius.circular(30.0)),
            child: FlatButton(
              onPressed: () => uploadImageToFirebase(context),
              child: Text(
                "Upload Image",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
