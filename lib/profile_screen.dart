import 'package:flutter_web/material.dart';
import 'package:profile_web_demo/ResponsiveWidget.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double textSize = ResponsiveWidget.isLargeScreen(context)
        ? 80
        : ResponsiveWidget.isMediumScreen(context) ? 44 : 20;
    double descTextSize = ResponsiveWidget.isLargeScreen(context)
        ? 20
        : ResponsiveWidget.isMediumScreen(context) ? 24 : 15;
    double titleTextSize = ResponsiveWidget.isLargeScreen(context)
        ? 60
        : ResponsiveWidget.isMediumScreen(context) ? 44 : 30;

    return ResponsiveWidget(
      largeScreen: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.black,
                    child: Opacity(
                      opacity: 0.5,
                      child: Image.network(
                        'https://i.imgur.com/jY9bsY2.jpg',
                        width: width,
                        height: ResponsiveWidget.isLargeScreen(context)
                            ? height
                            : height / 2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    'ABOUT ME',
                    style: TextStyle(color: Colors.white, fontSize: textSize),
                  ),
                ],
              ),
              Container(
                width: ResponsiveWidget.isSmallScreen(context)?width/1.5:width/2,
                margin: EdgeInsets.only(top:40, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'hello!',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: titleTextSize),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                      child: Text(
                        'My name is Osama',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: descTextSize),
                      ),
                    ),
                    Text(
                      "I'm a mobile apps developer and UI/UX designer from Iraq, I also make films and love to shoot photos from time to time, I'm really into filmmaking"
                          ", also I'm studying software engineering at the University of Mosul and its my last year,  I'm enthusiastic about new tech and coding, this is why I made this website using flutter.",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: descTextSize),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
