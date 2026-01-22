import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'screens/landing_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://enssrweahwguomnyhiek.supabase.co',
    anonKey: 'sb_publishable_PuqTztL_tWhOVkBVxP18ig_295xbDi7',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Natya Raga',
      home: LandingPage(), // ✅ START PAGE
    );
  }
}
