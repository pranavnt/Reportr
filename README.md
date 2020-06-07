## Inspiration
The past few weeks have been emotionally tolling for all of us, as we have witnessed the horrific deaths of George Floyd, Breonna Taylor, and Ahmaud Arbery. Many people have gone out to protest, demanding change. While the police in many areas have cooperated with the protests, some Departments even joining the protestors, some peaceful protestors have been met with police brutality (assault, tear gas, etc.). In most cases of this, the officers at fault broke the law, and some Police Departments have reprimanded their own officers. However, most instances of this aren't recorded on camera, giving one no evidence that can be used in court. Furthermore, even if one was able to take a video, most people are unsure where to share it to have the greatest impact. To bring justice and accountability to these cases, we developed Reportr, an intuitive mobile application that allows users to report instances of police brutality.

## What it does
Reportr allows the user to report instances of police brutality to the ACLU, your representative (in Congress), and local police departments. When the user opens up the app, they are given 2 options:
1. Take a Video
2. Capture Audio
The user then is given the option to share the audio/video captured with the ACLU and others. Once the user clicks on the mail button, we automatically create an email for them using their location data, time, and the captured video and/or audio. The user can then send the mail to their representative, the ACLU, and their local police department (These three are the best to contact if you want to pursue justice). On our second screen, the user is directed to 4 petitions that they can sign to bring about change. 

## How We built it
We started off by researching into the problem, and we learned why current solutions weren't adequate (they were unintuitive, had long response times, etc.). Overall, we found that justice wasn't achieved most of the time, even when pursued. We tailored our application to better meet user needs through an intuitive UI and reaching out to the right people. Once the preliminary work was done, we created mockups for our application in Adobe XD to build an effective UI. We then built this app using the Swift Programming Language within the XCode IDE with the following libraries: MessageUI, MobileCoreServices, UIKit, and Foundation.

## Challenges We ran into
1.We had to brush up on our Swift skills at the start, which made the initial coding take longer than expected. However, this was a short phase that we quickly got over.
2. We had issues saving the video as a local file and needed proper permissions to write a file to the phone. Furthermore, we generated a unique name for the video/audio file.
3. The hardest part about our project was integrating it into the cloud, as we wanted it to be possible for the videos to be preserved even if one's phone was destroyed. We learned how to create tables with a user's information in Firebase, however we were unable to get automatic video uploads fully working. 

## Accomplishments that We're proud of
1. We have a fully functional prototype that will be published to the App Store!!
2. Our app uniquely allows people to record and report police brutality via audio and video. Furthermore, we have a platform that both allows users to report police brutality and gives them the ability to sign petitions to bring justice to those harmed by it.
3. We were able to integrate our key features into a clean, accessible UI. We chose to use minimize the amount of text on the home page and used high color contrast to make our app more accessible to those who are colorblind or have low vision. 

## What I learned
Developing this significantly improved our skills with Swift. We had done a project or two in Swift before, but neither of us could consider ourselves experienced in development in Swift. This project gave us experience tackling an issue in our community, and we learned a lot from this hackathon, most of which can't be found in tutorial videos or StackOverflow answers. Furthermore, we learned how to make a mobile application interact with a database in the cloud. Even though this feature isn't complete, we learned a lot when working on implementing it; specifically how to create and structure tables in Firebase. 

## What's next for Reportr
We are currently working on automatically uploading the videos taken to Firebase, in case a phone is damaged. Unfortunately, we ran out of time debugging and were not able to get it to consistently work. However, we're confident that we can get the uploading feature working within a few hours, and we will post an update once that is working. We also plan on publishing this to the app store after refining our design based on feedback. We hope that this app can serve as a step in the right direction in police-community relations through increasing accountability.
