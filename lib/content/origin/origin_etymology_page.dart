import 'package:flutter/material.dart';

class OriginEtymologyPage extends StatelessWidget {
  const OriginEtymologyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Meaning & Etymology",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
        iconTheme: const IconThemeData(color: Colors.white),
      ),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Color(0xfff3e8ff),
            ],
          ),
        ),
        child: SingleChildScrollScrollViewContent(),
      ),
    );
  }
}

class SingleChildScrollScrollViewContent extends StatelessWidget {
  const SingleChildScrollScrollViewContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const SizedBox(height: 10),

          const Text(
            "Etymology and Meaning of Bharatanatyam",
            style: TextStyle(
              fontSize: 28,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            """
The term “Bharatanatyam” is layered with linguistic, philosophical and aesthetic meanings. It is commonly understood through a popular interpretation that breaks the word into four syllables:

BHA – Bhava → emotion, sentiment, feeling  
RA – Raga → melody, musical expression  
TA – Tala → rhythm, temporal structure  
Natyam – dance, dramatic movement, performance  

Thus, Bharatanatyam becomes the art form that integrates expression, music, rhythm and dance into a unified performative experience. The dance is therefore not simply physical movement, but an orchestration of emotional embodiment, musical resonance and rhythmic precision aligned with spiritual intention.

This interpretation, though widely accepted and pedagogically useful, is not linguistically verified in early sources. Many scholars acknowledge that it reflects a poetic back-formation based on aesthetic components. The term “bharata” originally refers to Sage Bharata Muni, traditionally credited with authoring the Natya Shastra, the foundational text of performing arts in India. Therefore, Bharatanatyam literally means “the dance of Bharata” or “dance codified by Bharata”.

### Linguistic roots
The Sanskrit word *Natyam* appears in multiple ancient texts and denotes dramatic performance that includes dance, expressive gesture, narrative enactments and musical accompaniment. The term *Natya* encompasses both dramatic theatre and dance-expression using *abhinaya* (expressive gesturing). Over time, regional styles of natya evolved into distinct classical forms; Bharatanatyam emerged predominantly in Tamil temples.

The prefix *Bharata* is interpreted in three complementary ways:

1. Bharata as the sage Bharata Muni  
2. Bharata as an acronym for Bhava-Raga-Tala  
3. Bharata as referring to the land of *Bharata Varsha* (India)

These layered interpretations highlight the intertwined philosophical and linguistic foundations of the dance.

---

## **Concept of Natya in ancient texts**

The Natya Shastra (c. 200 BCE – 200 CE) describes natya as a fifth Veda created by Brahma to provide ethical instruction through visual performance. It explains detailed rules for abhinaya, mudras, rasa, rhythm, stagecraft, musical modes and movement grammar.

In this framework:

• Natya is visual scripture  
• Dance is sacred offering  
• Performance communicates spiritual meaning  

Thus, etymology reveals not just linguistic meaning but the original purpose of Bharatanatyam: a sacred medium for spiritual communication.

---

## **Bhava, Raga, Tala – Philosophical significance**

These three concepts are not merely artistic ingredients. They reflect fundamental aspects of human expression and cosmic order:

Bhava – inner emotion and intention  
Raga – vibrational field of sound and melody  
Tala – cyclical rhythm echoing universal time  

The dancer becomes a channel where internal emotion manifests externally through rhythmic movement and melodic energy. Bharatanatyam integrates body, mind, sound and time into alignment.

---

## **Abhinaya – expressive communication**

The Natya Shastra identifies four aspects of abhinaya (expressive communication):

1. Angika – movements of body/limbs  
2. Vachika – speech/music  
3. Aharya – costume/makeup/props  
4. Satvika – inner emotional states  

The etymology of Bharatanatyam implies mastery of these expressive dimensions.

---

## **Tamil roots and textual references**

Although Bharatanatyam draws theoretical grounding from Sanskrit sources, its lived practice developed in Tamil temples. Tamil literature, inscriptions and devotional texts provide abundant references to dance ritual offerings. Some terms historically used:

• Dasiattam  
• Koothu  
• Natyam  
• Adal  

These names reflect a localized evolution prior to the formal adoption of the name Bharatanatyam in the 20th century revival.

---

## **Evolution of the name “Bharatanatyam”**

During early 1900s, reformers, scholars and artists sought to reframe the dance as a refined classical art. Rukmini Devi Arundale and others popularized the term Bharatanatyam, emphasizing its textual lineage and distancing it from colonial stigmas around Devadasi culture.

Thus the current name is not ancient, but represents a conscious reclamation of heritage.

---

## **Etymology as cultural identity**

Understanding the term Bharatanatyam reveals:

• its philosophical roots  
• its connection to ancient performance science  
• its integration of music, rhythm and emotion  
• its continuing spiritual purpose  
• its transformation through history and reform  

The name embodies the geometry of movement, mathematics of rhythm, depth of emotion and devotion of ritual.

Language here becomes gateway to tradition.  
The word Bharatanatyam itself is a living symbol of divine aesthetics unfolding through human body and time.

---

## Conclusion

The etymology of Bharatanatyam is not merely a linguistic curiosity.  
It embodies:

✓ spiritual philosophy  
✓ cultural continuity  
✓ performance science  
✓ musical grammar  
✓ historical evolution  

By understanding its layered name, students enter the deeper purpose of the art: not entertainment, but elevation – a journey where emotion transforms into sacred expression through dance.

          """,
            style: TextStyle(fontSize: 16, height: 1.35),
          ),

          const SizedBox(height: 50),

        ],
      ),
    );
  }
}

