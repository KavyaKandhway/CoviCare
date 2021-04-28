import 'package:flutter/material.dart';
import 'package:covicare/InsideHome/oralmedicine/Injections.dart';

class NeedSupplies extends StatefulWidget {
  @override
  _NeedSuppliesState createState() => _NeedSuppliesState();
}

class _NeedSuppliesState extends State<NeedSupplies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Supplies'),
        backgroundColor: Colors.cyan[500],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Supplies(
                SupplyData: 'Oxygen Cylinders',
              ),
            ),
            Expanded(
              child: InkWell(
                child: Supplies(
                  SupplyData: 'Oral Medicines',
                ),
                onTap: () {},
              ),
            ),
            Expanded(
              child: Supplies(
                SupplyData: 'Beds',
              ),
            ),
            Expanded(
              child: Supplies(
                SupplyData: 'Plasma',
              ),
            ),
            Expanded(
              child: InkWell(
                child: Supplies(
                  SupplyData: 'Injections',
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Injections()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Supplies extends StatelessWidget {
  String SupplyData;
  Supplies({this.SupplyData});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.cyan[200],
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(
          child: Text(
            SupplyData,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
