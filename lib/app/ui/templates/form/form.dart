import 'package:flutter/material.dart';
import 'package:quiz/app/ui/templates/form/form_auto.dart';
import 'package:quiz/app/ui/templates/form/form_normal.dart';
import 'package:quiz/log/index.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<MyForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(40),
                margin: const EdgeInsets.only(
                    top: 80, bottom: 40, left: 40, right: 40),
                decoration: BoxDecoration(
                  backgroundBlendMode: BlendMode.hardLight,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.black12.withOpacity(0.8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 2,
                      blurRadius: 10,
                    )
                  ],
                ),
                child: SingleChildScrollView(
                  child: RepaintBoundary(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.only(
                            bottom: 20,
                          ),
                          child: Align(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                        ),
                        FormAuto(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
