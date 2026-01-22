import 'package:flutter/material.dart';

class OriginDeclinePage extends StatelessWidget {
  const OriginDeclinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Origin – Decline Era"),
        backgroundColor: Colors.black,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Text(
          '''
Decline of Bharatanatyam Tradition  
=================================

Introduction  
------------

The decline of Bharatanatyam marks a dramatic shift from sacred ritual performance to social marginalization. After flourishing for many centuries under temple patronage and royal support, Bharatanatyam faced erosion due to changing socio-political forces, colonial intervention, economic instability, and moral reform movements. Understanding this period reveals complexity around gender, class, religion, nationalism, and artistic identity.

End of Temple Patronage  
-----------------------

From the medieval to early modern period, temple patronage structured artistic livelihood. Royal families, landlords, and Brahmin administrators supported hereditary performers. When large kingdoms dissolved under colonial rule, economic foundations weakened:

• loss of land grants  
• reduced temple revenue  
• decline of ritual festivals  
• diminishing resources for performer communities  

As patronage dissolved, dancers struggled for identity and livelihood.

British Colonial Influence  
--------------------------

British rule introduced Victorian morality rooted in Christian worldview. Colonial observers misunderstood Hindu ritual traditions and interpreted temple dance through their own moral lens. Devadasis were labeled immoral and temple dancing viewed as vulgar. This created stigma around hereditary dancers.

Anti-Nautch Movement  
--------------------

Beginning in the late nineteenth century, reformers and missionaries launched the Anti-Nautch campaigns. They sought to abolish devadasi performance and end hereditary dance practice. Newspapers circulated propaganda linking devadasis to prostitution. Public demonstrations condemned natya traditions.

Key Factors in Anti-Nautch:  
• colonial racial morality  
• Brahmin social reformers  
• emerging modern nationalist identity  
• internal debates within Indian society  

This period eroded professional dignity of performers.

Legal Suppression  
-----------------

Several laws criminalized and dissolved devadasi systems:  

• Madras Devadasi Act  
• Bombay Anti-Devadasi Act  
• temple dancing prohibition laws  

Devadasis were prohibited from performing inside temples. Nattuvanars lost livelihoods as performances disappeared. A millennia-old sacred heritage faced legal erasure.

Social Consequences  
-------------------

Effects were devastating:  

• artistic families displaced  
• loss of cultural memory  
• apprentices ended training  
• compositions forgotten  
• stigma attached to dance learning  
• girls withdrawn from classes  

Dance moved from temple sanctuaries to private secrecy.

Marginalization of Devadasis  
----------------------------

Devadasis lost social respect and legal rights. Communities faced discrimination and poverty. Public discourse silenced artistic accomplishments. The colonial moral lens reduced nuanced sacred tradition to stigma.

Internal Debate  
---------------

Some reformers within India supported abolishing devadasi dedication due to concerns about exploitation. Others argued reforms should protect but not erase artistic heritage. The conflict contributed to erasure rather than restoration of rights.

Artistic Fragmentation  
----------------------

With decline in institutional support, dance practices fragmented. Nattuvanars struggled to transmit repertoire. Musical ensembles dispersed. Transmission shifted from families to isolated individuals. Rhythmic and expressive vocabularies were endangered.

Conclusion  
----------

The decline of Bharatanatyam emerged from entangled forces of colonial morality, legal suppression, socio-economic decline, and cultural fragmentation. Understanding this history requires sensitivity to trauma, artistic resilience, gender complexities, and challenges of modern cultural transformation.

''',
          style: TextStyle(fontSize: 16, height: 1.4),
        ),
      ),
    );
  }
}
