import 'package:flutter/material.dart';

class KeyFacts extends StatefulWidget {
  const KeyFacts({Key? key}) : super(key: key);

  @override
  _KeyFacts createState() => _KeyFacts();
}

class _KeyFacts extends State<KeyFacts> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isTapped = !isTapped;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: isTapped ? Colors.blue : Colors.white,
              ),
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(Icons.key,
                          color: Colors.black,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Key Facts',
                          style: TextStyle(
                            color: isTapped ? Colors.white : Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Icon(
                      isTapped ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                      color: isTapped ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (isTapped)
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  _buildSoldItem('List: 08.05.2022', 'Listed for:\$1,549,586   Sold for:\$1,549,586', 'MLS#: E5579076'),
                  _buildSoldItem('List: 08.05.2022', 'Listed for:\$1,549,586   Sold for:\$1,549,586', 'MLS#: E5579076'),
                  _buildSoldItem('List: 08.05.2022', 'Listed for:\$1,549,586   Sold for:\$1,549,586', 'MLS#: E5579076'),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildSoldItem(String year, String price, String date) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    year,
                    style: TextStyle(
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    price,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(date,
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text('Sold', style: TextStyle(fontSize: 12)),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}