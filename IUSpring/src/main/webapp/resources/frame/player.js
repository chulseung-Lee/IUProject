/*music player js*/
// Global variable to track current file name.
var currentFile = "";
function playAudio() {
	// Check for audio element support.
	if (window.HTMLAudioElement) {
		try {
			var oAudio = document.getElementById('myaudio');
			var btn = document.getElementById('play'); 
			var audioURL = document.getElementById('audiofile'); 
			var playImage = document.getElementById('play_stop');
			var Dur = document.getElementById('seek');
			var song = audioURL.value;
								
			//Skip loading if current file hasn't changed.
			if (audioURL.value !== currentFile) {
				oAudio.src = song;
				currentFile = song;
			}

			// Tests the paused attribute and set state. 
			if (oAudio.paused) {
				oAudio.play();
				playImage.src ="player_icon/stop.png";
			}
			else {
				oAudio.pause();
				playImage.src ="player_icon/play.png";
			}
		}
		catch (e) {
			// Fail silently but show in F12 developer tools console
			 if(window.console && console.error("Error:" + e));
		}
	}
}
	 // Rewinds the audio file by 30 seconds.

function rewindAudio() {
	 // Check for audio element support.
	if (window.HTMLAudioElement) {
		try {
			var oAudio = document.getElementById('myaudio');
			oAudio.currentTime -= 30.0;
		}
		catch (e) {
			// Fail silently but show in F12 developer tools console
			 if(window.console && console.error("Error:" + e));
		}
	}
}

	 // Fast forwards the audio file by 30 seconds.

function forwardAudio() {

	 // Check for audio element support.
	if (window.HTMLAudioElement) {
		try {
			var oAudio = document.getElementById('myaudio');
			oAudio.currentTime += 30.0;
		}
		catch (e) {
			// Fail silently but show in F12 developer tools console
			 if(window.console && console.error("Error:" + e));
		}
	}
}

	 // Restart the audio file to the beginning.

function restartAudio() {
	 // Check for audio element support.
	if (window.HTMLAudioElement) {
		try {
			var oAudio = document.getElementById('myaudio');
			oAudio.currentTime = 0;
		}
		catch (e) {
			// Fail silently but show in F12 developer tools console
			 if(window.console && console.error("Error:" + e));
	   }
	}
}
	