# Stranger Things Main Theme
use_bpm 160
use_synth :saw
note = ["c2", "e2", "g2", "b2", "c3", "b2", "g2", "e2"]
i = 0
live_loop :main_theme do
  8. times do
    with_fx :distortion do
      play note [i]
      sleep 0.5
      i = i + 1
    end
  end
  i = 0
end


