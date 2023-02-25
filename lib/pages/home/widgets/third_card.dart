import 'package:flutter/material.dart';

class ThirdCard extends StatelessWidget {
  const ThirdCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.wallet_giftcard),
          Column(
            children: [
              Text(
                'Nubank Rewards',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(height: 15,),
              Text(
                'Acumule pontos que nunca expiram e troque por passagens aéreas ou serviços que você realmente usa.',
                style: TextStyle(color: Colors.grey[600], fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                width: 0.9,
                color: Colors.purple,
              ),
            ),
            child: ElevatedButton(
                child: Text(
                  'ATIVE O SEU REWARDS',
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                onPressed: () {}),
          )
        ],
      ),
    );
  }
}
