import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:nubank_flutter/pages/home/widgets/item_menu.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;

  const MenuApp({super.key, required this.top, required this.showMenu});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 200),
        opacity: showMenu ? 1 : 0,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.55,
          child: Column(
            children: <Widget>[
              Image.network(
                'https://www.pngmart.com/files/10/Qr-Code-PNG-Transparent-Image.png',
                height: 120,
                color: Colors.white,
              ),
              Text.rich(
                TextSpan(
                  text: 'Banco 260 - Nu Pagamentos S.A',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text.rich(
                TextSpan(
                  text: 'Agência 0001',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text.rich(
                TextSpan(
                  text: 'Conta 9623198-0',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 26,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: <Widget>[
                      ItemMenu(
                        icon: Icons.info_outline,
                        text: 'Me ajuda',
                      ),
                      ItemMenu(
                        icon: Icons.person_outline,
                        text: 'Perfil',
                      ),
                      ItemMenu(
                        icon: Icons.settings,
                        text: 'Configurar conta',
                      ),
                      ItemMenu(
                        icon: Icons.credit_card,
                        text: 'Configurar cartão',
                      ),
                      ItemMenu(
                        icon: Icons.store_mall_directory,
                        text: 'Pedir conta PJ',
                      ),
                      ItemMenu(
                        icon: Icons.phone_android,
                        text: 'Configurações do app',
                      ),
                      //         SizedBox(
                      //   height: 26,
                      // ),
                      //         Container(
                      //           height: 35,
                      //           decoration: BoxDecoration(
                      //             border: Border.all(width: 0.7, color: Colors.white54),
                      //           ),
                      //           child: ElevatedButton(
                      //                   style: ElevatedButton.styleFrom(
                      //                     primary: Colors.purple[800],
                      //                     elevation: 0,
                      //                   ),
                      //                   child: Text('SAIR DO APP', style: TextStyle(fontSize: 12),),
                      //                   onPressed: () {}),
                      //         ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
