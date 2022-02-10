import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_base/controllers/login_controller.dart';
import 'package:mobx_base/widgets/custom_icon_button.dart';
import 'package:mobx_base/widgets/custom_text_field.dart';

import 'list_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController loginController = LoginController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Card(
            margin: const EdgeInsets.all(32),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 16,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Entrar',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Observer(builder: (context) {
                    return CustomTextField(
                      hint: 'E-mail',
                      prefix: const Icon(Icons.account_circle),
                      textInputType: TextInputType.emailAddress,
                      onChanged: loginController.setEmail,
                      enabled: true,
                    );
                  }),
                  const SizedBox(height: 16),
                  Observer(builder: (context) {
                    return CustomTextField(
                      hint: 'Senha',
                      prefix: const Icon(Icons.lock),
                      obscure: !loginController.passwordVisible,
                      onChanged: loginController.setPassword,
                      enabled: true,
                      suffix: CustomIconButton(
                        radius: 32,
                        iconData: loginController.passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        onTap: loginController.togglePasswordVisible,
                      ),
                    );
                  }),
                  const SizedBox(height: 16),
                  Observer(builder: (context) {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        primary: Theme.of(context).primaryColor,
                        textStyle: const TextStyle(color: Colors.white),
                        padding: const EdgeInsets.all(12),
                      ),
                      child: const Text('Login'),
                      onPressed: loginController.buttonEnabled
                          ? () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (_) => const ListScreen()),
                              );
                            }
                          : null,
                    );
                  })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
