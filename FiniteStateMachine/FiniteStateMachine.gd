extends Node
class_name FiniteStateMachine

@export var initial_state: State

var current_state: State
var states: Dictionary = {}  

func _ready() -> void:
    for child in get_children():
        if child is State:
            states[child.name.to_lower()] = child
            child.change_state.connect(on_child_change_state)
    if initial_state:
        current_state = initial_state
        current_state.enter()

func _input(event: InputEvent) -> void:
    if current_state:
        current_state.input_update(event)

func _process(delta: float) -> void:
    if current_state:
        current_state.update(delta)

func _physics_process(delta: float) -> void:
    if current_state:
        current_state.physics_update(delta)
        
func on_child_change_state(state: State, new_state_name: String) -> void:
    if state != current_state:
        return
    var new_state: State = states.get(new_state_name.to_lower())
    if (!new_state):
        return
    
    if current_state:
        current_state.exit()
    
    new_state.enter()
    
    current_state = new_state
