/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~ Prog [V.V.V] ~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Developped using SS2DE :

    Blablabla about the project.

    DD/MM/YYYY > [V.V.V] :
    - Added something.
    - Added something else.

    DD/MM/YYYY > [V.V.V] :
        - Added something that wasn't before.
        - Fixed a bug.
        - Added something else.
        - Added something else again.

    BUGS : Active bugs in last version.
    NOTES : Notes.

    Contact : ...
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */




















// ---------------- EVENTS ----------------

//events
func SS2DE_event(_ event:UInt8){
	switch(event){

		case SS2DE_DISPLAY:

			//blue background
			SS2DE_setColor(  0,  0,255)
			SS2DE_rectangle(
				0,0,
				Int(SS2DE_width), Int(SS2DE_height),
				SS2DE_FILL
			)

			//red triangle
			SS2DE_setColor(255,  0,  0)
			SS2DE_triangle(
				 50,  50,
				200, 100,
				100, 200,
				SS2DE_FILL
			)

		case SS2DE_KEYBOARD:
			switch(SS2DE_key){
				case SS2DE_KEY_z:
					print("Pressed key \'z\'")
				case SS2DE_KEY_Z:
					print("Pressed key \'Z\'")
				case SS2DE_KEY_q:
					print("Pressed key \'q\'")
				case SS2DE_KEY_Q:
					print("Pressed key \'Q\'")
				case SS2DE_KEY_s:
					print("Pressed key \'s\'")
				case SS2DE_KEY_S:
					print("Pressed key \'S\'")
				case SS2DE_KEY_d:
					print("Pressed key \'d\'")
				case SS2DE_KEY_D:
					print("Pressed key \'D\'")
				default:
					break;
			}

		case SS2DE_MOUSECLICK:
			if(SS2DE_mouseState == SS2DE_MOUSE_RELEASED){
				print("Released mouse.")
			}else{
				switch(SS2DE_mouseButton){
					case SS2DE_LEFT_BUTTON:
						print("Left mouse button pressed at (\(SS2DE_mouseX)\(SS2DE_mouseY)).")
					case SS2DE_MIDDLE_BUTTON:
						print("Middle mouse button pressed at (\(SS2DE_mouseX)\(SS2DE_mouseY)).")
					case SS2DE_RIGHT_BUTTON:
						print("Right mouse button pressed at (\(SS2DE_mouseX)\(SS2DE_mouseY)).")
					default:
						break;
				}
			}

		case SS2DE_MOUSEMOVE:
			print("Moved mouse in (\(SS2DE_mouseX),\(SS2DE_mouseY)).")

		case SS2DE_TIMER:
			SS2DE_refresh()

		case SS2DE_RESIZE:
			print("Resized screen from (\(SS2DE_width),\(SS2DE_height)) to (\(SS2DE_newWidth),\(SS2DE_newHeight)).")

		default:
			break;
	}
}




















// ---------------- EXECUTION ----------------

//init SS2DE
SS2DE_init("Bambod", 800,400)
SS2DE_setTimer(100)



//launch main loop
SS2DE_start()
