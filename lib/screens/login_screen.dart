import 'package:flutter/material.dart';
import '../widgets/custom_box.dart';
import '../widgets/icon_button.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.person_outline),
          onPressed: () {
            Navigator.pushNamed(context, '/profile');
          },
          color: Color(0xFFF5F5F5),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.visibility_outlined, color: Color(0xFFF5F5F5)),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.question_mark_rounded, color: Color(0xFFF5F5F5)),
          ),
          IconButton(
            onPressed: () {},
            icon:
                Icon(Icons.mark_email_read_outlined, color: Color(0xFFF5F5F5)),
          ),
        ],
        backgroundColor: Color(0xFF8A05BE),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Conta(),
            SizedBox(height: 30),
            buildIconRow(),
            SizedBox(height: 30),
            CustomBox(
              text: "Meus Cartões",
              backgroundColor: Color(0xfff8f5fa),
              textColor: Color(0xff524c57),
              padding: 20.0,
              icon: Icons.credit_card,
            ),
            SizedBox(height: 10),
            buildMoneyBox(),
            SizedBox(height: 30),
            buildCreditCardSection(),
            SizedBox(height: 10),
            buildLoanSection(),
            Divider(color: Colors.grey), // Linha abaixo da seção Empréstimo
            SizedBox(height: 10),
            buildDiscoverMoreSection(),
          ],
        ),
      ),
    );
  }

  Widget Conta() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Conta",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("R\$1.000,00",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
        Icon(Icons.arrow_forward_ios, size: 20),
      ],
    );
  }

  Widget buildIconRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButtonWidget(icon: Icons.pix, label: "Área Pix"),
        IconButtonWidget(icon: Icons.money, label: "Pagamentos"),
        IconButtonWidget(icon: Icons.qr_code, label: "QRCode"),
        IconButtonWidget(icon: Icons.attach_money, label: "Transferir"),
      ],
    );
  }

  // Método para criar a seção de cartão de crédito
  Widget buildCreditCardSection() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.1),
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(color: Colors.grey),
          Text("Cartão de Crédito",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          SizedBox(height: 10),
          Text("Fatura Fechada",
              style: TextStyle(fontSize: 18, color: Colors.black54)),
          SizedBox(height: 10),
          Text("R\$2.123,39",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          SizedBox(height: 10),
          Text("Vencimento dia 15",
              style: TextStyle(fontSize: 18, color: Colors.black54)),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xfff8f5fa),
            ),
            child:
                Text("Renegociar", style: TextStyle(color: Color(0xff000000))),
          ),
          Divider(color: Colors.grey),
        ],
      ),
    );
  }

  // Método para criar a seção de empréstimo
  Widget buildLoanSection() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.1),
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Empréstimo",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          SizedBox(height: 10),
          Text("Tudo certo! Você está em dia", style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }

  // Método para criar a seção "Descubra Mais"
  Widget buildDiscoverMoreSection() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Descubra Mais",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          SizedBox(height: 10),
          // Seção de Seguro de Vida
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xfff8f5fa),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('images/seguroVida.png'),
                SizedBox(height: 10),
                Text("Seguro de Vida",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                SizedBox(height: 5),
                Text("Cuide bem de quem você ama de um jeito simples",
                    style: TextStyle(fontSize: 14, color: Colors.black54)),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF8A05BE),
                  ),
                  child:
                      Text("Conhecer", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Método para criar a caixa de dinheiro
  Widget buildMoneyBox() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xfff8f5fa),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Guarde seu dinheiro em caixinhas",
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF8A05BE),
                  fontWeight: FontWeight.bold)),
          Text("Acessando a área de planejamento",
              style: TextStyle(fontSize: 14, color: Colors.black54)),
        ],
      ),
    );
  }
}
