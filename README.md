## Test Assignment for Fitofan

### - [x] Task 1: Develop page according to designs & prepare questions about logic  

Provided design does not exactly fit iPad form factor, it seems more for browser, in app central column height shorter for keeping cells proportion.

* The function of this view is only browsing wrestling matches results?
* Active controls on the view are Previous, Next buttons, Penalty & Menu buttons on competitors cells, 'This match is Active', 'Save results', 'Show results on screen' on the central pane and 'Show on TV' in the bottom of the left pane. Did I miss some?
* Previous, Next buttons are for browsing matches in chronological order?
* Ss 'This match is Active' switches match status active/complete? 
* What additional action does it fire?
* Maybe the 'Save results' button should be enabled only when the match is completed?
* What is the difference between buttons 'Show result on screen' and 'Show on TV'?
* What items show previous and next lists? It looks like it matches history.
* Consider the lists headers 'Previous' & 'Next', don't they copy buttons titles above and wasting screen space?

### [x] Task 2: Estimate and Plan for a New Pages (Event tab on homepage & Sport Score)
#### [x] Review Additional Design:
- Another design for new pages is provided [here](https://www.figma.com/design/ae34RVbsoHG9brhU3w9387/F-3?node-id=0-1&t=MaPU1lJpwzP1Ts7H-1) (section2). Review this design thoroughly.
    
#### [x] Provide Estimation:
#### - [x] Estimate the time required to implement the new page based on the provided design.
* 10h unsure yet, need more assignment details.
    
#### - [x] Outline the major steps you would take to implement this design.
###### Ways of implementation & techniques:
* For blur effect on the top and bottom of the image it is possible to use the BackdropFilter widget along with Positioned widgets within a Stack.
* To create a custom indicator wheel with digits in the center, may use the CircularPercentIndicator from the percent_indicator package and overlay it with a Text widget to display the numeric value. https://pub.dev/packages/percent_indicator
* For event cards include an image, title, subtitle, and action buttons. Going to use the Card widget combined with Column and Row for layout.
* For app navigation better to use tab bar widget 
    
#### Prepare Questions:
#### - [x] List any questions or clarifications you need before starting the implementation. This could include questions about design details, data requirements, or existing project constraints.
* What is the function of an application?
* What API calls to use?
* What is the intended sequence of user actions?
* What should happen on pressing the button 'Follow'?
* The same question about 'registration', 'mail', top right 'favorites' and 'arrow' buttons.
* How should I handle user sessions and settings?
* What data is associated with controls and models?
* How does the Sport Score calculate?
* What is the role of events list?
  
