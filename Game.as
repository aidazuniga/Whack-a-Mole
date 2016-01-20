var myMain:MainScreen = new MainScreen; //Menu background declared
addChild(myMain) //Ads the menu background as soon as game is run

var myBack:Arcade = new Arcade; //Game Background for level 1 and 2 declared
var myBack3:ArcadeThree = new ArcadeThree; //Game Background  for level 3

var GameEnd:GameOver = new GameOver; //Background when the timer finishes

var RedMoles:Array = new Array; //Array for the red moles being added
var myRed:RedMole; //Picture of the red moles being declared
var BlueMoles:Array = new Array; //Array for the blue moles being added
var myBlue:BlueMole; //Picture of the blue moles being declared

var Stars:Array = new Array; //Array for the stars being added in Level 3
var myStar:StarPic; // Picture of the star being declared

var myScore:ScoreKeeper = new ScoreKeeper; //The Picture for the score board declared
myScore.x = 10;
myScore.y = 30;

var myTimer:GameTimer = new GameTimer; //The picture for the timer being declared
myTimer.x = 510;
myTimer.y = 10;


var myHammer:Hammer = new Hammer; //Picture of the hammer being declared

var HomeB:Home = new Home; //The Home button picture declared
HomeB.buttonMode = true; //Making the Home picture turn into a button
HomeB.x = 520;
HomeB.y = 375;
HomeB.addEventListener(MouseEvent.MOUSE_DOWN, HomePage); //Event Listener for the Home button
function HomePage(event:MouseEvent){ //If Home button is clicked, the main screen and all of it buttons will be removed from the stage
	addChild(myMain);
	addChild(myButtonOne);
	addChild(myButtonTwo);
	addChild(myButtonThree);
	addChild(instructButton);
	removeChild(HomeB);
}

var WinPic:Winner = new Winner; //The picture that appear if you reach the desired score for each level
WinPic.x = 50;
WinPic.y = 320;
var LosePic:Loser = new Loser; //The picture that appear if you don’t reach the desired score for each level
LosePic.x = 50;
LosePic.y = 320;

var instructPic:InstructionsPic = new InstructionsPic; //Declaring the picture containing the instructions

var yourScore:TextField = new TextField(); //Declaring the text box that will contain the score
yourScore.x = 400;
yourScore.y = 190;
yourScore.width = 100;
yourScore.height = 200;

var myFormat:TextFormat = new TextFormat(); //Used to format the text
myFormat.size = 80;
myFormat.color = 0x0c00fd;
yourScore.defaultTextFormat = myFormat; //All the changes made will affect the ‘myScore’ text box

var counterOne = 45; //Declares the number where the timer starts for Level  1 (45 seconds)
var counterTwo = 30; //Declares the number where the timer starts for Level  2 (30 seconds)
var counterThree = 20; //Declares the number where the timer starts for Level  3 (20 seconds)

var CounterBox:TextField = new TextField(); //The text box where the time remaining will show up
CounterBox.x = 543;
CounterBox.y = 42;
CounterBox.height = 55;
CounterBox.width = 103;

var myFormat2:TextFormat = new TextFormat(); //Used to format the text
myFormat2.size = 33;
myFormat2.color = 0x5b01ff;
CounterBox.defaultTextFormat = myFormat2; //All the changes made will affect the ‘CounterBox’ text box


var scoreNum = 0; //The starting number that all the scores will start at

var scoreBox:TextField = new TextField(); //Declaring the text box that will be used for the score
scoreBox.x = 45;
scoreBox.y = 42;
scoreBox.width = 40; 
scoreBox.height = 40;

var myFormat3:TextFormat = new TextFormat(); //Used to format the text
myFormat3.size = 33;
myFormat3.color = 0Xdbff5f;
scoreBox.defaultTextFormat = myFormat3; //All the changes made will affect the ‘scoreBox’ text box

var hitStar:Sound = new extraTime();//Declaring the sound that will appear when Hammer hits Star in Level Three
var backSound:Sound = new arcadeSound();//Declaring the background sound
backSound.play ();//Invoking the arcade sound

var myTimer1:Timer = new Timer(600);
var myTimer2:Timer = new Timer (1000);
var myTimer3:Timer = new Timer(600);
var myTimer4:Timer = new Timer(300);
var myTimer5:Timer = new Timer (1000);
var myTimer6:Timer = new Timer(600);
var myTimer7:Timer = new Timer(800);
var myTimer8:Timer = new Timer(250);
var myTimer9:Timer = new Timer (5000);
var myTimer10:Timer = new Timer (1);
var myTimer11:Timer = new Timer (1000);

//Instructions Button and Function
var instructButton:InstructionB = new InstructionB;
instructButton.x = 30;
instructButton.y = 10;
instructButton.buttonMode = true;
addChild (instructButton)
instructButton.addEventListener(MouseEvent.MOUSE_DOWN, instructPage);
function instructPage (event:MouseEvent){
//When instruction button is pressed, the main screen and its buttons dissapear and the instruction picture appears
	removeChild(myMain);
	removeChild(myButtonOne);
	removeChild(myButtonTwo);
	removeChild(myButtonThree);
	removeChild(instructButton);
	addChild(instructPic);
	addChild(HomeB);
//Home Button is added so returning to main screen is possible
}

//Level One: Timer 1-2
var myButtonOne:ButtonOne = new ButtonOne;
myButtonOne.x = 30;
myButtonOne.y = 120;
myButtonOne.buttonMode = true;
addChild(myButtonOne)
myButtonOne.addEventListener(MouseEvent.MOUSE_DOWN, firstLevel)
function firstLevel (event:MouseEvent){
//When Pressing the Level One button, the Level One game automatically starts
	scoreNum = 0;
	removeChild(myMain)
	addChild(myBack)
	addChild(myScore)
	addChild(myTimer)
	Mouse.hide()
	addChild(myHammer)
	stage.addEventListener(MouseEvent.MOUSE_MOVE,HammerCursor);
	myTimer1.addEventListener(TimerEvent.TIMER, addRedMole);//Timer to add the red moles to stage
	myTimer1.start();
	addChild(CounterBox)
	myTimer2.addEventListener(TimerEvent.TIMER, countDown);//Timer that tells how long is left to play
	myTimer2.start()
}
//Event Listener for the animation of the hammer
addEventListener(MouseEvent.MOUSE_DOWN, hammerDown);
function hammerDown (event:MouseEvent){
		myHammer.rotation = -40;//Each time the mouse clicks down, the hammer will rotate down
}
addEventListener(MouseEvent.MOUSE_UP, hammerUp);
function hammerUp (event:MouseEvent){
	myHammer.rotation = 40;//Each time the mouse clicks up, the hammer will be moved back to where it was
}

//Level Two: Timer 3-5
var myButtonTwo:ButtonTwo = new ButtonTwo;
myButtonTwo.x = 30;
myButtonTwo.y = 230;
myButtonTwo.buttonMode = true;
addChild(myButtonTwo)
myButtonTwo.addEventListener(MouseEvent.MOUSE_DOWN, secondLevel)
function secondLevel (event:MouseEvent){
//When Pressing the Level Two button, the Level Two game automatically starts
	scoreNum = 0;
	removeChild(myMain)
	addChild(myBack)
	addChild(myScore)
	addChild(myTimer)
	Mouse.hide()
	addChild(myHammer)
	stage.addEventListener(MouseEvent.MOUSE_MOVE,HammerCursor);//This makes the hammer picture always be where the mouse is
	myTimer3.addEventListener(TimerEvent.TIMER, addRedMole2);//Timer to add the red moles to stage
	myTimer3.start();
	addChild(CounterBox)
	myTimer4.addEventListener(TimerEvent.TIMER, moleInvisible);//Timer to make the moles in the stage become less visible
	myTimer4.start();
	myTimer5.addEventListener(TimerEvent.TIMER, countDown2);//Timer that tells how much time is left in game
	myTimer5.start()
}

//Level Three: Timer 6-9
var myButtonThree:ButtonThree = new ButtonThree;
myButtonThree.x = 30;
myButtonThree.y = 340;
myButtonThree.buttonMode = true;
addChild(myButtonThree)
myButtonThree.addEventListener(MouseEvent.MOUSE_DOWN, thirdLevel)
function thirdLevel (event:MouseEvent){
//When Pressing the Level Two button, the Level Two game automatically starts
	scoreNum = 0;
	removeChild(myMain)
	addChild(myBack3)
	addChild(myScore)
	addChild(myTimer)
	Mouse.hide()
	addChild(myHammer)
	stage.addEventListener(MouseEvent.MOUSE_MOVE,HammerCursor);//This makes the hammer picture always be where the mouse is
	myTimer6.addEventListener(TimerEvent.TIMER, addRedMole3);//Timer that will add red moles to stage
	myTimer6.start();
	myTimer7.addEventListener(TimerEvent.TIMER, addBlueMole);//Timer that will add blue moles to the stage
	myTimer7.start();
	addChild(CounterBox)
	myTimer8.addEventListener(TimerEvent.TIMER, molesInvisible);//Timer that will make both colour moles less visible
	myTimer8.start();
	myTimer10.addEventListener(TimerEvent.TIMER, moveStars);//Timer that will move the stars that add extra 3 seconds to timer
	myTimer10.start()
	myTimer9.addEventListener(TimerEvent.TIMER, addStars);//Timer that will add stars to the stage
	myTimer9.start();
	myTimer11.addEventListener(TimerEvent.TIMER, countDown3);//Timer that tells how much time is left in the game
	myTimer11.start()
	myHammer.addEventListener(Event.ENTER_FRAME, checkHitStar);//Event Listener for collision detection between hammer and stars
}
//Function Handler to make Hammer follow the mouse at all times
function HammerCursor(event:MouseEvent){
	myHammer.x = mouseX;
	myHammer.y = mouseY;
	myHammer.mouseEnabled = false;
}

//Level 1 Adding Moles
function addRedMole(event:TimerEvent){
	myRed = new RedMole;
	myRed.x = Math.round(Math.random()*380)+70;//Makes the red moles appear in a random location between the 70 and 450 x-coordinates
	myRed.y = Math.round(Math.random()*190)+110;//Makes red moles appear in random location between 110 and 300 y-coordinates
	myRed.buttonMode = true;//Makes the red moles become buttons
	addChild(myRed);
	setChildIndex(myHammer, numChildren -1)//Makes sure that teh hammer is always brough to the front of stage
	RedMoles.push(myRed)
	myRed.addEventListener(MouseEvent.MOUSE_DOWN, removeMole)//Event Listener when you click down on the red mole
}

//Level 2 Adding Moles
function addRedMole2(event:TimerEvent){
	myRed = new RedMole;
	myRed.x = Math.round(Math.random()*380)+70;//Makes the red moles appear in a random location between the 70 and 450 x-coordinates
	myRed.y = Math.round(Math.random()*190)+110;//Makes red moles appear in random location between 110 and 300 y-coordinates
	myRed.buttonMode = true;
	addChild(myRed);
	setChildIndex(myHammer, numChildren -1)//Makes sure that the hammer is always brough to the front of stage
	RedMoles.push(myRed);
	myRed.addEventListener(MouseEvent.MOUSE_DOWN, removeMole)//Event Listener when you click down on the red mole
}

//Level 3 Adding Moles
function addRedMole3(event:TimerEvent){
	myRed = new RedMole;
	myRed.x = Math.round(Math.random()*380)+70;//Makes the red moles appear in a random location between the 70 and 450 x-coordinates
	myRed.y = Math.round(Math.random()*190)+110;//Makes red moles appear in random location between 110 and 300 y-coordinates
	myRed.buttonMode = true;
	addChild(myRed);
	setChildIndex(myHammer,numChildren - 1);//Makes sure that the hammer is always brough to the front of stage
	RedMoles.push(myRed);
	myRed.addEventListener(MouseEvent.MOUSE_DOWN, removeMole);//Event Listener when you click down on the red mole
}

function addBlueMole(event:TimerEvent){
	myBlue = new BlueMole;
	myBlue.x = Math.round(Math.random()*380)+70;//Makes the blue moles appear in a random location between the 70 and 450 x-coordinates
	myBlue.y = Math.round(Math.random()*190)+110;//Makes blued moles appear in random location between 110 and 300 y-coordinates
	myBlue.buttonMode = true;
	addChild(myBlue);
	setChildIndex(myHammer, numChildren -1)//Makes sure that the hammer is always brough to the front of stage
	BlueMoles.push(myBlue);
	myBlue.addEventListener(MouseEvent.MOUSE_DOWN, removeMole2)//Event Listener when you click down on the blue mole
}

//Removing Red Moles Function
function removeMole(event:MouseEvent){//Event Handler when a red moles is clicked on
	var object = event.currentTarget;
	removeChild (object);//Once the 'currentTarget' is clicked, ti will be removed from stage
	RedMoles.splice(1, 1);//The 'currentTarget' will also be removed from array
	scoreNum++//If a red mole is clicked, a pointed is added
	scoreBox.text = String(scoreNum)//This strings the number of points in the 'scoreBox' text box
	addChild(scoreBox)//Adds the textbox to the stage
}
//Removing Blue Moles Function
function removeMole2(event:MouseEvent){//Event Handler when a blue moles is clicked on
	var object = event.currentTarget;
	removeChild (object);//Once the 'currentTarget' is clicked, ti will be removed from stage
	BlueMoles.splice(1, 1)//The 'currentTarget' will also be removed from array
	scoreNum--//If a blue mole is clicked, a pointed is removed
	scoreBox.text = String(scoreNum)//This strings the number of points in the 'scoreBox' text box
	addChild(scoreBox)//Adds the textbox to the stage
}

//Level Two Moles Invisivility
function moleInvisible (event:TimerEvent){//Event Handler to make red moles from level two less visible
	for (var i:int=0;i<RedMoles.length;i++){//For loop with the Red Moles array lenght
		RedMoles[i].alpha = RedMoles[i].alpha*.9;//This will make the red moles in stage become 0.9 less visible
		if (RedMoles[i].alpha<.5){//Condition statement that if the red moles become less visible than 0.5
			removeChild(RedMoles[i]);//If condition is met, red mole removed from stage
			RedMoles.splice(i,1);//If condition is met, red mole removed from array
		}
	}
}
//Level Three Blue and Red Moles Invisibility
function molesInvisible(event:TimerEvent){//Event Handler to make red and blue moles from level three less visible
	for (var k:int=0;k<BlueMoles.length;k++){//For loop with the Blue Moles array lenght
		BlueMoles[k].alpha = BlueMoles[k].alpha*.9;//This will make the blue moles in stage become 0.9 less visible
		if (BlueMoles[k].alpha<.5){//Condition statement that if the blue moles become less visible than 0.5
			removeChild(BlueMoles[k]);//If condition is met, blue mole removed from stage
			BlueMoles.splice(k,1);//If condition is met, blue mole removed from array
		}
	}
	for (var j:int=0;j<RedMoles.length;j++){//For loop with the Red Moles array lenght
		RedMoles[j].alpha = RedMoles[j].alpha*.9;//This will make the red moles in stage become 0.9 less visible
		if (RedMoles[j].alpha<.5){//Condition statement that if the red moles become less visible than 0.5
			removeChild(RedMoles[j]);//If condition is met, red mole removed from stage
			RedMoles.splice(j,1);//If condition is met, red mole removed from array
		}
	}
}

function moveStars(event:TimerEvent){//Event Handler that will move stars
	for(var n:int=0;n<Stars.length;n++){
		Stars[n].x = Stars[n].x-4;//The star will move 4 pixels left every 1 millisecond
		Stars[n].y = 380;//Y-Value will remain same
	}
}

function addStars(event:TimerEvent){//Event Handler that will add stars to stage
	myStar = new StarPic();
	myStar.x = 540;
	myStar.y = 380;
	addChild(myStar)
	Stars.push(myStar)//Ads star to the array
	for (var m:int=0;m<Stars.length;m++){//For loop with the Stars Array length
		if (Stars[m].x<0){//If the x-coordinate of the stars is less than 0 condition statement
			removeChild(Stars[m]);//If condition met, star will be removed from stage
			Stars.splice(m, 1);//If condition is met, star will be removed from array
		}
	}
}

function checkHitStar(event:Event){//Collision Detection Event Handler
	for (var n:int=0;n<Stars.length;n++){//For loop the size of the Stars array length
		if (myHammer.hitTestObject(Stars[n])){//Condition statement of the hammer and Stars collision
			counterThree = counterThree+3//If hammer collides with star, the timer will increase by 3 seconds
			removeChild (Stars[n])//The star will be removed from stage
			Stars.splice(n, 1)//The stat will be removed from array
			hitStar.play ();
		}
	}
}

//Countdown Functions
function countDown(event:TimerEvent){//Coundown even handler for level one
	counterOne--//the time left decreased by 1 every second
	CounterBox.text = String(counterOne)//Strings the time left into text box
	if (counterOne == 0){//Condition statement if the counter becomes 0
		myTimer2.stop();//Timer for countdown stops
		removeChild(myBack);
		removeChild(myScore);
		removeChild(myTimer);
		removeChild(CounterBox);
		removeChild(myHammer);
		addChild(GameEnd);
		addChild(HomeB);
		Mouse.show();//The mosue cursor becomes visible again
		if (scoreNum>65){
			addChild (WinPic)//You win if your score is higher than 65
		}
		if (scoreNum<65){
			addChild(LosePic)//You lose if your score is lower than 65
		}
		counterOne = 45;//The counter will go back to its original number, which is 45
		yourScore.text = String(scoreNum);//Adding your score to a textbox so its displayed
		addChild(yourScore);
		myTimer1.stop();//Timer to add red moles stops
	}
}

function countDown2(event:TimerEvent){//Coundown even handler for level two
	counterTwo--//the time left decreased by 1 every second
	CounterBox.text = String(counterTwo)
	if (counterTwo == 0){//Condition statement if the counter becomes 0
		myTimer5.stop();//Timer for countdown stops
		removeChild(myBack)
		removeChild(myScore);
		removeChild(myTimer);
		removeChild(CounterBox);
		removeChild(myHammer);
		addChild(GameEnd);
		addChild(HomeB);
		Mouse.show();//The mosue cursor becomes visible again
		if (scoreNum>50){//You win if your score is higher than 50
			addChild (WinPic)
		}
		if (scoreNum<50){//You lose if your score is lower than 50
			addChild(LosePic)
		}
		counterTwo = 30;//The counter will go back to its original number, which is 30
		yourScore.text = String(scoreNum);
		addChild(yourScore);
		myTimer3.stop();//The timer for adding red moles stops
		myTimer4.stop();//The timer to make moles invisible stops
	}
}

function countDown3(event:TimerEvent){//Coundown even handler for level three
	counterThree--//the time left decreased by 1 every second
	CounterBox.text = String(counterThree)
	if (counterThree == 0){//Condition statement if the counter becomes 0
		myTimer11.stop();//Timer for countdown stops
		removeChild(myBack3);
		removeChild(myScore);
		removeChild(myTimer);
		removeChild(CounterBox);
		removeChild(myHammer);
		addChild(GameEnd);
		addChild(HomeB);
		Mouse.show();
		if (scoreNum>40){//You win if your score is higher than 50
			addChild (WinPic)
		}
		if (scoreNum<40){//You lose if your score is lower than 50
			addChild(LosePic)
		}
		counterThree = 20;//The counter will go back to its original number, which is 20
		yourScore.text = String(scoreNum);
		addChild(yourScore);
		myTimer6.stop();//Timer to add red moles stops
		myTimer7.stop();//Timer to add blue moles stops
		myTimer8.stop();//Timer to make moels invisible stops
		myTimer9.stop();//Timer to add stars stops
		myTimer10.stop();//Timer to move stars stops
	}
}
//End of code