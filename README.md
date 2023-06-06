# Russian TimeBank

This is the repository for the Russian TimeBank developed as a Bachelor's thesis at School of Linguistics, Higher School of Economics, Moscow.

The full text of the thesis can be found in the thesis.pdf file.

The initial data for the TimeBank is the news subcorpus of the [Taiga corpus](https://tatianashavrina.github.io/taiga_site/). The raw files can be found in the ./GoldStandard/raw/ folder.

The pipeline for annotation can be found in the RussianTimeBank_Pipeline.ipynb file.

Three models were tested for syntactic and morphological analyses: Stanza, SpaCy, and Natasha. The evaluation of annotations obtained for the three models can be found in the TimeBank_Evaluation.ipynb file.

SpaCy showed the best results on evaluation, the annotation can be found in the ./FinalDataset/ folder as individual .XML-files.

## Event Extraction
Event instances in Russian can be expressed by verbs, nominal phrases, pronouns, prepositional phrases, and even adjectives. The pipeline is aimed at extracting ONLY the most prototypical event instances expressed by verbal forms (finite and non-finite) with syntactic functions of predicates and clausal modifiers.

## Temporal Information
All temporal expressions have been extracted using the [HeidelTime system](https://github.com/HeidelTime/heideltime) for Russian. 
