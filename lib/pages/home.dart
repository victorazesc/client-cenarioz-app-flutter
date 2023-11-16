import 'package:flutter/material.dart';

import '../components/SearchBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight), child: SearchBar()),
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: _buildBody(),
    );
  }
}

PreferredSizeWidget _buildAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(kToolbarHeight),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
          side: BorderSide(color: Color(0xFFDEDEDE), width: 0.5),
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'O que você está planejando?',
            border: InputBorder.none,
            contentPadding: EdgeInsets.zero,
          ),
        ),
        actions: <Widget>[
          InkWell(
            onTap: () {
              // Ação a ser executada quando o botão for pressionado
            },
            child: Container(
              width: 36.0,
              height: 36.0,
              decoration: BoxDecoration(
                color: Colors.grey[200], // Cor de fundo do botão
                borderRadius: BorderRadius.circular(18.0), // Borda arredondada
              ),
              child: Icon(
                Icons.filter_list,
                color: Colors.grey[600], // Cor do ícone
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget _buildBottomNavigationBar() {
  return BottomNavigationBar(
    currentIndex: 0,
    items: [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Início',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.explore),
        label: 'Explorar',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: 'Carrinho',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.favorite_border),
        label: 'Favoritos',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.person_outline),
        label: 'Perfil',
      ),
    ],
  );
}

Widget _buildBody() {
  return ListView.builder(
    itemCount: 20,
    itemBuilder: (context, index) {
      return ListTile(
        leading: const Icon(Icons.shopping_bag),
        title: Text('Produto $index'),
        subtitle: Text('Descrição do produto $index'),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {},
      );
    },
  );
}
