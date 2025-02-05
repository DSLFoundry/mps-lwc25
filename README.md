# mps-lwc25
This repository contains the JetBrains MPS submission for "The State of the Art in Language Workbenches: 12 years later" paper. It holds a simple implementation (excluding satisfiability checking) of the Questionnaire Language (QL) as described in the [original QL assignment](https://homepages.cwi.nl/~storm/Ql.pdf).

Authors: Klemens Schindler (@klemensschindler) and Eugen Schindler (@eugenschindler)

The original JetBrains MPS QL implementation is in the repository https://github.com/DSLFoundry/mps-lwc14, which in turn is based on https://github.com/DSLFoundry/mps-lwc13.

## Setup
 - Install JetBrains MPS 2024.1 from the list on https://www.jetbrains.com/mps/download/previous.html for your platform
 - Run ```./gradlew``` after cloning this repository in order to download all dependencies and build the language
 - Open the root directory of this repository in MPS
 - To play with an example QL model, open the root node QuestionnaireLanguage &rarr; Sandbox &rarr; Sandbox &rarr; QLBasic &rarr; HouseOwning

## New QL language implementation
This section sketches the language implementation highlights and especially the differences in effort and amount of code needed to implement the language in MPS 2024.1 (and included batteries) as compared to the original last implementation of QL from 2014 in MPS 2.5.

### Why use MPS 2024.1 instead of 2024.3?
At the time of finishing up the implementation (beginning of February 2025), the newest available MPS version is 2024.3 (released on 21 January 2025). We have chosen the previous major version (2024.1) for the implementation. The reason for this is that the current main branch of KernelF is tested and stable on MPS 2024.1. This is typical of the commercial and community libraries built on top of MPS: the community and clients work with JetBrains to test and fix infrastructure libraries used for language development (like KernelF), so they are engineering-ready and stable.

### General observations
Since version 2.5, MPS and its ecosystem of commercial and community-based libraries has evolved quite much. Most notably, for the new implementation of QL, we have heavily used the [KernelF](http://voelter.de/data/pub/kernelf-reference.pdf) extensible "funclarative" language (contained within the [IETS3.opensource](https://github.com/iets3/iets3.opensource) project). In practice, the most frequent use case of KernelF we have encountered, is to just "plug-in" and tailor (advanced) expressions instead of having to develop an expression hierarchy and various useful functionality for it every time from scratch in a language.

Another useful extension is the plaintextgen plugin which helps to easily generate all types of custom text from MPS models. Since we used HTML as generation target, we could also have used the built-in jetbrains.mps.lang.html language to generate the code, but we chose plaintextgen to illustrate a quick and easy method of getting text out of models.

### Implementation walkthrough
#### What stayed the same?
 - Each of the concepts mentioned in the [QL assignment](https://homepages.cwi.nl/~storm/Ql.pdf) has been implemented 1:1 as an MPS concept.
 - Similar as in the original implementation in 2013, we have used the IQuestionBlockContents interface concept to allow for free creation and movements of lines in the structural projectional editor of MPS.
 - The Empty concept represents empty lines. In addition, we have the DerivedValueReference and QuestionReference concepts in order to model references in the language.
 - Since the de.slisson.mps.richtext language already existed to model rich text, we have done this again in the new implementation, since richtext suffices for the text of a question. If we would have had a need for more advanced text modeling (à la LaTeX, including references to other part of the model, tagging, document structure, etc.), we could have used the mbeddr.doc language (with various out-of-the-box generation targets like HTML, Markdown, and LaTeX/PDF).

#### What was done differently?
 - In order to model the type of a question, we chose to simply hook into the KernelF language, using KernelF's Type concept. This enables us to leverage the KernelF infrastructure of typing. What this does in practice, is that we can simply import the KernelF simpleTypes language (org.iets3.core.expr.simpleTypes) on model-level in order to get a whole set of standard types, such as Boolean, NumberType, and String. The only effort it takes to leverage all this infrastructure, is to simply make the ```type``` child of the ```Question``` concept of type ```Type (org.iets3.core.expr.base)```.
 - Like a ```Question```, a ```DerivedValue``` also has a KernelF ```Type```, but in order to derive a value, we also need an expression. Here, we simply make a child called ```value``` which is of type ```Expression (org.iets3.core.expr.base)```. This gives us access to the full set of expressions possible in KernelF (ranging from simple binary expressions like addition or multiplication, to dot expressions, option types, logic expressions, (in) equalities, etc.). In order to make sure that we connect to the KernelF typesystem, we have to add a type inference rule that makes sure that the type of a ```DerivedValue.value``` is equal to the expected type. This makes sure that whatever type computation happens via the KernelF infrastructure, we will get feedback from the editor if the resulting type of the expression in ```value``` does not fit with ```expectedType```.
 - In the same way, in order to have advanced conditions for the if-blocks in QL, we just need to make the ```condition``` child of the ```ConditionalBlock``` concept of type ```BooleanExpression (org.iets3.core.expr.base)```.
 - In order to allow for using references to question and derived value definitions in expressions like derived values or conditions of a conditional block, we simply hook these references into KernelF as custom expressions, so they can compose with the KernelF expression machanism. This is accomplished by simply making the ```QuestionReference``` and ```DerivedValueReference``` concepts extend ```Expression (org.iets3.core.expr.base)```. 
 - In MPS 2.5 there was no plaintextgen plugin, so we would have been forced to either make a textgen aspect for each concept directly (which is really not fun to do and a lot of work) or to define an intermediate language for HTML (which also didn't yet exist out of the box in MPS 2.5). Using plaintextgen, however, making a code generator quickly for a specific case is as simple as copy-pasting the reference implementation into a plaintextgen model (which models lines, words, and general layouts of plain text) and then simply add generator macros to the relevant parts of the reference implementation in order to templatize the static reference implementation text, which is pretty similar to typical template-driven code generation. 

### Considerations / downsides
 - Using KernelF's expression infrastructure adds quite some advanced functionality to a language with almost zero effort. If the language is relatively simple, however, one may want to restrict the plethora of possible expressions of KernelF to only a subset (e.g. only additions, subtractions, multiplications, and divisions). Though it doesn't cost much effort, it needs some considerations. Details are beyond the scope of this text.

### Other features not touched in this JetBrains MPS QL implementation
 - kotlin base language instead of java base language
 - constraint-based typesystem
 - shadow models or Dclare4MPS (for QL, this can enable a live programming workflow, transforming to generated HTML code incrementally and continuously while editing the model)
 - see the [MPS Extensions documentation](https://jetbrains.github.io/MPS-extensions/) for an overview of community extensions

## Conclusions for JetBrains MPS implementation of QL in 2025
In the last 12 years, MPS itself has done steps to further engineer and stabilize the tool. Many bugs have been fixed, existing features streamlined, and performance highly optimized. The basic meta-interfaces of the MPS structure aspect have stayed stable, while many other aspects and additional extension capabilities and features (such as custom aspects, testing and debugging infrastructure for various aspects, mass node manipulation, many productivity features in the IDE, generation plans, ...) have been added.

In addition, commercial and community extensions have been developed that add productivity and power to the toolbox of MPS language developers. This enables a quite concise and powerful way to write and maintain ecosystems of languages and language stacks for people who are knowledgeable with MPS language development, while keeping basic language creation still relatively accessible to new MPS language developers.

 - Total code written: 1794 nodes
   - Language: 139 nodes
   - Generator: 621 nodes
   - Build solution: 106 nodes
   - Example model: 34 nodes
 - Total implementation effort (excluding documentation and build setup, including design): 4 person hours
 - Total coffee consumed: 4 cups
 - Total cookies eaten: 6