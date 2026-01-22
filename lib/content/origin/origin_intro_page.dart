import 'package:flutter/material.dart';

class OriginIntroPage extends StatelessWidget {
  const OriginIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Introduction – Origin of Bharatanatyam",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
        iconTheme: const IconThemeData(color: Colors.white),
      ),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Color(0xfff3e8ff)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 10),

              const Text(
                "Introduction to Bharatanatyam",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                """
Bharatanatyam is one of the most ancient, revered and deeply philosophical classical dance forms of India. Rooted in the sacred temple traditions of Tamil Nadu, this dance form has evolved over centuries, retaining its spiritual purpose while adapting to contemporary performance contexts. The term "Bharatanatyam" itself reflects the poetic integration of Bhava (emotion), Raga (melody), Tala (rhythm), and Natyam (dance), making it a complete art that synthesizes movement, music, and expression.

The origins of Bharatanatyam cannot be traced to a single date, event or historical figure. Instead, the dance form evolved gradually alongside temple rituals, devotional practices, literature and music. It is believed that Bharatanatyam is a living embodiment of the ancient text Natya Shastra composed by Sage Bharata around 200 BCE – 200 CE, which codified the rules of drama, dance, gesture and musical expression in performance traditions. While scholars debate the exact chronology, there is general agreement that Bharatanatyam has existed in some recognizable form for over two millennia.

In early centuries, Bharatanatyam was practiced and preserved primarily by Devadasis – women who dedicated themselves to temple service and performed sacred dance offerings to deities during rituals, festivals and ceremonies. These dancers and their accompanying musicians maintained rigorous training systems, transmission lineages and performance repertoires that were deeply embedded in temple culture. Much of what we know today as Bharatanatyam evolved within this context of spiritual devotion, cultural tradition and artistic refinement.

The dance form experienced dramatic transformation over time. During the medieval period, royal patronage strengthened its visibility, while temple culture nurtured its spiritual significance. Later colonial attitudes, Victorian morality and socio-economic changes led to a severe decline and stigmatization of the Devadasi tradition, threatening the very survival of Bharatanatyam. However, the early 20th century witnessed a remarkable revival movement led by visionary dancers, scholars, musicians and reformers who sought to reframe the dance as a respected classical art suitable for public stage performance.

Modern Bharatanatyam continues to evolve, balancing classical technique with contemporary themes and global aesthetics. Today, it is practiced worldwide, transcending geographical, linguistic and cultural boundaries while retaining a strong foundation in tradition.

The purpose of this Origin section is to explore the evolution of Bharatanatyam in depth – tracing its etymology, historical foundations, Devadasi traditions, decline, revival efforts, significant cultural elements, and the ceremonial milestone of Arangetram. Each chapter reveals a layered narrative of artistic transformation, social change, and spiritual continuity.

Let us begin our journey into the timeless origins of Bharatanatyam – not merely as a dance, but as a philosophical and cultural expression of Indian identity.
                """,
                style: TextStyle(fontSize: 16, height: 1.4),
              ),

              const SizedBox(height: 20),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "“Dance is divine worship; it is sculpture in motion, poetry in space and rhythm in time.”",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                    color: Colors.deepPurple,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                """
### Purpose of this Introduction

The introduction establishes the foundation necessary to understand Bharatanatyam’s origins. It highlights:

1. Its historical antiquity and evolution
2. Spiritual and philosophical foundations
3. Role of temple and Devadasi traditions
4. Causes of decline and revival
5. Transition from ritual to stage art
6. Continuing legacy in modern society

Bharatanatyam is not merely performance. It is a sacred discipline requiring years of rigorous training, internalization and devotion. The introduction helps contextualize later chapters and prepares the reader for deeper exploration of each thematic component.

### Structure of this Origin Section

The following pages will explore:

1. Meaning / Etymology of Bharatanatyam
2. Historical evolution
3. Devadasi heritage
4. Decline during colonial era
5. Revival movements
6. Elements and grammar of the form
7. Arangetram ceremony

Each section will examine artistic, social, ritualistic, musical and philosophical dimensions using a narrative approach suitable for students, practitioners and scholars.

In understanding origins, we understand purpose. By recognizing Bharatanatyam’s long journey of transformation, we honor the contributions of countless artists who preserved and transmitted this knowledge through generations.

This introduction invites you not just to read history, but to experience the essence of Bharatanatyam as a living tradition – rooted in devotion, refined through discipline, and elevated through artistic truth.
                """,
                style: TextStyle(fontSize: 16, height: 1.4),
              ),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
