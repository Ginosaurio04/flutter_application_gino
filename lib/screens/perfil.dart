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
                      'data:image/png;base64,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',
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
