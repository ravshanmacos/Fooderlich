import 'dart:developer';
import 'package:flutter/material.dart';
import '../style/fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/mag2.png'), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
        child: Stack(
          children: [
            // TODO: Add dark overlay BoxDecoration
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(Radius.circular(10.0))
              )
            ),

            // TODO: Add container, column and icon
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.book, color: Colors.white, size: 40),
                  const SizedBox(height: 8),
                  Text('Recipe Trends', style: FooderlichTheme.darkTextTheme.headlineMedium),
                  const SizedBox(height: 30)
                ],
              )
            ),

            // TODO: Add center widget with Chip widget children
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 12,
                runSpacing: 12,
                children: [
                  Chip(
                    label: Text('Healthy', style: FooderlichTheme.darkTextTheme.bodyLarge),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      log('Deleted');
                    },
                  ),

                  Chip(
                    label: Text('Vegan', style: FooderlichTheme.darkTextTheme.bodyLarge),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      log('Deleted');
                    },
                  ),

                  Chip(
                    label: Text('Carrots', style: FooderlichTheme.darkTextTheme.bodyLarge),
                    backgroundColor: Colors.black.withOpacity(0.7)
                  ),

                  Chip(
                    label: Text('Green', style: FooderlichTheme.darkTextTheme.bodyLarge),
                    backgroundColor: Colors.black.withOpacity(0.7)
                  ),

                  Chip(
                    label: Text('Wheat', style: FooderlichTheme.darkTextTheme.bodyLarge),
                    backgroundColor: Colors.black.withOpacity(0.7)
                  ),

                  Chip(
                    label: Text('Pescetarian', style: FooderlichTheme.darkTextTheme.bodyLarge),
                    backgroundColor: Colors.black.withOpacity(0.7)
                  ),

                  Chip(
                    label: Text('Mint', style: FooderlichTheme.darkTextTheme.bodyLarge),
                    backgroundColor: Colors.black.withOpacity(0.7)
                  ),

                  Chip(
                    label: Text('LemonGrass', style: FooderlichTheme.darkTextTheme.bodyLarge),
                    backgroundColor: Colors.black.withOpacity(0.7)
                  ),

                  
                ]
              )
            )
          ],
        )
      )
    );
  }
}