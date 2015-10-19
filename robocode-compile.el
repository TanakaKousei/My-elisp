;;robocode-compile

(defun robocode-compile()
  (interactive)
  (setq filePath (buffer-name))
  (shell-command
   (format "javac -classpath /usr/lib/jvm/java-8-oracle/jre/lib/rt.jar:/home/USER/robocode/libs/robocode.jar:/home/USER/robocode/robots %s" (shell-quote-argument (expand-file-name filePath)))
   "*Robo-compile*"))
(provide 'robocode-compile)

