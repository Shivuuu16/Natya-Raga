import 'package:flutter/material.dart';

class OriginDevadasiPage extends StatelessWidget {
  const OriginDevadasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Devadasi System",
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

              /// HEADER TITLE
              Text(
                "Origin & Role of Devadasis in Bharatanatyam",
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
                    image: AssetImage("assets/images/devadasi.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 18),

              const Text(
                """
The Devadasi tradition occupies a significant and complex role in the 
evolution of Bharatanatyam. Before the dance became a concert-stage art 
form, it was practiced primarily in temple spaces by dedicated women who 
were referred to as “Devadasis” – literally meaning ‘servants of god’.

This page explores the historical background, cultural contexts, social 
transformations, and artistic contributions of Devadasis in shaping 
Bharatanatyam.

--------------------------------------------------------------------

HISTORICAL ROOTS
--------------------
The Devadasi system is believed to have developed around the 6th century CE 
during the rise of Bhakti movement. Female temple servants were trained in 
music, Sanskrit literacy, dance, rituals, service, and artistic etiquette.  

They belonged to hereditary lineages of temple artists known as  
*“Isai Vellalar”* communities in Tamil Nadu.

Devadasis were not ordinary temple servants:
• They were highly respected custodians of sacred traditions  
• Received patronage from kings, temples and elites  
• Performed ritual dances as offering to deities  

Their dance evolved as a codified art called *Dasiattam* – precursor to modern Bharatanatyam.

--------------------------------------------------------------------

ROLE IN TEMPLES
--------------------
Devadasis performed:
• Nitya Seva—daily worship rituals    
• Annual temple festivals  
• Processions accompanying deities  
• Rituals symbolizing divine marriage  

Dance was believed to invoke divine presence and sustain temple spirituality.

--------------------------------------------------------------------

ARTISTIC CONTRIBUTIONS
------------------------
Devadasi repertoire contributed:
• Abhinaya (expressive storytelling)  
• Many padams, javalis, varnam themes  
• Use of *Sringara rasa*  
• Personal interpretation in gestural storytelling  

Many compositions praised divine love: Radha-Krishna, Meera, Shiva-Parvati etc.

--------------------------------------------------------------------

DECLINE OF THE DEVADASI SYSTEM
------------------------------
During late 19th & 20th century:
• British colonial morality condemned ritual dances  
• Anti-nautch movement banned performances  
• Temple patronage declined  
• Devadasis faced exploitation and social stigma  

This led to legal abolition and collapse of hereditary tradition.

--------------------------------------------------------------------

REVIVAL & MODERN BHARATANATYAM
--------------------------------
Visionaries revived temple dance as a classical stage art:
• Rukmini Devi Arundale  
• Balasaraswati  
• Later, Kalakshetra movement  

Devadasi repertoire was restructured into:
• margam format  
• spiritual ideology  
• stage-friendly presentation  

Yet, Devadasi heritage remains foundation of Bharatanatyam’s abhinaya, musical vocabulary, expressiveness, rhythm, and devotion-based performance philosophy.

--------------------------------------------------------------------

LEGACY
-------
The Devadasis preserved:
• centuries of dance lineage  
• temple ritual knowledge  
• abhinaya grammar  
• compositions and musical styles  

Even though the institution dissolved, the aesthetic and expressive depth 
found in Bharatanatyam today owes much to Devadasi artistry.

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
