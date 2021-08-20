import 'package:flutter/material.dart';
import 'package:food_choice/main.dart';

const d_green = const Color(0xFF54D3C2);

bool isHealthy = false;
bool isCold = false;
bool isSpicy = false;
bool isSweet = false;

class QuestionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        children: [
          QuestionSection(),
        ],
      ),
    );
  }
}

class QuestionSection extends StatelessWidget {

  // create a function to generate the pop up with the food type
  createPopUp(BuildContext context){
    return showDialog(context: context, builder: (context)
    {
      return AlertDialog(
        title: Text("You're done !"),
        content: Text("We suggest your order a pizza !"),
        actions: <Widget>[
          MaterialButton(elevation: 5.0, child : Text("Home"), onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return QuestionsPage();
                },
              ),
            );
          })
        ]
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child : Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton.icon(
              onPressed : () {
                isCold = false;
              },
              label: Text('Hot',
                  style: TextStyle(color: Colors.white)),
              icon: Icon(Icons.check, color: Colors.white),
              style:ElevatedButton.styleFrom(
                  primary: d_green,
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            ElevatedButton.icon(
              onPressed : () {
                isCold = true;
              },
              label: Text('Cold',
                  style: TextStyle(color: Colors.white)),
              icon: Icon(Icons.check, color: Colors.white),
              style:ElevatedButton.styleFrom(
                  primary: d_green,
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
          SizedBox(height: 10),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed : () {
                  isSweet = true;
                },
                label: Text('Sweet',
                    style: TextStyle(color: Colors.white)),
                icon: Icon(Icons.check, color: Colors.white),
                style:ElevatedButton.styleFrom(
                    primary: d_green,
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              ElevatedButton.icon(
                onPressed : () {
                  isSweet = false;
                },
                label: Text('Salty',
                    style: TextStyle(color: Colors.white)),
                icon: Icon(Icons.check, color: Colors.white),
                style:ElevatedButton.styleFrom(
                    primary: d_green,
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed : () {
                  isSpicy = true;
                },
                label: Text('Spicy',
                    style: TextStyle(color: Colors.white)),
                icon: Icon(Icons.check, color: Colors.white),
                style:ElevatedButton.styleFrom(
                    primary: d_green,
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              ElevatedButton.icon(
                onPressed : () {
                  isSpicy = false;
                },
                label: Text('Not Spicy',
                    style: TextStyle(color: Colors.white)),
                icon: Icon(Icons.check, color: Colors.white),
                style:ElevatedButton.styleFrom(
                    primary: d_green,
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed : () {
                  isHealthy = true;
                  createPopUp(context);
                },
                label: Text('Healthy',
                    style: TextStyle(color: Colors.white)),
                icon: Icon(Icons.check, color: Colors.white),
                style:ElevatedButton.styleFrom(
                    primary: d_green,
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              ElevatedButton.icon(
                onPressed : () {
                  isHealthy = false;
                },
                label: Text('Not Healthy',
                    style: TextStyle(color: Colors.white)),
                icon: Icon(Icons.check, color: Colors.white),
                style:ElevatedButton.styleFrom(
                    primary: d_green,
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
      ]
      )
      ),
    );
  }
}