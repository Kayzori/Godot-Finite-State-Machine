<h1>Setup The Tool</h1>
<h2>Step 1:</h2>
<a href = "https://codeload.github.com/Kayzori/Godot-Finite-State-Machine/zip/refs/heads/main">Download the tool here...</a>
<h2>Step 2:</h2>
<p>Extract the .zip file then go to your godot project:</p>
<p>Grab the "Godot-Finite-State-Machine-main/FiniteStateMachine" folder and put it on "res://Addons" folder (if you don't have the folder just create one).</p>
<h2>Step 3:</h2>
<p>In your godot editor go to "Project -> Project Settings" then go to the plugin section, you will see the "FiniteStateMachine" plugin, enable it and reload your project.</p>
<h1>How To Use</h1>
<h2>The Tool Has 2 Classes:</h2>
<h3>"State" Class:</h3>
<img src = "Screenshots/State Source Code.png">
<p>This class is generally a template of a standard state so it can properly managed by the FiniteStateMachine Node</p>
<p>The class has "change_state" signal that has 2 args: first should be the current state that the machine update, second should be the target state as a StringName of the State Node, and it has also the most importants: the update methods.</p>
<p>How to use:</p>
<p>- Create a Node as a child of the FiniteStateMachine Node and rename it as the desier state.</p>
<img src = "Screenshots/How to use 2.png">
<h3>"FinateStateMachine" Class:</h3>
<p>This class hold, manage, update and change the states, has three important variables that can be modified:</p>
<p>- The "initial_state" variable (exported) that hold the start state generally its: idle state</p>
<p>- The "current_state" variable that hold the current state so the class can update it</p>
<p>- The "states" variable and its a dictionary that hold all the states that are child of the FiniteStateMachine Node as String keys</p>
