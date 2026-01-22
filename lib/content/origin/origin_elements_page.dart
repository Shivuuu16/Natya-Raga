import 'package:flutter/material.dart';

class OriginElementsPage extends StatelessWidget {
  const OriginElementsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Origin – Core Elements of Bharatanatyam"),
        backgroundColor: Colors.black,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Text(
          '''
Core Elements of Bharatanatyam  
==============================

Introduction  
------------

Bharatanatyam is constructed on a sophisticated framework synthesizing movement, expression, musicality, spirituality, and narrative tradition. Its structure reflects classical Sanskrit treatises, temple ritual practices, and regional aesthetic evolution across centuries. The grammar integrates precision and fluidity, discipline and devotion.

The Meaning of Bharata  
----------------------

A popular interpretation:  

BHA → Bhava (emotion)  
RA → Raga (melody)  
TA → Tala (rhythm)  

Natyam → dance–drama expression.  

Combined, Bharatanatyam becomes the art of expressing emotion through melody and rhythm in dramatic form.

Underlying Philosophy  
---------------------

Rooted in Natya Shastra aesthetics, Bharatanatyam expresses human experience toward spiritual realization. Dance becomes offering:  

• physical discipline  
• emotional purification  
• symbolic expression  
• ritual devotion  
• transcendence through movement  

Movement as prayer forms core philosophy.

Adavus – Basic Units of Movement  
---------------------------------

Adavus form rhythmic movement patterns combining:  

• footwork  
• leg positions  
• torso alignment  
• arm gestures  
• rhythmic syllables  

Foundational series:  

• Tatta Adavu  
• Natta Adavu  
• Visharu  
• Tatti Mettu  
• Kudittu Mettu  
• Kuttadavu  
• Sarukkal etc.  

Precision requires years of disciplined training.

Mudras – Hand Gestures  
-----------------------

Hasta mudras codify gesture language. Two categories:  

• Asamyuta (single hand)  
• Samyuta (double hand)  

Mudras communicate image, action, relationship, or idea. Based on Abhinaya Darpana textual tradition.

Abhinaya – Expressive Technique  
-------------------------------

Abhinaya manifests emotional states and dramatic meaning through coordinated expression. Four types:  

• Angika – physical gesture  
• Vachika – recitation/music  
• Aharya – costume and makeup  
• Sattvika – internal emotional state  

Goal is rasa experience shared between dancer and audience.

Music Tradition  
---------------

Music uses Carnatic classical tradition:  

• ragas for melodic expression  
• talas structuring rhythm  
• nattuvangam recitation  
• mridangam percussion  
• vocal compositions  

Music and movement form inseparable unity.

Costume and Ornamentation  
-------------------------

Costume evolved from temple tradition to stage aesthetics:  

• silk pleated saree adaptations  
• temple jewelry designs  
• hair adorned with flowers  
• forehead tilak  
• belt supporting structure  

Symbolism reflects divine iconography.

Repertoire – Margam  
-------------------

Traditional performance follows structured pathway toward spiritual culmination:  

1. Alarippu  
2. Jatiswaram  
3. Shabdam  
4. Varnam  
5. Padam  
6. Tillana  
7. Shlokam/Mangalam  

Each section deepens expressive and rhythmic complexity.

Spatial Geometry  
----------------

Movements emphasize:  

• symmetry  
• angular lines  
• grounded postures (Araimandi)  
• firm rhythmic precision  

Spatial design mirrors temple architecture symbolism.

Conclusion  
----------

These elements form integrated aesthetic whole. Bharatanatyam remains living heritage sustained through devotion, discipline, and artistic lineage.

''',
          style: TextStyle(fontSize: 16, height: 1.4),
        ),
      ),
    );
  }
}
