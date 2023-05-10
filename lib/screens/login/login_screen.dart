import 'dart:async';
import 'dart:io';
import 'package:aplicativo_cepera/screens/login/components/form_login.dart';
import 'package:aplicativo_cepera/screens/login/components/logo_login.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loading = false;
  final _nomeController = TextEditingController();
  final _senhaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  //final controller = Get.put(LoginController());

  @override
  void initState() {
    super.initState();
   // getLogin();
  }
/*
  void getLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _nomeController.text = prefs.getString("email") ?? "";
    _senhaController.text = prefs.getString("senha") ?? "";
  }

  void saveLogin(String email, String senha) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("email", email);
    prefs.setString("senha", senha);
  }
*/
  void _onLoading() {
    setState(() {
      loading = !loading;
    });
  }

  @override
  void dispose() {
    _nomeController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: WillPopScope(
        onWillPop: () {
          exit(0);
        },
        child: Scaffold(

          backgroundColor: const Color.fromRGBO(42, 44, 43, 1),
          body: Container(
            padding: const EdgeInsets.all(20),
            child: Stack(children: [
                Align(
                  alignment: const Alignment(-4.00, -1.35),
                  child: Image.asset(
                    "assets/images/box2.png",
                    color:
                        Theme.of(context).colorScheme.tertiary.withOpacity(0.4),
                  ),
                ),             
                Align(
                  alignment: const Alignment(5.80, 0.10),
                  child: Image.asset(
                    "assets/images/box.png",
                    color:
                        Theme.of(context).colorScheme.tertiary.withOpacity(0.4),
                  ),
                ),
              SingleChildScrollView(
                child:
                    Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const LogoLoginComponent(),
                    FormLoginComponent(
                      keyForm: _formKey,
                      nomeController: _nomeController,
                      senhaController: _senhaController,
                    ),  
                    SizedBox(height: 20,),
                    SizedBox(
                      width: double.infinity - 20,
                      height: 50,
                      child: FloatingActionButton(
                     child: const Text('Entrar'),
                       
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            var connectivityResult =
                                await (Connectivity().checkConnectivity());
                            if (connectivityResult ==
                                ConnectivityResult.mobile) {
                              Get.snackbar(
                                "Sem conexão com a internet!",
                                "Verifique sua conexão e tente novamente!",
                                icon: const Icon(
                                  Icons
                                      .signal_cellular_connected_no_internet_4_bar,
                                  color: Colors.white,
                                ),
                                snackPosition: SnackPosition.TOP,
                                backgroundColor: Colors.red,
                                colorText: Colors.white,
                              );
                            
                            } else {
                              Get.snackbar(
                                "Sem conexão com a internet!",
                                "Verifique sua conexão e tente novamente!",
                                icon: const Icon(
                                  Icons
                                      .signal_cellular_connected_no_internet_4_bar,
                                  color: Colors.white,
                                ),
                                snackPosition: SnackPosition.TOP,
                                backgroundColor: Colors.red,
                                colorText: Colors.white,
                              );
                            }
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    /*
                    loading
                        ? Lottie.asset(
                            "assets/images/loading1.json",
                            width: 100,
                            height: 100,
                          )
                        : const SizedBox(
                            height: 0,
                            width: 0,
                          ),
                          */
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}