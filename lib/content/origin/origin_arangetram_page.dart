import 'package:flutter/material.dart';

class OriginArangetramPage extends StatelessWidget {
  const OriginArangetramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Arangetram Ceremony",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
      ),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xfff3e5f5),
              Color(0xffede7f6),
              Color(0xffe8eaf6),
            ],
          ),
        ),

        child: SingleChildScrollView(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                "Origin & Purpose of the Arangetram",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple.shade700,
                ),
              ),

              const SizedBox(height: 12),

              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 6,
                      spreadRadius: 2,
                      color: Colors.black26,
                    )
                  ],
                  image: DecorationImage(
                    image: AssetImage("assets/images/arangetram.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 18),

              const Text(
                """
Arangetram literally means “ascending the stage.” Traditionally, it marks 
a Bharatanatyam dancer’s formal debut public performance after years of 
rigorous training. It signifies that a student has reached a level of 
competency to present the complete dance repertoire in front of an audience.

---------------------------------------------------------

MEANING OF ARANGETRAM
----------------------
• ‘Arangu’ = stage  
• ‘Etram’  = rising / climbing  

The term symbolizes the dancer’s readiness to begin their artistic journey 
independently while honoring their guru.

---------------------------------------------------------

HISTORICAL ORIGIN
--------------------
Arangetram evolved from the ancient Gurukula system in which disciples lived 
and trained under their Guru. When the Guru determined the student had mastered:
• foundational adavus  
• abhinaya vocabulary  
• rhythmic skill  
• stamina and repertoire  

they were granted permission to perform for the community.

Historically, temple dancers and Devadasis underwent similar initiation rites 
before ceremonial performance offerings at temples.

---------------------------------------------------------

STRUCTURE OF THE CEREMONY
----------------------------
Traditionally the performance includes:
• Pushpanjali  
• Alarippu  
• Jatiswaram  
• Shabdam  
• Varnam  
• Padams & Javalis  
• Tillana  
• Mangalam  

This sequence forms the classic Bharatanatyam “margam” framework.

---------------------------------------------------------

CULTURAL SIGNIFICANCE
-----------------------
Arangetram is not merely a performance milestone—it carries cultural, social 
and spiritual meaning:

• acknowledges the Guru-Shishya lineage  
• honors years of practice and discipline  
• expresses devotion to divine art  
• introduces the dancer to the artistic community  

For the family, it symbolizes pride, gratitude, and tradition continuing 
across generations.

---------------------------------------------------------

MODERN EVOLUTION
-----------------
In contemporary practice, Arangetram has transformed into a major cultural 
event featuring:
• orchestral ensemble (nattuvanar, mridangam, violin, vocals)  
• stage lighting and thematic choreography  
• multimedia presentations  

While some criticize its commercialization, the ceremony remains a cherished 
rite of passage preserving classical heritage.

---------------------------------------------------------

RESPONSIBILITY AFTER ARANGETRAM
--------------------------------
Arangetram is not considered the end but the beginning. Dancers are expected to:
• deepen technique  
• expand repertoire  
• perform regularly  
• pursue advanced training  
• maintain humility toward Guru and art  

The journey of Bharatanatyam continues beyond the first stage ascent.

---------------------------------------------------------

LEGACY
------
The Arangetram celebrates dedication, devotion and discipline. It is a symbol 
of commitment—not only to performance skill but to the spiritual and cultural 
values embedded in Bharatanatyam tradition.

""",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                ),
              ),

              const SizedBox(height: 20),

              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    "Back to Menu",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
