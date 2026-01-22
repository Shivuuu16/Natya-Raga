import 'package:flutter/material.dart';

class OriginHistoryPage extends StatelessWidget {
  const OriginHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Historical Origins",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown,
        iconTheme: const IconThemeData(color: Colors.white),
      ),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Color(0xfff7ead7),
            ],
          ),
        ),
        child: const _HistoryContent(),
      ),
    );
  }
}

class _HistoryContent extends StatelessWidget {
  const _HistoryContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const SizedBox(height: 10),

          const Text(
            "Historical Journey of Bharatanatyam",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.brown,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            """
Bharatanatyam is one of the most ancient surviving classical dance traditions in India. Its historical journey spans thousands of years, evolving through layers of mythology, devotional ritual, temple culture, royal patronage, socio-religious reform and modern stage presentation. Understanding its history provides students with reverence for its sacred origins and awareness of the forces that shaped its aesthetics.

While modern Bharatanatyam is associated primarily with Tamil Nadu, its philosophical and technical foundations draw from pan-Indian performance traditions described in texts like the Natya Shastra. The word “Bharatanatyam” itself became standardized only in the early 20th century. Before that, the dance existed under various names and forms as part of temple and court traditions.

The history of Bharatanatyam can be viewed through multiple phases:
""",
            style: TextStyle(fontSize: 16, height: 1.35),
          ),

          const SizedBox(height: 20),

          _heading("1️⃣ Mythological Origins"),

          const Text(
            """
According to Hindu mythology, dance is divine in origin. The cosmic dancer Shiva Nataraja performs the Tandava, symbolizing cycles of creation and destruction. Goddess Parvati performs Lasya, expressing grace and beauty. Classical texts describe Vishnu’s avatars dancing, apsaras performing in celestial courts and sages receiving dance as divine revelation.

The Natya Shastra narrates that Brahma created Natya as the fifth Veda to educate humanity through visual storytelling. Sage Bharata Muni received and codified these teachings, giving rise to the theoretical science of movement, rhythm and expression. In this divine framework, dance becomes spiritual practice aligning the human body with cosmic order.
""",
            style: TextStyle(fontSize: 16, height: 1.35),
          ),

          const SizedBox(height: 20),

          _heading("2️⃣ Early Evidence in Ancient Tamil Literature"),

          const Text(
            """
Tamil Sangam literature (300 BCE–200 CE) contains abundant references to dancers, performance spaces and musical traditions. Works like Silappadikaram describe dramatic dance performances, musical ensembles, rhythmic patterns and codified gestures. Temples employed dancers as ritual practitioners known as “Viraliyar” and later “Devadasis”.

References to temple dance appear in inscriptions, sculptures and architectural carvings depicting poses similar to modern Bharatanatyam *karanas*. The dance flourished alongside temple music and ritual offerings.

Thus, Bharatanatyam developed through:

• artistic experimentation  
• devotional practice  
• ritual dedication  
• temple patronage  

It emerged not merely as entertainment but as sacred ritual offering to the divine.
""",
            style: TextStyle(fontSize: 16, height: 1.35),
          ),

          const SizedBox(height: 20),

          _heading("3️⃣ Codification through Natya Shastra"),

          const Text(
            """
The Natya Shastra (c. 200 BCE–200 CE) standardized concepts and grammar of Bharatanatyam:

• karanas – foundational dance movements  
• hastas/mudras – hand gestures  
• rasas – emotional flavors  
• talas – rhythmic cycles  
• abhinaya – expressive communication  

Bharata describes 108 karanas, many of which appear sculpted on temple walls in Chidambaram, Thanjavur, Kanchipuram and other sites. These carvings confirm the continuity between textual theory and practical performance.
""",
            style: TextStyle(fontSize: 16, height: 1.35),
          ),

          const SizedBox(height: 20),

          _heading("4️⃣ Temple Culture & Devadasi Tradition"),

          const Text(
            """
From the medieval period onward, Bharatanatyam evolved as a living temple art form performed by Devadasis—women dedicated to the deity and trained in dance, music and ritual service. They performed in *Koothambalams* and temple courtyards during daily worship and festivals.

Dance at this time involved:

• ritual invocation  
• narrative enactments of sacred stories  
• gestures aligned with mantras  
• rhythmic compositions accompanying offerings  

Temple dancers were respected custodians of artistic knowledge, patronized by kings and temple institutions.
""",
            style: TextStyle(fontSize: 16, height: 1.35),
          ),

          const SizedBox(height: 20),

          _heading("5️⃣ Chola Period Flourishing (9th–13th century)"),

          const Text(
            """
The Chola dynasty profoundly enriched Bharatanatyam through temple architecture, sculpture, inscriptions and musical patronage. Chola bronzes, especially Nataraja icons, embody dance aesthetic and spiritual meaning.

Temple inscriptions indicate:

• structured training  
• dedicated performance guilds  
• patronage systems  
• land grants for dancers and musicians  
• codified repertoire  

This is considered the golden period when temple dance matured into refined classical form.
""",
            style: TextStyle(fontSize: 16, height: 1.35),
          ),

          const SizedBox(height: 20),

          _heading("6️⃣ Court Traditions & Thanjavur Quartet"),

          const Text(
            """
During the Nayak and Maratha periods, dance transitioned from temples to royal courts, expanding repertoire and technique. The Thanjavur Quartet—Chinnayya, Ponnayya, Vadivelu and Sivanandam—systematized the modern Bharatanatyam margam (performance order):

• Alarippu  
• Jatiswaram  
• Shabdam  
• Varnam  
• Padam  
• Tillana  
• Mangalam  

Their compositions and choreography remain foundational even today.
""",
            style: TextStyle(fontSize: 16, height: 1.35),
          ),

          const SizedBox(height: 20),

          _heading("7️⃣ Colonial Influence & Decline"),

          const Text(
            """
During British colonialism, devadasi practices faced social stigma and suppression. Misunderstandings of temple culture led to moral reform movements and legal bans, causing rapid decline of the art.

Dance became associated with social taboos, and patronage systems collapsed. Traditional knowledge bearers lost status and livelihoods, pushing the art toward extinction.
""",
            style: TextStyle(fontSize: 16, height: 1.35),
          ),

          const SizedBox(height: 20),

          _heading("8️⃣ Revival & Reform (Early 20th century)"),

          const Text(
            """
Visionaries like Rukmini Devi Arundale, Balasaraswati, E Krishna Iyer and others revived Bharatanatyam by restructuring pedagogy, stage presentation, costumes and terminology. The name “Bharatanatyam” became popularized to emphasize classical legitimacy and heritage.

The art gradually transitioned from temple ritual to theatrical stage performance, retaining spiritual expression while expanding artistic interpretation.
""",
            style: TextStyle(fontSize: 16, height: 1.35),
          ),

          const SizedBox(height: 20),

          _heading("9️⃣ Bharatanatyam in Modern Global Context"),

          const Text(
            """
Today, Bharatanatyam is practiced internationally as a classical performing art, spiritual discipline and cultural heritage. Dance schools, competitions, academic research and digital learning platforms contribute to its preservation and expansion.

Modern choreography coexists with traditional repertoire, creating rich diversity within rooted structure. Yet its sacred foundation and moral discipline remain central.
""",
            style: TextStyle(fontSize: 16, height: 1.35),
          ),

          const SizedBox(height: 20),

          _heading("Conclusion"),

          const Text(
            """
The historical evolution of Bharatanatyam reveals resilience, transformation and continuity:

• divine origin and philosophy  
• temple ritual performance  
• codification through texts  
• court refinement  
• colonial disruption  
• nationalist revival  
• globalization and innovation  

The dance continues to evolve while honoring its timeless spiritual heritage, carrying ancient wisdom into contemporary expression.
""",
            style: TextStyle(fontSize: 16, height: 1.35),
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _heading(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.brown,
        ),
      ),
    );
  }
}
