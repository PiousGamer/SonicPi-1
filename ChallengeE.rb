# TEMPO & SYNTH
use_bpm 180
use_synth :chipbass
define :partone do
  4.times do
    play :c4
    sleep 1.5
    play :g3
    sleep 1.5
    play :e3
    sleep 1.5
    play :a3
    sleep 1
    play :b3
    sleep 1
    play :bb3
    sleep 0.5
    play :a3
    sleep 1
  end
  stop
end

define :onepart do
  4.times do
    sample Pipe
    sleep 1.5
    sample OneUp
    sleep 1.5
    sample Pipe
    sleep 1.5
    sample Coin
    sleep 1
    sample Coin
    sleep 1
    sample Coin
    sleep 0.5
    sample OneUp
  end
  stop
end

# VARIABLES TO STORE SAMPLES
Mario = "C:/Users/daniel_chavez/Downloads/mario_sounds-20220222T193106Z-001/mario_sounds/mario_intro.wav"
Pipe = "C:/Users/daniel_chavez/Downloads/mario_sounds-20220222T193106Z-001/mario_sounds/pipe.wav"
OneUp = "C:/Users/daniel_chavez/Downloads/mario_sounds-20220222T193106Z-001/mario_sounds/oneup.wav"
Coin = "C:/Users/daniel_chavez/Downloads/mario_sounds-20220222T193106Z-001/mario_sounds/coin.wav"
Mushroom = "C:/Users/daniel_chavez/Downloads/mario_sounds-20220222T193106Z-001/mario_sounds/mushroom.wav"

# INTRO
sample Mario
sleep 8
play :e4
sleep 0.5
play :e4
sleep 1
play :e4
sleep 1
play :c4
sleep 0.5
play :e4
sleep 1
play :g4
sleep 2
play :g3
sleep 2


# PART ONE
live_loop :p1high do
  partone
end
live_loop :p1low do
  onepart
end

sleep 32

#PART TWO
play :g3
sleep 2/3.0 #0.666666...
play :e4
sleep 2/3.0 #0.666666...
play :g4
sleep 2/3.0 #0.666666...
play :a4
sleep 1
play :f4
sleep 0.5
play :g4
sleep 1
play :e4
sleep 1
play :c4
sleep 0.5
play :d4
sleep 0.5
play :b3
sleep 1
sample Mushroom
