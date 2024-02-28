import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),

      },
    ));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      ////////////////////////////////=======================ye code app bar k liye
      appBar: AppBar (

        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        backgroundColor: Colors.limeAccent,
        elevation: 0,
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.wallet,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      ///////////////////////////////////=====================ye code body k liye
      body: SingleChildScrollView(
          child: content()

      ) ,
    );
  }

  Widget content() {

    //create data
    List<String> itemPath = [
      'assets/shoes1.png',
      'assets/shoes2.png',
      'assets/shoes3.png',
      'assets/shoes4.png',
      'assets/shoes5.png'
    ];
    List<String> itemPrice = [
      "\$270",
      "\$280",
      "\$850",
      "\$250",
      "\$270",
    ];
    List<String> itemNAme = [
      "sft256",
      'tTTnike580',
      'NIKEu875',
      'Ftt8959',
      'Colombus'
    ];
    List<bool> isFavorite = [true, false, true, false, true];

    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Catogories",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'All',
                  style: TextStyle(
                    color: Colors.orange[700],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text("Shoe"),
                SizedBox(
                  width: 20,
                ),
                Text("Clothes"),
                SizedBox(
                  width: 20,
                ),
                Text("Watches")
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: ListView.builder(
                  itemCount: itemPath.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return item(itemPath[index],itemNAme[index],itemPrice[index],isFavorite[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}

//////////////////////

Widget item(String itemPath,String itemName,String itemPrice,bool isFavourite) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20.0),
    child: Container(
      height: 110,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 130,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  image:
                      DecorationImage(image: AssetImage(itemPath))),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text(
                itemPrice,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.favorite,color: isFavourite ?Colors.red :Colors.white,),
          ),

        ],
      ),
    ),
  );
}
