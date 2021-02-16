# Icon with text
body: Center(
        child: RaisedButton.icon(
          onPressed: () {
            print("You CLicked me");
          },
          icon: Icon(Icons.mail),
          label: Text('Mail me'),
          color: Colors.amber,
        ),
      ),
# Sample COntainer
Container(
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
        margin: EdgeInsets.all(30.0),
        color: Colors.grey[400],
        child: Text('Hello'),
      ),
# Padding
Padding(
        padding: EdgeInsets.all(90.0),
        child: Text('hello'),
      ),
# ROw
 Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Hello, World'),
          FlatButton(
            onPressed: () {},
            color:Colors.amber,
            child: Text('Click Here')
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30.0),
            child: Text('Inside')
          ),
        ],
      ),
# Column
Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          
          Container(
            padding:EdgeInsets.all(20.0),
            color: Colors.cyan,
            child: Text('one')
          ),
          Container(
            padding:EdgeInsets.all(30.0),
            color: Colors.red,
            child: Text('two')
          ),
          Container(
            padding:EdgeInsets.all(40.0),
            color: Colors.pink,
            child: Text('three')
          )
        ],
      ),
# Expanded 
Row(
        children: <Widget>[
          Expanded(
            flex:3,
            child: Image.asset('assets/img1.jfif')),
          Expanded(
            flex: 3,
                      child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.cyan,
              child: Text('1')
            ),
          ),
         Expanded(
           flex: 2,
                    child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.pink,
              child: Text('2')
            ),
         ),
          Expanded(
            flex: 1,
                      child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.amber,
              child: Text('3')
            ),
          ),
        ],
      ),
# Img
Image.asset('assets/img1.jfif'),
# Icon
Icon(
                  Icons.email,
                  color: Colors.grey[400],
                )
# card
Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img1.jfif'),
                radius: 40.0
              )
            ),
            Divider(
              height: 60.0,
            ),
            Text('NAME',style: TextStyle(color: Colors.grey,letterSpacing: 2.0)),
            SizedBox(height:10.0),
            Text(
              'Heinrich Smith Ondeyo',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight:FontWeight.bold
                )
            ),
            SizedBox(height:20.0),
            Text('LEVEL',style: TextStyle(color: Colors.grey,letterSpacing: 2.0)),
            SizedBox(height:10.0),
            Text(
              '8',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight:FontWeight.bold
                )
            ),
            SizedBox(height:30.0),
            Row(
              children:<Widget>[
                Icon(
                  Icons.email,
                  color: Colors.amber,
                ),
                SizedBox(width:10.0),
                Text(
                  'Email',
                  style: TextStyle(letterSpacing: 2.0,
                  color: Colors.grey,
                  ),
                )
              ],
            ),
            SizedBox(height:10.0),
            Text(
              'heinrichsmith360@gmail.com',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight:FontWeight.bold
                )
            ),
          ],
        ),
      ),
# Data calling
'$ninjalevel',
# change state
onPressed: () {
          setState(() {
            ninjalevel += 1;
          });
          
        },
# change state 2
Scaffold(
      appBar: AppBar(
        title: Text('Ninja Id Card'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
                child: CircleAvatar(
                    backgroundImage: AssetImage('assets/img1.jfif'),
                    radius: 40.0)),
            Divider(
              height: 60.0,
            ),
            Text('NAME',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
            SizedBox(height: 10.0),
            Text('Heinrich Smith Ondeyo',
                style: TextStyle(
                    color: Colors.amber,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 20.0),
            Text('LEVEL',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
            SizedBox(height: 10.0),
            Text('$ninjalevel',
                style: TextStyle(
                    color: Colors.amber,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.amber,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Email',
                  style: TextStyle(
                    letterSpacing: 2.0,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            SizedBox(height: 10.0),
            Text('heinrichsmith360@gmail.com',
                style: TextStyle(
                    color: Colors.amber,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjalevel += 1;
          });
          
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.amber,
      ),
    );
# list
List<String> quote = [
    'Believe in yourself',
    'Dont be lazy men',
    'I believe in you'
  ];
  body: Column(
          children: quotes.map((quote){
            return Text(quote);
        }).toList(),
        or 
         children: quotes.map((quote) => Text(quote)).toList(),
# custom class
Quote({String text, String author}) {
    this.text = text;
    this.author = author;
  }
  # code
  import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: Quotelist(),
    ));

class Quotelist extends StatefulWidget {
  Quotelist({Key key}) : super(key: key);

  @override
  _QuotelistState createState() => _QuotelistState();
}

class _QuotelistState extends State<Quotelist> {
  List<Quote> quotes = [
    Quote(author: 'Oscar Sparta', text: 'Wacha ufalas'),
    Quote(author: 'Smith', text: 'Wacha ufala'),
    Quote(author: 'Martin Smith', text: 'Wacha ufala sana')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          title: Text('Lazy Quotes For you'),
          centerTitle: true,
          backgroundColor: Colors.transparent
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: quotes
                .map((quote) => QuoteCard(
                    quote: quote,
                    delete: () {
                      setState(() {
                        quotes.remove(quote);
                      });
                    }))
                .toList(),
          ),
        ));
  }
}
