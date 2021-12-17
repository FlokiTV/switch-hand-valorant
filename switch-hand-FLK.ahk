; This script was created by FLK
; youtube.com/FlokiTVBR

#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1


F6::
Switch:
hand := 0
Loop
{
    TurnKey := GetKeyState("c")
    IfWinActive, VALORANT
    {
        If (TurnKey == 1)
        {
            Send, {Escape}
            Sleep, 50
            If (hand = 0)
            {
                hand := 1
                Click, Rel 70, 0, 0
                Sleep, 3
            }
            Else
            {
                hand := 0
                Click, Rel 350, 0, 0
                Sleep, 3
            }
            Click, Left, 1
            Sleep, 10
            Send, {Escape}
        }
    }
}
Sleep, 50
Return
