import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SupplyForm extends StatefulWidget {
  @override
  _SupplyFormState createState() => _SupplyFormState();
}

class _SupplyFormState extends State<SupplyForm> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController pincode = TextEditingController();
  TextEditingController address1 = TextEditingController();
  TextEditingController address2 = TextEditingController();
  TextEditingController landmark = TextEditingController();
  String countryValue = '', stateValue = '', cityValue = '';
  bool oxygen = false, favipiravir = false, bed = false, remdesivir = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sell/Donate Supplies"),
          backgroundColor: Colors.cyan[500],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  child: Text(
                    "Enter name/name of organization",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: name,
                  maxLength: 40,
                  decoration: InputDecoration(
                    labelText: "name",
                    counterText: "",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.cyan, width: 3.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.cyan, width: 1.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Text(
                    "Enter phone number",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: phone,
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    counterText: "",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.cyan, width: 3.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.cyan, width: 1.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Text(
                    "Select Location",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(
                  height: 10.0,
                ),
                CSCPicker(
                  showStates: true,
                  showCities: true,
                  flagState: CountryFlag.SHOW_IN_DROP_DOWN_ONLY,
                  dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.cyan[50],
                      border: Border.all(color: Colors.cyan, width: 2)),
                  disabledDropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey.shade300,
                      border: Border.all(color: Colors.grey[300], width: 1)),
                  selectedItemStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  dropdownHeadingStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  dropdownItemStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  dropdownDialogRadius: 10.0,
                  searchBarRadius: 10.0,
                  onCountryChanged: (value) {
                    setState(() {
                      countryValue = 'India';
                    });
                  },
                  onStateChanged: (value) {
                    setState(() {
                      stateValue = value;
                    });
                  },
                  onCityChanged: (value) {
                    setState(() {
                      cityValue = value;
                    });
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Text(
                    "Enter pincode",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  maxLength: 6,
                  controller: pincode,
                  decoration: InputDecoration(
                    labelText: "Pincode",
                    counterText: "",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.cyan, width: 3.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.cyan, width: 1.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Text(
                    "Enter Address ",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: address1,
                  maxLength: 40,
                  decoration: InputDecoration(
                    labelText: "Address Line 1",
                    counterText: "",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.cyan, width: 3.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.cyan, width: 1.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: address2,
                  maxLength: 40,
                  decoration: InputDecoration(
                    labelText: "Address Line 2",
                    counterText: "",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.cyan, width: 3.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.cyan, width: 1.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Text(
                    "Enter Landmark",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: landmark,
                  maxLength: 40,
                  decoration: InputDecoration(
                    labelText: "Landmark",
                    counterText: "",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.cyan, width: 3.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.cyan, width: 1.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Text(
                    "Select the supplies",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Text(
                          "Quantity",
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        child: Text(
                          "Amt/unit",
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.cyan,
                      width: 2,
                    ),
                  ),
                  child: Column(
                    children: [
                      CheckboxListTile(
                        title: Container(
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Oxygen Cylinder"),
                                Expanded(
                                  child: SizedBox(
                                    width: 500,
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  height: 50,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      counterText: "",
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                        borderSide: BorderSide(
                                            color: Colors.cyan, width: 3.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                        borderSide: BorderSide(
                                            color: Colors.cyan, width: 1.0),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 80,
                                  height: 50,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      counterText: "",
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                        borderSide: BorderSide(
                                            color: Colors.cyan, width: 3.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                        borderSide: BorderSide(
                                            color: Colors.cyan, width: 1.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        tristate: true,
                        value: oxygen,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool value) {
                          setState(() {
                            oxygen = value;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Container(
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Bed"),
                                Expanded(
                                  child: SizedBox(
                                    width: 500,
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  height: 50,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      counterText: "",
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                        borderSide: BorderSide(
                                            color: Colors.cyan, width: 3.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                        borderSide: BorderSide(
                                            color: Colors.cyan, width: 1.0),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 80,
                                  height: 50,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      counterText: "",
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                        borderSide: BorderSide(
                                            color: Colors.cyan, width: 3.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                        borderSide: BorderSide(
                                            color: Colors.cyan, width: 1.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        tristate: false,
                        value: bed,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool value) {
                          setState(() {
                            bed = value;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Container(
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Remdesivir"),
                                Expanded(
                                  child: SizedBox(
                                    width: 500,
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  height: 50,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      counterText: "",
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                        borderSide: BorderSide(
                                            color: Colors.cyan, width: 3.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                        borderSide: BorderSide(
                                            color: Colors.cyan, width: 1.0),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 80,
                                  height: 50,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      counterText: "",
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                        borderSide: BorderSide(
                                            color: Colors.cyan, width: 3.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                        borderSide: BorderSide(
                                            color: Colors.cyan, width: 1.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        tristate: true,
                        value: remdesivir,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool value) {
                          setState(() {
                            remdesivir = value;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Container(
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Favipiravir"),
                                Expanded(
                                  child: SizedBox(
                                    width: 500,
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  height: 50,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      counterText: "",
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                        borderSide: BorderSide(
                                            color: Colors.cyan, width: 3.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                        borderSide: BorderSide(
                                            color: Colors.cyan, width: 1.0),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 80,
                                  height: 50,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      counterText: "",
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                        borderSide: BorderSide(
                                            color: Colors.cyan, width: 3.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.zero,
                                        borderSide: BorderSide(
                                            color: Colors.cyan, width: 1.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        tristate: true,
                        value: favipiravir,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool value) {
                          setState(() {
                            favipiravir = value;
                          });
                        },
                      ),
                    ],
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
