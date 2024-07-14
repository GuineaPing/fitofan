## Test Assignment for Fitofan

### - [x] Task 1: Develop page according to designs & prepare questions about logic  

provided design not exactly fit iPad formfactor it seems more for browser, thats because in app for keeping cells proprtion central column height seems shorer;

* the main functionality of this view is browsing of wrestling matches results?
* active controls on the view are Previous, Next buttons, Penalty & Menu buttons on competitors cells, 'This match is Active', 'Save results', 'Show results on screen' on central pane and 'Show on TV' in the bottom of left pane. Did I missed some?
* Previous, Next buttons are for browsing matches in chronological order?
* 'This match is Active' is switches match status active/complete? 
* What additional action it fires?
* Maybe 'Save results' shold be better make it enabled if the match were completed?
* What is the diifference between buttons 'Show result on screen' and 'Show on TV'?
* What is shows previous and next list? It looks like history.
* The lists headers 'Previous' & 'Next', doesn't them copy buttons titles above and rather wasting screen space?

### [x] Task 2: Estimate and Plan for a New Pages (Event tab on homepage & Sport Score)
#### [x] Review Additional Design:
- Another design for new pages is provided [here](https://www.figma.com/design/ae34RVbsoHG9brhU3w9387/F-3?node-id=0-1&t=MaPU1lJpwzP1Ts7H-1) (section2). Review this design thoroughly.
    
#### [x] Provide Estimation:
#### - [x] Estimate the time required to implement the new page based on the provided design.
* Estimated time 12h, unsure yet, need more assignment details.
    
#### - [x] Outline the major steps you would take to implement this design.
###### Ways of implementation & techniques:
* For blur effect on the top and bottom of the image it possible to use the BackdropFilter widget along with Positioned widgets within a Stack.
* To create a custom indicator wheel with digits in the center, may use the CircularPercentIndicator from the percent_indicator package and overlay it with a Text widget to display the numeric value. https://pub.dev/packages/percent_indicator
* For event cards include an image, title, subtitle, and action buttons. Going to use the Card widget combined with Column and Row for layout.
* For app navigation better to use tabbar widget 
    
#### Prepare Questions:
#### - [ ] List any questions or clarifications you need before starting the implementation. This could include questions about design details, data requirements, or existing project constraints.
* What is the function of application?
* What API calls to use?
* What is the intended sequence of user actions?
* What should happen on pressing button 'Follow'?
* The same question about registration, mail, top right favorites and arrow buttons.
* How should to handle user session and settings?
* What data associated to controls and models?
* How the Sport Score calculates?
* What is the role of events list?
  
