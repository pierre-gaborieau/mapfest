import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mapfest/constant.dart';
import 'constant.dart';
import 'constant.dart';
import 'screens/home/home_page.dart';

const users = const {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
};

class LoginScreen extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String> _authUser(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'L\'utilisateur n\'existe pas';
      }
      if (users[data.name] != data.password) {
        return 'Le mot de passe est incorrect';
      }
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'L\'utilisateur n\'existe pas';
      }
      return null;
    });
  }

  FormFieldValidator a(String email) {}

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      emailValidator: (value) {
        if (value.isEmpty) {
          return "Email non valide";
        }
        return null;
      },
      passwordValidator: (value) {
        if (value.isEmpty) {
          return "Mot de passe non valide";
        }
        return null;
      },
      theme: LoginTheme(
          pageColorLight: vPrimaryColor,
          pageColorDark: vPrimaryColor,
          primaryColor: vPrimaryColor,
          accentColor: vPrimaryColor),
      title: vAppName,
      onLogin: _authUser,
      onSignup: _authUser,
      loginProviders: <LoginProvider>[
        LoginProvider(
          icon: FontAwesomeIcons.google,
          callback: () async {
            print('start google sign in');
            await Future.delayed(loginTime);
            print('stop google sign in');
            return null;
          },
        ),
        LoginProvider(
          icon: FontAwesomeIcons.facebookF,
          callback: () async {
            print('start facebook sign in');
            await Future.delayed(loginTime);
            print('stop facebook sign in');
            return null;
          },
        ),
      ],
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
      },
      messages: LoginMessages(
          usernameHint: "Adresse Email",
          passwordHint: "Mot de passe",
          forgotPasswordButton: "Mot de passe oublié ?",
          confirmPasswordError: "Mot de passe erroné",
          signUpSuccess: "Connexion...",
          loginButton: "Connexion",
          signupButton: "Inscription",
          confirmPasswordHint: "Confirmer le mot de passe",
          recoverPasswordDescription:
              "Nous vous enverrons un lien à cette adresse",
          goBackButton: "Retour",
          recoverPasswordButton: "Valider",
          flushbarTitleError: "Erreur",
          flushbarTitleSuccess: "Succes"),
      onRecoverPassword: _recoverPassword,
    );
  }
}
