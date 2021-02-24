// ----------------- IMPORTATIONS ----------------

//standard
import Foundation




















/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ SS2DE [0.1.0] ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                        Simple Swift 2Dimensional Engine

    Developped using freeglut3 (or just GLUT), a graphical 2D/3D engine.

    To install glut on linux-apt systems, just install the package :
                               freeglut3-dev

        This library is a Swift adaptation of another library I made in C which
    name is S2DE. For more information about S2DE, please check out here :
                    https://github.com/iasebsil83/S2DE

    [0.1.0] > 18/02/2021 :
    - Created SS2DE.

    BUGS : .
    NOTES : .

    Contact     : i.a.sebsil83@gmail.com
    Youtube     : https://www.youtube.com/user/IAsebsil83
    GitHub repo : https://github.com/iasebsil83

    Let's Code !                                  By I.A.
******************************************************************************************
    LICENCE :
    SS2DE
    Copyright (C) 2021  Sebastien SILVANO
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    any later version.
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    You should have received a copy of the GNU General Public License
    along with this program.

    If not, see <https://www.gnu.org/licenses/>.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */




















// ----------------- DECLARATIONS ----------------

//keyboard events
let SS2DE_KEY_PRESSED  :UInt8 = 0
let SS2DE_KEY_RELEASED :UInt8 = 1



//function keys
let SS2DE_KEY_F1  :UInt16 = 0x101
let SS2DE_KEY_F2  :UInt16 = 0x102
let SS2DE_KEY_F3  :UInt16 = 0x103
let SS2DE_KEY_F4  :UInt16 = 0x104
let SS2DE_KEY_F5  :UInt16 = 0x105
let SS2DE_KEY_F6  :UInt16 = 0x106
let SS2DE_KEY_F7  :UInt16 = 0x107
let SS2DE_KEY_F8  :UInt16 = 0x108
let SS2DE_KEY_F9  :UInt16 = 0x109
let SS2DE_KEY_F10 :UInt16 = 0x10a
let SS2DE_KEY_F11 :UInt16 = 0x10b
let SS2DE_KEY_F12 :UInt16 = 0x10c



//command keys
let SS2DE_KEY_ESCAPE    :UInt16 = 0x01b
let SS2DE_KEY_END       :UInt16 = 0x16b
let SS2DE_KEY_HOME      :UInt16 = 0x16a
let SS2DE_KEY_PAGE_UP   :UInt16 = 0x168
let SS2DE_KEY_PAGE_DOWN :UInt16 = 0x169
let SS2DE_KEY_DELETE    :UInt16 = 0x07f
let SS2DE_KEY_BACKSPACE :UInt16 = 0x008
let SS2DE_KEY_INSERT    :UInt16 = 0x16c



//combination keys
let SS2DE_KEY_LEFT_SHIFT  :UInt16 = 0x170
let SS2DE_KEY_RIGHT_SHIFT :UInt16 = 0x171
let SS2DE_KEY_LEFT_CTRL   :UInt16 = 0x172
let SS2DE_KEY_RIGHT_CTRL  :UInt16 = 0x173
let SS2DE_KEY_LEFT_ALT    :UInt16 = 0x174



//special characters
let SS2DE_KEY_BACK_QUOTE  :UInt16 = 0x0b2
let SS2DE_KEY_AMPERSAND   :UInt16 = 0x026
let SS2DE_KEY_DBL_QUOTE   :UInt16 = 0x022 //double quote
let SS2DE_KEY_QUOTE       :UInt16 = 0x027
let SS2DE_KEY_UNDERSCORE  :UInt16 = 0x05f
let SS2DE_KEY_TAB         :UInt16 = 0x009
let SS2DE_KEY_CIRCUMFLEX  :UInt16 = 0x05e
let SS2DE_KEY_DOLLAR      :UInt16 = 0x024
let SS2DE_KEY_LESS_THAN   :UInt16 = 0x03c //<
let SS2DE_KEY_GREA_THAN   :UInt16 = 0x03e //>
let SS2DE_KEY_COMA        :UInt16 = 0x02c
let SS2DE_KEY_SEMI_COLON  :UInt16 = 0x03b
let SS2DE_KEY_COLON       :UInt16 = 0x03a
let SS2DE_KEY_EXCLAMATION :UInt16 = 0x021
let SS2DE_KEY_SPACE       :UInt16 = 0x020
let SS2DE_KEY_RETURN      :UInt16 = 0x00d
let SS2DE_KEY_TILDE       :UInt16 = 0x07e
let SS2DE_KEY_HASHTAG     :UInt16 = 0x023
let SS2DE_KEY_PARENTH_B   :UInt16 = 0x028 //parentheses begin
let SS2DE_KEY_PARENTH_E   :UInt16 = 0x029 //            end
let SS2DE_KEY_BRACKETS_B  :UInt16 = 0x05b //brackets begin
let SS2DE_KEY_BRACKETS_E  :UInt16 = 0x05d //         end
let SS2DE_KEY_BRACES_B    :UInt16 = 0x07b //braces begin
let SS2DE_KEY_BRACES_E    :UInt16 = 0x07d //       end
let SS2DE_KEY_POINT       :UInt16 = 0x02e
let SS2DE_KEY_PARAGRAPH   :UInt16 = 0x0a7
let SS2DE_KEY_DEGREE      :UInt16 = 0x0b0
let SS2DE_KEY_PIPE        :UInt16 = 0x07c
let SS2DE_KEY_BACKSLASH   :UInt16 = 0x05c
let SS2DE_KEY_AT          :UInt16 = 0x040
let SS2DE_KEY_POUND       :UInt16 = 0x0a3
let SS2DE_KEY_DIERESIS    :UInt16 = 0x0a8
let SS2DE_KEY_BLOCK       :UInt16 = 0x0a4
let SS2DE_KEY_ACUTE       :UInt16 = 0x060
let SS2DE_KEY_MU          :UInt16 = 0x0b5
let SS2DE_KEY_QUESTION    :UInt16 = 0x03f



//numbers & maths
let SS2DE_KEY_0        :UInt16 = 0x030
let SS2DE_KEY_1        :UInt16 = 0x031
let SS2DE_KEY_2        :UInt16 = 0x032
let SS2DE_KEY_3        :UInt16 = 0x033
let SS2DE_KEY_4        :UInt16 = 0x034
let SS2DE_KEY_5        :UInt16 = 0x035
let SS2DE_KEY_6        :UInt16 = 0x036
let SS2DE_KEY_7        :UInt16 = 0x037
let SS2DE_KEY_8        :UInt16 = 0x038
let SS2DE_KEY_9        :UInt16 = 0x039
let SS2DE_KEY_PLUS     :UInt16 = 0x02b
let SS2DE_KEY_MINUS    :UInt16 = 0x02d
let SS2DE_KEY_ASTERISK :UInt16 = 0x02a
let SS2DE_KEY_SLASH    :UInt16 = 0x02f
let SS2DE_KEY_EQUAL    :UInt16 = 0x03d
let SS2DE_KEY_PERCENT  :UInt16 = 0x025



//arrows
let SS2DE_KEY_LEFT  :UInt16 = 0x164
let SS2DE_KEY_UP    :UInt16 = 0x165
let SS2DE_KEY_RIGHT :UInt16 = 0x166
let SS2DE_KEY_DOWN  :UInt16 = 0x167



//capital letters
let SS2DE_KEY_A :UInt16 = 0x041
let SS2DE_KEY_B :UInt16 = 0x042
let SS2DE_KEY_C :UInt16 = 0x043
let SS2DE_KEY_D :UInt16 = 0x044
let SS2DE_KEY_E :UInt16 = 0x045
let SS2DE_KEY_F :UInt16 = 0x046
let SS2DE_KEY_G :UInt16 = 0x047
let SS2DE_KEY_H :UInt16 = 0x048
let SS2DE_KEY_I :UInt16 = 0x049
let SS2DE_KEY_J :UInt16 = 0x04a
let SS2DE_KEY_K :UInt16 = 0x04b
let SS2DE_KEY_L :UInt16 = 0x04c
let SS2DE_KEY_M :UInt16 = 0x04d
let SS2DE_KEY_N :UInt16 = 0x04e
let SS2DE_KEY_O :UInt16 = 0x04f
let SS2DE_KEY_P :UInt16 = 0x050
let SS2DE_KEY_Q :UInt16 = 0x051
let SS2DE_KEY_R :UInt16 = 0x052
let SS2DE_KEY_S :UInt16 = 0x053
let SS2DE_KEY_T :UInt16 = 0x054
let SS2DE_KEY_U :UInt16 = 0x055
let SS2DE_KEY_V :UInt16 = 0x056
let SS2DE_KEY_W :UInt16 = 0x057
let SS2DE_KEY_X :UInt16 = 0x058
let SS2DE_KEY_Y :UInt16 = 0x059
let SS2DE_KEY_Z :UInt16 = 0x05a

//minimal letters
let SS2DE_KEY_a :UInt16 = 0x061
let SS2DE_KEY_b :UInt16 = 0x062
let SS2DE_KEY_c :UInt16 = 0x063
let SS2DE_KEY_d :UInt16 = 0x064
let SS2DE_KEY_e :UInt16 = 0x065
let SS2DE_KEY_f :UInt16 = 0x066
let SS2DE_KEY_g :UInt16 = 0x067
let SS2DE_KEY_h :UInt16 = 0x068
let SS2DE_KEY_i :UInt16 = 0x069
let SS2DE_KEY_j :UInt16 = 0x06a
let SS2DE_KEY_k :UInt16 = 0x06b
let SS2DE_KEY_l :UInt16 = 0x06c
let SS2DE_KEY_m :UInt16 = 0x06d
let SS2DE_KEY_n :UInt16 = 0x06e
let SS2DE_KEY_o :UInt16 = 0x06f
let SS2DE_KEY_p :UInt16 = 0x070
let SS2DE_KEY_q :UInt16 = 0x071
let SS2DE_KEY_r :UInt16 = 0x072
let SS2DE_KEY_s :UInt16 = 0x073
let SS2DE_KEY_t :UInt16 = 0x074
let SS2DE_KEY_u :UInt16 = 0x075
let SS2DE_KEY_v :UInt16 = 0x076
let SS2DE_KEY_w :UInt16 = 0x077
let SS2DE_KEY_x :UInt16 = 0x078
let SS2DE_KEY_y :UInt16 = 0x079
let SS2DE_KEY_z :UInt16 = 0x07a



//non-ASCII letters
let SS2DE_KEY_A_ACCENT_E :UInt16 = 0x0e9 //acute accentuated E
let SS2DE_KEY_G_ACCENT_E :UInt16 = 0x0e8 //grave accentuated E
let SS2DE_KEY_G_ACCENT_A :UInt16 = 0x0e0 //grave accentuated A
let SS2DE_KEY_G_ACCENT_U :UInt16 = 0x0f9 //grave accentuated U
let SS2DE_KEY_CEDILLA_C  :UInt16 = 0x0e7



//event constants
let SS2DE_KEYBOARD   :UInt8 = 0
let SS2DE_MOUSECLICK :UInt8 = 1
let SS2DE_MOUSEMOVE  :UInt8 = 2
let SS2DE_DISPLAY    :UInt8 = 3
let SS2DE_RESIZE     :UInt8 = 4
let SS2DE_TIMER      :UInt8 = 5



//mouse constants
let SS2DE_MOUSE_PRESSED  :UInt8 = 0
let SS2DE_MOUSE_RELEASED :UInt8 = 1
let SS2DE_LEFT_BUTTON    :UInt8 = 0
let SS2DE_MIDDLE_BUTTON  :UInt8 = 1
let SS2DE_RIGHT_BUTTON   :UInt8 = 2



//drawing
let SS2DE_EMPTY :UInt8 = 0
let SS2DE_FILL  :UInt8 = 1




















/// ---------------- INITIALIZATION ----------------

//window
var SS2DE_window               :Int32 = -1
var SS2DE_timedExecution_delay :Int32 = -1



//event variables
var SS2DE_mouseState  :UInt8 = 0 //mouse
var SS2DE_mouseButton :UInt8 = 0
var SS2DE_mouseX      :UInt32 = 0
var SS2DE_mouseY      :UInt32 = 0
var SS2DE_keyState :UInt8  = 0 //keyboard
var SS2DE_key      :UInt16 = 0
var SS2DE_newWidth  :UInt32 = 0 //resize
var SS2DE_newHeight :UInt32 = 0
var SS2DE_width  :UInt32 = 0
var SS2DE_height :UInt32 = 0




















// ---------------- LOCAL EVENT HANDLERS (S2DEL) ----------------

//timed executions
func SS2DEL_timedExecution(_ i:Int32){
	if i < 0 {
		SS2DE_refresh()
	}else{
		if SS2DE_timedExecution_delay >= 0 {
			glutTimerFunc(
				UInt32(SS2DE_timedExecution_delay),
				SS2DEL_timedExecution,
				SS2DE_timedExecution_delay
			)
			SS2DE_event(SS2DE_TIMER)
		}
	}
}



//display
func SS2DEL_display(){
	glFlush()
	glClearColor(1.0, 1.0, 1.0, 1.0)
	glClear( UInt32(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT) )
	SS2DE_event(SS2DE_DISPLAY)
	glutSwapBuffers()
}



//keyboard
func SS2DEL_keyPressed(_ g:UInt8, _ x:Int32, _ y:Int32){
	SS2DE_key = UInt16(g)
	SS2DE_keyState = SS2DE_KEY_PRESSED
	SS2DE_event(SS2DE_KEYBOARD)
}

func SS2DEL_keyPressed_special(_ keyCode:Int32, _ x:Int32,_ y:Int32){
	SS2DE_key = 0b1_0000_0000 + UInt16(keyCode & 0xff)
	SS2DE_keyState = SS2DE_KEY_PRESSED
	SS2DE_event(SS2DE_KEYBOARD)
}

func SS2DEL_keyReleased(_ g:UInt8, _ x:Int32,_ y:Int32){
	SS2DE_key = UInt16(g)
	SS2DE_keyState = SS2DE_KEY_RELEASED
	SS2DE_event(SS2DE_KEYBOARD)
}

func SS2DEL_keyReleased_special(_ keyCode:Int32, _ x:Int32,_ y:Int32){
	SS2DE_key = 0b1_0000_0000 + UInt16(keyCode & 0xff)
	SS2DE_keyState = SS2DE_KEY_RELEASED
	SS2DE_event(SS2DE_KEYBOARD)
}



//mouse
func SS2DEL_mouseButton(_ button:Int32, _ state:Int32, _ x:Int32,_ y:Int32){
	SS2DE_mouseX = UInt32(x)
	SS2DE_mouseY = SS2DE_height - UInt32(y)
	SS2DE_mouseState = UInt8(state)
	SS2DE_mouseButton = UInt8(button)
	SS2DE_event(SS2DE_MOUSECLICK)
}

func SS2DEL_mouseMoved(_ x:Int32,_ y:Int32){
	SS2DE_mouseX = UInt32(x)
	SS2DE_mouseY = SS2DE_height - UInt32(y)
	SS2DE_event(SS2DE_MOUSEMOVE)
}



//window reshape
func SS2DEL_reshape(_ width:Int32,_ height:Int32){
	glViewport(0,0, Int32(width),Int32(height) )
	glMatrixMode( UInt32(GL_PROJECTION) )
	glLoadIdentity()
	glOrtho(0.1,Double(width), 0.1,Double(height), -1.0,1.0)
	glMatrixMode( UInt32(GL_MODELVIEW) )
	SS2DE_newWidth  = UInt32(width)
	SS2DE_newHeight = UInt32(height)
	SS2DE_event(SS2DE_RESIZE)
	SS2DE_width  = UInt32(width)
	SS2DE_height = UInt32(height)
}












// ---------------- UTILITIES ----------------

//useful
func SS2DE_refresh(){
	glutPostRedisplay()
}

func SS2DE_fullScreen(){
	glutFullScreen()
}

func SS2DE_setColor(_ r:Int, _ g:Int, _ b:Int){
	glColor3f(Float( Double(r)/255.0 ), Float( Double(g)/255.0 ), Float( Double(b)/255.0 ))
}

func SS2DE_setThickness(_ thickness:Float){
	glPointSize(thickness)
	glLineWidth(thickness)
}



//graphics
func SS2DE_point(_ x1:Int, _ y1:Int){
	glBegin( UInt32(GL_POINTS) )
		glVertex2f(Float(x1), Float(y1))
	glEnd()
}

func SS2DE_line(_ x1:Int,_ y1:Int, _ x2:Int,_ y2:Int){
	glBegin( UInt32(GL_LINES) )
		glVertex2f(Float(x1), Float(y1))
		glVertex2f(Float(x2), Float(y2))
	glEnd()
}

func SS2DE_triangle(_ x1:Int,_ y1:Int, _ x2:Int,_ y2:Int, _ x3:Int,_ y3:Int, _ filled:UInt8){
	if filled != 0 {
		glBegin( UInt32(GL_TRIANGLES) )
			glVertex2f(Float(x1), Float(y1))
			glVertex2f(Float(x2), Float(y2))
			glVertex2f(Float(x3), Float(y3))
		glEnd()
	}else{
		SS2DE_line(x1,y1, x2,y2)
		SS2DE_line(x2,y2, x3,y3)
		SS2DE_line(x3,y3, x1,y1)
	}
}

func SS2DE_rectangle(_ x1:Int,_ y1:Int, _ x2:Int,_ y2:Int, _ filled:UInt8){
	if filled != 0 {
		glBegin( UInt32(GL_QUADS) )
			glVertex2f(Float(x1), Float(y1))
			glVertex2f(Float(x2), Float(y1))
			glVertex2f(Float(x2), Float(y2))
			glVertex2f(Float(x1), Float(y2))
		glEnd()

		//GPU weakness : remove diagonals
		var thickness:Float = 0
		glGetFloatv( UInt32(GL_LINE_WIDTH), &thickness)
		glLineWidth(1.0)
		SS2DE_line(x1,y1, x2,y2)
		glLineWidth(thickness)
	}else{
		SS2DE_line(x1,y1, x2,y1)
		SS2DE_line(x2,y1, x2,y2)
		SS2DE_line(x2,y2, x1,y2)
		SS2DE_line(x1,y2, x1,y1)
	}
}

func SS2DE_quad(_ x1:Int,_ y1:Int, _ x2:Int,_ y2:Int, _ x3:Int,_ y3:Int, _ x4:Int,_ y4:Int, _ filled:UInt8){
	if filled != 0 {
		glBegin( UInt32(GL_QUADS) )
			glVertex2f(Float(x1), Float(y1))
			glVertex2f(Float(x2), Float(y2))
			glVertex2f(Float(x3), Float(y3))
			glVertex2f(Float(x4), Float(y4))
		glEnd()

		//GPU weakness : remove diagonals
		var thickness:Float = 0
		glGetFloatv( UInt32(GL_LINE_WIDTH), &thickness)
		glLineWidth(1.0)
		SS2DE_line(x1,y1, x3,y3)
		glLineWidth(thickness)
	}else{
		SS2DE_line(x1,y1, x2,y2)
		SS2DE_line(x2,y2, x3,y3)
		SS2DE_line(x3,y3, x4,y4)
		SS2DE_line(x4,y4, x1,y1)
	}
}



//text
func SS2DE_text(_ text:String, _ size:Double, _ x:Int,_ y:Int){

	//moving over display (use of the 3rd dimension)
	glPushMatrix()
	glTranslatef(Float(x), Float(y), 0.0)
	glScalef(Float(size), Float(size), Float(size))

	//write text character per character
	for c in text{
		glutStrokeCharacter(nil, Int32( Array(String(c).utf8)[0] ) )
	}
	glPopMatrix()
}



//images
func SS2DE_imageRGBA(_ x:Int,_ y:Int, _ width:UInt32,_ height:UInt32, _ data:UnsafeMutableRawPointer?){
	glRasterPos2i(Int32(x), Int32(y))

	if data != nil {
		glDrawPixels(
			Int32(width), Int32(height),
			UInt32(GL_RGBA),
			UInt32(GL_UNSIGNED_INT_8_8_8_8),
			data
		)
	}
}

func SS2DE_setPixelRGBA(_ r:Int, _ g:Int, _ b:Int, _ a:Int) -> UInt32{

	return (
		UInt32( (r << 24) & 0xff000000 ) |
		UInt32( (g << 16) & 0x00ff0000 ) |
		UInt32( (b <<  8) & 0x0000ff00 ) |
		UInt32(  a        & 0x000000ff )
	)
}



//timed executions
func SS2DE_setTimer(_ ms:Int32){
	if SS2DE_timedExecution_delay < 0 && ms >= 0 {
		glutTimerFunc(
			UInt32(ms),
			SS2DEL_timedExecution,
			ms
		)
	}

	//set new timedExecution delay
	SS2DE_timedExecution_delay = ms
}




















// ---------------- BASICS -----------------

//init
func SS2DE_init(_ name:String, _ width:UInt32,_ height:UInt32){

	//init attributes
	SS2DE_width  = width
	SS2DE_height = height

	//init window
	var argc :Int32 = 1
	glutInit(&argc, nil)
	glutInitDisplayMode( UInt32(GLUT_DOUBLE | GLUT_RGBA | GLUT_DEPTH) )
	glutInitWindowPosition(0,0)
	glutInitWindowSize(Int32(SS2DE_width), Int32(SS2DE_height))
	SS2DE_window = glutCreateWindow(name)

	//some settings
	glHint( UInt32(GL_PERSPECTIVE_CORRECTION_HINT), UInt32(GL_NICEST))
	glDepthFunc ( UInt32(GL_LEQUAL) )
	glShadeModel( UInt32(GL_SMOOTH) )
	glBlendFunc( UInt32(GL_SRC_ALPHA), UInt32(GL_ONE_MINUS_SRC_ALPHA) )
	glEnable( UInt32(GL_BLEND) )
	glHint( UInt32(GL_POINT_SMOOTH_HINT  ), UInt32(GL_NICEST) )
	glHint( UInt32(GL_LINE_SMOOTH_HINT   ), UInt32(GL_NICEST) )
	glHint( UInt32(GL_POLYGON_SMOOTH_HINT), UInt32(GL_NICEST) )
	glEnable( UInt32(GL_POINT_SMOOTH  ) )
	glEnable( UInt32(GL_LINE_SMOOTH   ) )
	glEnable( UInt32(GL_POLYGON_SMOOTH) )
	glEnable( UInt32(GL_NORMALIZE     ) )
	glutSetKeyRepeat(GLUT_KEY_REPEAT_OFF)

	//set local SS2DE event handlers (SS2DEL)
	glutDisplayFunc      (SS2DEL_display            )
	glutKeyboardFunc     (SS2DEL_keyPressed         )
	glutSpecialFunc      (SS2DEL_keyPressed_special )
	glutKeyboardUpFunc   (SS2DEL_keyReleased        )
	glutSpecialUpFunc    (SS2DEL_keyReleased_special)
	glutMouseFunc        (SS2DEL_mouseButton        )
	glutMotionFunc       (SS2DEL_mouseMoved         )
	glutPassiveMotionFunc(SS2DEL_mouseMoved         )
	glutReshapeFunc      (SS2DEL_reshape            )
}



//start - stop
func SS2DE_start(){
	glutMainLoop()
}

func SS2DE_stop(){
	glutDestroyWindow(SS2DE_window)
}
