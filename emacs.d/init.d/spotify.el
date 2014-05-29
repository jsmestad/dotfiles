;; Some methods for controlling Spotify from within Emacs

;; For OSX
;; Get the osascript from https://github.com/dronir/SpotifyControl
;; Create file in /usr/bin/spotify with the following contents
;;
;; #! /usr/bash
;; osascript /Users/brady/Scripts/SpotifyControl.scpt "$1"
;;
;; For linux, no additional files are needed :)

(defun spotify-linux-command (command-name) "Execute command for Spotify" (interactive)
  (setq command-text (format "%s%s" "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player." command-name))
  (shell-command command-text))

(defun spotify-play () "Play Spotify" (interactive)
  (if (string-equal system-type "gnu/linux")
      (spotify-linux-command "Play"))
  (if (string-equal system-type "darwin")
      (shell-command "spotify play")))

(defun spotify-pause () "Pause Spotify" (interactive)
  (if (string-equal system-type "gnu/linux")
      (spotify-linux-command "Pause"))
  (if (string-equal system-type "darwin")
      (shell-command "spotify pause")))

(defun spotify-toggle () "Play/Pause Spotify" (interactive)
  (if (string-equal system-type "gnu/linux")
      (spotify-linux-command "PlayPause"))
  (if (string-equal system-type "darwin")
      (shell-command "spotify play/pause")))

(defun spotify-previous () "Starts the song over in Spotify" (interactive)
  (if (string-equal system-type "gnu/linux")
      (spotify-linux-command "Previous"))
  (if (string-equal system-type "darwin")
      (shell-command "spotify prev")))

(defun spotify-next () "Next song in Spotify" (interactive)
  (if (string-equal system-type "gnu/linux")
      (spotify-linux-command "Next"))
  (if (string-equal system-type "darwin")
      (shell-command "spotify next")))
