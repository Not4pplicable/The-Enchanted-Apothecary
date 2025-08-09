extends Node
class_name BaseState

func enter(_prev: BaseState) -> void: pass
func exit() -> void: pass
func handle_input(_event: InputEvent) -> void: pass
func physics_update(_delta: float) -> void: pass
