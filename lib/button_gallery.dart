import 'package:flutter/material.dart';

import 'profile_screen.dart';
import 'details_screen.dart';
import 'settings_screen.dart';

class ButtonGallery extends StatelessWidget {
  const ButtonGallery({super.key});

  void showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Gallery'),
        centerTitle: true,

        actions: [

          // Icon Button
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
            icon: const Icon(Icons.person),
            tooltip: 'Profile',
          ),

          // Settings IconButton
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
            icon: const Icon(Icons.settings),
            tooltip: 'Settings',
          ),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              const Text(
                'Material Button Gallery',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Explore different Flutter Material buttons',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 30),

              // ------------------------------------------------
              // NAVIGATION BUTTONS
              // ------------------------------------------------

              const Text(
                'Navigation Buttons',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              // Elevated Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailsScreen(),
                    ),
                  );
                },
                child: const Text('Open Details'),
              ),

              const SizedBox(height: 12),

              // Filled Button
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                child: const Text('Profile'),
              ),

              const SizedBox(height: 12),

              // Filled Tonal Button
              FilledButton.tonal(
                onPressed: () {
                  Navigator.pushNamed(context, '/settings');
                },
                child: const Text('Settings'),
              ),

              const SizedBox(height: 30),

              // ------------------------------------------------
              // MATERIAL BUTTON VARIANTS
              // ------------------------------------------------

              const Text(
                'Material Button Styles',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              // Outlined Button
              OutlinedButton(
                onPressed: () {
                  showMessage(
                    context,
                    'Outlined Button pressed',
                  );
                },
                child: const Text('Outlined Button'),
              ),

              const SizedBox(height: 12),

              // Text Button
              TextButton(
                onPressed: () {
                  showMessage(
                    context,
                    'Text Button pressed',
                  );
                },
                child: const Text('Text Button'),
              ),

              const SizedBox(height: 12),

              // Button with Icon
              ElevatedButton.icon(
                onPressed: () {
                  showMessage(
                    context,
                    'Add button pressed',
                  );
                },
                icon: const Icon(Icons.add),
                label: const Text('Add Item'),
              ),

              const SizedBox(height: 12),

              // Another Filled Button with icon
              FilledButton.icon(
                onPressed: () {
                  showMessage(
                    context,
                    'Download started',
                  );
                },
                icon: const Icon(Icons.download),
                label: const Text('Download'),
              ),

              const SizedBox(height: 30),

              // ------------------------------------------------
              // CUSTOM BUTTON
              // ------------------------------------------------

              const Text(
                'Custom Styled Button',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              SizedBox(
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    showMessage(
                      context,
                      'Custom button pressed',
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 5,
                  ),

                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star),
                      SizedBox(width: 10),
                      Text(
                        'Custom Button',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // ------------------------------------------------
              // INFORMATION
              // ------------------------------------------------

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(18),

                  child: Column(
                    children: const [

                      Icon(
                        Icons.touch_app,
                        size: 40,
                      ),

                      SizedBox(height: 10),

                      Text(
                        'Button Actions',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 8),

                      Text(
                        'Try the buttons above to explore '
                            'different Flutter actions and navigation methods.',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showMessage(
            context,
            'Floating Action Button pressed',
          );
        },
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}