import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key, required this.title});

  void _launchURL(String url) {
    print(
      'Intentando abrir URL: $url (Deberías usar la librería url_launcher)',
    );
  }

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Acerca del Desarrollador'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          // Sección de Encabezado/Perfil
          Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            margin: const EdgeInsets.only(bottom: 30),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  // Avatar o Logo
                  CircleAvatar(
                    radius: 50,
                    // Usamos NetworkImage para URLs de internet
                    backgroundImage: NetworkImage(
                      'https://github.com/Ginosaurio04/flutter_application_gino/blob/main/assets/Imagen%20de%20WhatsApp%202025-10-27%20a%20las%2021.03.40_2b373c4c.jpg',
                    ),
                    backgroundColor: Theme.of(
                      context,
                    ).colorScheme.primaryContainer,
                  ),
                  const SizedBox(height: 20),
                  // Nombre del Desarrollador
                  const Text(
                    'Gino Cova (Ginosaurio)',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  // Rol/Título
                  Text(
                    'Estudiante y futuro Ingeniero de Sistemas',
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(left: 10, bottom: 10),
            child: Text(
              'Contacto y Portafolio',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),

          // Tarjeta con información de contacto
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: <Widget>[
                // GitHub
                ListTile(
                  leading: const Icon(
                    Icons.alternate_email,
                    color: Colors.purpleAccent,
                  ),
                  title: const Text('GitHub'),
                  subtitle: const Text('Ginosaurio04'),
                  trailing: const Icon(Icons.open_in_new),
                  onTap: () => _launchURL('https://github.com/Ginosaurio04'),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // Información Adicional
          Text(
            'Versión de la App: 1.0.0',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).colorScheme.outline,
            ),
          ),
        ],
      ),
    );
  }
}
