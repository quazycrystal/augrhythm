import rtmidi

# Create an instance of MidiOut
midi_out = rtmidi.MidiOut()

# Open a virtual MIDI port (this acts like a loopMIDI alternative)
virtual_port_name = "Python_Virtual_MIDI"
midi_out.open_virtual_port(virtual_port_name)
print(f"Virtual MIDI port '{virtual_port_name}' created. It can now be linked with Ableton Live or other software.")

# Helper function to send MIDI messages
def send_midi_note_on(note, velocity=64):
    midi_out.send_message([0x90, note, velocity])  # Note On message

def send_midi_note_off(note, velocity=64):
    midi_out.send_message([0x80, note, velocity])  # Note Off message

# Example usage: Send a Note On message for middle C (MIDI note number 60)
send_midi_note_on(60)
print("Sent Note On message for MIDI note 60 (middle C).")

# Example usage: Send a Note Off message for middle C after a brief pause
import time
time.sleep(1)  # Pause for 1 second
send_midi_note_off(60)
print("Sent Note Off message for MIDI note 60 (middle C).")

# Close the virtual port when done
midi_out.close_port()
print(f"Virtual MIDI port '{virtual_port_name}' closed.")
