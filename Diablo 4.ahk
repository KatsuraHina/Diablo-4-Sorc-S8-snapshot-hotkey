#NoEnv
SendMode Input
SetBatchLines -1

toggle := false

; F1 – start sequence + spam Space
F1::
    if (!toggle) {
        toggle := true
        Gosub, StartSequence
        SetTimer, SpamSpace, 50
    }
return

; F3 – start sequence without spamming Space
F3::
    if (!toggle) {
        toggle := true
        Gosub, StartSequence
        ; (no SpamSpace timer here)
    }
return

; Shared startup routine
StartSequence:
    ; 1) Initial “snapshot”: hold “3” down for 1s
    Send, {3 down}
    Sleep, 1000

    ; 2) Send “1”
    Send, 1

    ; 3) Wait 1s before cycling
    Sleep, 1000

    ; 4) Continue holding “3” down for the duration
    ;    (we never send a “3 up” here until you press F2)

    ; 5) Kick off one-shot CycleLoop
    SetTimer, CycleLoop, -1
return

; CycleLoop: send 1→2→4→5 with 25ms between each, then 1s pause, then repeat
CycleLoop:
    if (!toggle)
        return

    Send, 1
    Sleep, 25
    Send, 2
    Sleep, 25
    Send, 4
    Sleep, 25
    Send, 5
    Sleep, 25

    ; Pause 1s
    Sleep, 500

    ; Re-queue itself
    SetTimer, CycleLoop, -1
return

; SpamSpace: sends Space every 50ms when enabled
SpamSpace:
    if (toggle)
        Send, {Space}
return

; F2 – stop everything and release “3”
F2::
    if (toggle) {
        toggle := false
        SetTimer, SpamSpace, Off
        Send, {3 up}
    }
return
