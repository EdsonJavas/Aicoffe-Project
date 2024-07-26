import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade800,
        title: Text(
          'Aicoffe',
          style: GoogleFonts.roboto(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            textStyle: const TextStyle(color: Colors.white)
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.white),
            onPressed: () {
              // Ação para o perfil do usuário
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Campo de Pesquisa e Foto de Perfil
          _buildTopBar(context),
          const SizedBox(height: 10), // Espaço entre o campo de pesquisa e o banner
          // Banner com imagem de fundo
          _buildBanner(),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Nossos Produtos',
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Lista de produtos ou categorias
          Expanded(
            child: _buildProductList(),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.brown.shade800,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home, color: Colors.white),
              onPressed: () {
                // Ação para a página inicial
              },
            ),
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {
                // Ação para pesquisa
              },
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {
                // Ação para o carrinho de compras
              },
            ),
            IconButton(
              icon: const Icon(Icons.account_circle, color: Colors.white),
              onPressed: () {
                // Ação para perfil
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.brown.shade800,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Pesquisar...',
                hintStyle: GoogleFonts.roboto(color: Colors.white70),
                prefixIcon: const Icon(Icons.search, color: Colors.white),
                filled: true,
                fillColor: Colors.brown.shade600,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
              ),
            ),
          ),
          const SizedBox(width: 16.0),
        ],
      ),
    );
  }

  Widget _buildBanner() {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images/banner.jpg'), // Exemplo de imagem de banner
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
    );
  }

  Widget _buildProductList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView(
        children: <Widget>[
          _buildProductItem('Café Expresso', 'assets/images/espresso.jpg'),
          _buildProductItem('Latte', 'assets/images/latte.jpg'),
          _buildProductItem('Cappuccino', 'assets/images/cappuccino.jpg'),
          // Adicione mais itens conforme necessário
        ],
      ),
    );
  }

  Widget _buildProductItem(String title, String imagePath) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(8.0),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(imagePath, width: 60, height: 60, fit: BoxFit.cover),
        ),
        title: Text(
          title,
          style: GoogleFonts.roboto(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Icon(Icons.arrow_forward, color: Colors.brown.shade600),
        onTap: () {
          // Ação para o clique do item
        },
      ),
    );
  }
}
