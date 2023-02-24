import 'package:flutter/material.dart';
import 'package:nubank_flutter/pages/home/widgets/item_menu_bottom.dart';

class BottomMenu extends StatelessWidget {
  final bool showMenu;
  

  const BottomMenu({super.key, required this.showMenu});

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
              duration: Duration(milliseconds: 200),
              bottom:
                  !showMenu ? 20 + MediaQuery.of(context).padding.bottom : 0,
              left: 0,
              right: 0,
              height: MediaQuery.of(context).size.height * 0.14,
              child: IgnorePointer(
                ignoring: showMenu,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 200),
                  opacity: !showMenu ? 1 : 0,
                  child: Container(
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        ItemMenuBottom(
                          icon: Icons.person_add,
                          text: 'indicar amigos',
                        ),
                        ItemMenuBottom(
                          icon: Icons.phone_android,
                          text: 'recarga de celular',
                        ),
                        ItemMenuBottom(
                          icon: Icons.chat,
                          text: 'cobrar',
                        ),
                        ItemMenuBottom(
                          icon: Icons.monetization_on,
                          text: 'empréstimos',
                        ),
                        ItemMenuBottom(
                          icon: Icons.move_to_inbox,
                          text: 'depositar',
                        ),
                        ItemMenuBottom(
                          icon: Icons.mobile_screen_share,
                          text: 'transferir',
                        ),
                        ItemMenuBottom(
                          icon: Icons.format_align_center,
                          text: 'ajustar limite',
                        ),
                        ItemMenuBottom(
                          icon: Icons.barcode_reader,
                          text: 'pagar',
                        ),
                        ItemMenuBottom(
                          icon: Icons.lock_open,
                          text: 'bloquear cartão',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
  }
}