import 'package:flutter/material.dart';
import 'package:netflix/input_decoration.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  String search;

  @override
  Widget build(BuildContext context) {
    SizedBox sizedBox() => SizedBox(height: 20.0);
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 1,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/background.jpg'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width * 0.03,
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/logo.png'),
                      ),
                    ),
                    Spacer(),
                    RaisedButton(
                      onPressed: () {},
                      color: Colors.red,
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Container(
                width: 900,
                child: Text(
                  'Unlimited moveis, TV shows, and more.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 70.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              sizedBox(),
              Text(
                'Watch anywhere. Cancel anytime.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
              sizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 65,
                    width: 700,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        onChanged: (value) {
                          search = value;
                        },
                        decoration: textInputDecoration(),
                      ),
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 250,
                    color: Color(0xffE0300F),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text(
                            'TRY IT NOW',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              sizedBox(),
              Text(
                'Ready to watch? Enter your email to create or restart your membership.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
