@tool
extends EditorPlugin

func _enter_tree() -> void:
    add_custom_type("FiniteStateMachine", "Node", preload("res://FiniteStateMachine/FiniteStateMachine.gd"), preload("res://FiniteStateMachine/plugin/theme/FiniteStateMachine.png"))

func _exit_tree() -> void:
    remove_custom_type("StateMachine")
