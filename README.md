# Swift_Food-Intake-Recorder
Swift_Food-Intake-Recorder

# Introduction

Our project is the health Apps. Design this Apps goal is to teach people how to choose Health and let them know the benefit of Health Food, recording their Health on their mobile phone. Eat more wholesome fruits, a result of the fruits rich in vitamins and fiber material, which is beautiful but also slimming. Benefits of fruits there are many descriptions of fruits, nutritional facts of fruits, fruits to maintain good Health, and eating more fruits helps keep hospitals and doctors out of our lives. So, this Application can take photos and then record the data in this app. It can give the star to our favorite food. Also, it can use the camera to detect the health of bananas, carrots, eggs, citrus, lettuce, orange, strawberry, and lemon. The introduction page can see the YouTube movie of Health Food.

#  Background

**Background and motivation of your proposed mobile App**

As more people pay attention to their health, they start to care about their eating habits. The benefits of fruits are paramount for a person's health and physical fitness. Eating fruit is an excellent way to improve our overall health and reduce disease risk. People who eat fruit as part of a healthy diet have a reduced risk of chronic diseases. The fruit has been recognized as a good source of vitamins and minerals for its role in preventing vitamin C and vitamin A deficiencies. Fruit are important sources of many nutrients, including potassium, fiber, vitamin C, and folate. So we design this app to help people distinguish between healthy food interestingly. We use AI "CreateML" to analyze what is real-time video through the phone's camera. It is healthy food.

**Aims and Objectives**

With the increasing popularity of information technology, the technology of Neural Networks has become more and more mature in recent years, becoming a hot topic in the information industry.

So, the team has used the Neural Networks AI to create the detect problem. In line with the market's needs, we have learned a simple and easy-to-use mobile application, and our target is users of all ages. This mobile application aims to attract users interestingly because the neural network is a new technology that can identify what is healthy food on the phone's camera.

**idea with other similar Apps and different in us application**

There are many mobile phone applications that use neural networks, but the advantage of the application designed by our team is that we have a complete package, and we can complete all the steps in one application. First, we open the application, select Use the mobile phone to identify healthy food, identify the healthy food you want, and then use the camera function of this app to record these healthy foods and then score them. You can add or delete them, or add text, and you can use them later Select the introduction page to view the information of healthy food. Therefore, users can do object identification, photo taking, data recording, message viewing (youtube), and other one-stop services without leaving the app.

---

# Storyboard of the App

**Production process and software used**

**Software VOTT, Xcode, CreateML**

![image-20250425105359596](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425105359596.png) 

**VOTT introdution:**

 

**This json file have created 7 title about banana, carrot, egg, citrus, lettuce, orange, strawberry, lemon.**

 

**VOTT has be created the json file.**

**Choosed Asset State and than choosed only tagged Assets and than clicked save export setting.**

![image-20250425105420273](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425105420273.png) 

![image-20250425111425957](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425111425957.png)![image-20250425105458525](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425105458525.png) 

![image-20250425105505896](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425105505896.png) ![image-20250425105513741](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425105513741.png)

![image-20250425105533203](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425105533203.png) ![image-20250425111619754](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425111619754.png)



**CreateML introduction:**

**Create two file both is ->**

![image-20250425105553079](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425105553079.png) 

**First to choose “Object Detection” to create mlproj file.**D

![image-20250425105607963](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425105607963.png) 

**Choose the “vott-json-expor”**

**Create json data** 

![image-20250425105622981](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425105622981.png) 



**Add the Training Data and Testing Data**

![image-20250425105659363](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425105659363.png) 

**Result:**

![image-20250425105711266](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425105711266.png) 

**Before use the MLFormatHelper to change json Format.**

![image-20250425105730950](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425105730950.png) 

![image-20250425105739838](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425105739838.png) 

**After changed the json structure Format:**

![image-20250425105753941](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425105753941.png) 

**This is the Xcode file structure:**

![image-20250425105817259](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425105817259.png) 

**The info: (Than is important detail data key)**

![image-20250425105830214](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425105830214.png) 

**For example:**

**Privacy -Camera Usage Description**

**Privacy -Photo Library Usage Description**

**Privacy – Photo Library Usage Description**

Have this 3 part, so it can be take the photo by the mobile Camera to save.



**This is the Main Structure:**

**Than have 4 function** 

**1.**  **Camera 2**

Use the View Controller to take the photo in the mobile.

**2.**  **Camera**

Use the gViewController to detect the Food.

**3.**  **See the information**

To introduct the Food Nutritional Value

**4.**  **Give Star**

After you take the photo, than you can give the star with the favorite Food.

![image-20250425105848827](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425105848827.png) 

![image-20250425110151344](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425110151344.png) 


**Menu**

![image-20250425110211011](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425110211011.png)

**Camera**

Use the gViewController to detect the Food.

![image-20250425110233834](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425110233834.png)


**Camera 2**

Use the View Controller to take the photo in the mobile.

![image-20250425110312764](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425110312764.png)


**Give Star**

After you take the photo, than you can give the star with the favorite Food.

![image-20250425110332127](C:\Users\great\AppData\Roaming\Typora\typora-user-images\image-20250425110332127.png)


**See the information**

To introduct the Food Nutritional Value

![image-20250425110344402](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425110344402.png)



**Home Page**

![image-20250425110404458](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425110404458.png)

**Menu**

![image-20250425110419272](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425110419272.png)



**Introducte the information**

![image-20250425110430545](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425110430545.png)


**Display the Star page**


![image-20250425111806498](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425111806498.png)


**Edit the Star page**


![image-20250425110503099](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425110503099.png)

**Take the photo in the photo** **album**

![image-20250425110517188](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425110517188.png)![image-20250425110602388](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425110602388.png)

![image-20250425110610918](C:\Users\great\AppData\Roaming\Typora\typora-user-images\image-20250425110610918.png)![image-20250425110618174](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425110618174.png)


![](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425110628599.png)

![image-20250425110637018](http://pdm888.oss-cn-beijing.aliyuncs.com/img/image-20250425110637018.png)


# References


**Download Vott FOR MAC or WINDOWS**

https://github.com/Microsoft/VoTT/releases

**Use VOTT and Create ML to create Apple object detection model**

https://www.youtube.com/watch?v=eQNtPni4OWg


**Change Json format Software**

https://github.com/Hansoong/mlformathelper

**Recognizing Objects in Live Capture**

https://developer.apple.com/documentation/vision/recognizing_objects_in_live_capture
