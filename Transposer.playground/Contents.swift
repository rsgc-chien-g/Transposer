//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
// Input Instrument
var instrument1 = ["Trumpet/Tenor/Clarinet/Flute", "Alto/Baritone", "Trombone", ]
// Output Instrument
var instrument2 = ["Trumpet/Tenor/Clarinet/Flute", "Alto/Baritone", "Trombone", ]
// Input Note
var notes1: [String] = ["Bb", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A"]
// Input Note
var notes2: [String] = ["Bb", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A"]

// Chosen Input instrument
var inputInst: Int = 0
// Chosen Output instrument
var outputInst: Int = 1
// Input note
var inputNote: Int = 0


notes2 
// Alto/Baritone -> Trumpet/Tenor
if (instrument1[inputInst] == instrument1[1] && instrument2[outputInst] == instrument2[0]){
    instrument1[inputInst]
    notes1[inputNote]
    
    instrument2[outputInst]
    notes2[inputNote] = notes1[(inputNote+5)%12]
}

// Trumpet/Tenor -> Alto/Baritone
if (instrument1[inputInst] == instrument1[0] && instrument2[outputInst] == instrument2[1]){
    instrument1[inputInst]
    notes1[inputNote]
    
    instrument2[outputInst]
    notes2[inputNote] = notes1[(inputNote+7)%12]
}

// Trumpet/Tenor -> Trombone
if (instrument1[inputInst] == instrument1[0] && instrument2[outputInst] == instrument2[2]){
    instrument1[inputInst]
    notes1[inputNote]
    
    instrument2[outputInst]
    notes2[inputNote] = notes1[(inputNote+10)%12]
}

// Trombone -> Trumpet/Tenor
if (instrument1[inputInst] == instrument1[2] && instrument2[outputInst] == instrument2[0]){
    instrument1[inputInst]
    notes1[inputNote]
    
    instrument2[outputInst]
    notes2[inputNote] = notes1[(inputNote+2)%12]
}

// Alto/Baritone -> Trombone
if (instrument1[inputInst] == instrument1[1] && instrument2[outputInst] == instrument2[2]){
    instrument1[inputInst]
    notes1[inputNote]
    
    instrument2[outputInst]
    notes2[inputNote] = notes1[(inputNote+3)%12]
}

// Trombone -> Alto/Baritone
if (instrument1[inputInst] == instrument1[2] && instrument2[outputInst] == instrument2[1]){
    instrument1[inputInst]
    notes1[inputNote]
    
    instrument2[outputInst]
    notes2[inputNote] = notes1[(inputNote+9)%12]
}

