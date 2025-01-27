import 'package:flutter/material.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Banadir Hospital is a leading healthcare provider offering exceptional services and state-of-the-art facilities. Established in 1980, we are committed to providing patient-centered care with a team of highly qualified professionals.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 16),
          Image.network(
            'https://www.google.com/search?sca_esv=f955a9a40bd85927&sxsrf=ADLYWIIuNbhsEePKPte0knGkHzTLOfBBTg:1736407251857&q=hospital+banadir&udm=2&fbs=AEQNm0Aa4sjWe7Rqy32pFwRj0UkWd8nbOJfsBGGB5IQQO6L3JzWreY9LW7LdGrLDAFqYDH32tgteNhtZOxnGezgnEGc8nJf0T5kIXfpR5VSirtGGTDvS5oWtbiAFedZFmW9WGDZAHp3wm0L6-7Wlad262RqxuN_gPAphyu7_mNDyDeZeq9VkNeQ&sa=X&sqi=2&ved=2ahUKEwissLqLjeiKAxVG9bsIHYFyIiYQtKgLegQIFRAB&biw=1366&bih=633&dpr=1#vhid=OVsSuansc2TwaM&vssid=mosaic',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}