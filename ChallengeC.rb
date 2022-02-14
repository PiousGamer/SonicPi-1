use_bpm 160
use_synth :prophet
use_synth_defaults amp: 2

define :stranger_things_theme do
  play:c4
  sleep 0.5
  play:e4
  sleep 0.5
  play:g4
  sleep 0.5
  play:b4
  sleep 0.5
  play:c5
  #second set of eighth notes
  sleep 0.5
  play:b4
  sleep 0.5
  play:g4
  sleep 0.5
  play:e4
  sleep 0.5
end

with_fx :slicer do
  stranger_things_theme
end

with_fx :reverb do
  stranger_things_theme
end

with_fx :gverb do
  stranger_things_theme
end

with_fx :ixi_techno do
  stranger_things_theme
end
