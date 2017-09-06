(ns ballworld.core
  (:gen-class)
  (:import
    (javax.swing JFrame JPanel JButton JOptionPane Box BoxLayout Timer)
    (java.awt Dimension Color GridLayout FlowLayout)
    (java.awt.event ActionListener)
    (java.awt.geom Ellipse2D)))

(declare createBall)
(declare updatePosition)
(declare updateAllBalls)

;;TASKS
; Create a button that changes the background color using a multimethod
; Create a ball that is actually a rectangle (you can use the swing method .fillRect) Use the paint multimethod to draw it
; Create a ball that splits into two balls moving in different directions when it collides with a wall

;;;;;;;;;;;;;;;;;;;;;;;
;GLOBALS
;;;;;;;;;;;;;;;;;;;;;;;

(def FRAMEBOUNDS (Dimension. 600 450))
(def WORLDBOUNDS (Dimension. 400 350))
(def BALLRADIUS 10)
(def FPS 24)
(def UPDATERATE (/ 1000 FPS))

;;;;;;;;;;;;;;;;;;;;;;;
;FUNCTIONAL MODEL
;;;;;;;;;;;;;;;;;;;;;;;

;Creates a standard ball - defaults to mover rn
(defn createBall [type]
  {:center [(/ (.width WORLDBOUNDS) 2) (/ (.height WORLDBOUNDS) 2)]
   :velocity [3 2]
   :radius 10
   :type type})

;creates a world state
;REMEMBER! the balls are REFS, NOT VALUES
(defn createState []
  {:color Color/red
   :balls '()})

;paint multimethod
(defmulti paint (fn [g ball] (:type ball)))

(defmethod paint :mover [g ball]
  (let [[cx cy] (ball :center)
        r (ball :radius)
        circle (new java.awt.geom.Ellipse2D$Double (- cx r) (- cy r) r r)]
        (.setColor g Color/blue)
        (.fill g circle)
        (.draw g circle)))

(defmethod paint :splitBall [g ball]
  (let [[cx cy] (ball :center)
        r (ball :radius)
        circle (new java.awt.geom.Ellipse2D$Double (- cx r) (- cy r) r r)]
        (.setColor g Color/blue)
        (.fill g circle)
        (.draw g circle)))

(defmethod paint :rectBall [g ball]
  (let [[cx cy] (ball :center)
        r (ball :radius)
        rect (new java.awt.Rectangle (- cx r) (- cy r) r r)]
        (.setColor g Color/blue)
        (.fill g rect)
        (.draw g rect)))

;;;;;;;;;;;;;;;;;;;;;;;
;MUTABLE MODEL
;;;;;;;;;;;;;;;;;;;;;;;

(defn updateAllBalls [state]
    (dosync
      (loop [balls (@state :balls)]
        (if (empty? balls)
          :done
          (do
            (updatePosition (first balls) state)
            (recur (rest balls)))))))

;Timer that sends update signals to the frame to repaint
(defn updateTimer [world state]
  (proxy [ActionListener] []
    (actionPerformed [e]
        (updateAllBalls state)
        (.revalidate world)
        (.repaint world)
    )))

;mover action listener
(defn createMover [state]
  (proxy [ActionListener] []
    (actionPerformed [e]
      (dosync
        (let [newBall (ref (createBall :mover))
              currentBalls (@state :balls)]
              (ref-set state (assoc @state :balls (cons newBall currentBalls))))))))

;mover action listener
(defn createSplitBall [state]
  (proxy [ActionListener] []
    (actionPerformed [e]
      (dosync
        (let [newBall (ref (createBall :splitBall))
              currentBalls (@state :balls)]
              (ref-set state (assoc @state :balls (cons newBall currentBalls))))))))

;mover action listener
(defn createRectBall [state]
  (proxy [ActionListener] []
    (actionPerformed [e]
      (dosync
        (let [newBall (ref (createBall :rectBall))
              currentBalls (@state :balls)]
              (ref-set state (assoc @state :balls (cons newBall currentBalls))))))))

(defn changeBGColor [state world]
  (proxy [ActionListener] []
    (actionPerformed [e]
      (dosync
        (.setBackground world Color/blue)
      )
    )
  ))

;update multimethod
(defmulti updatePosition (fn [ball state] (:type (deref ball) )))

;Currently only moves up and left by 1
(defmethod updatePosition :mover [ball state]
  (dosync
    (let [[oldCx oldCy] (@ball :center)
          [velX velY] (@ball :velocity)
          xLim (.width WORLDBOUNDS)
          yLim (.height WORLDBOUNDS)]
      (def newX
        (if (or (< oldCx 0) (> oldCx xLim))
          (* -1 velX)
          velX))
      (def newY
        (if (or (< oldCy 0) (> oldCy yLim))
          (* -1 velY)
          velY))

      (ref-set ball (assoc @ball :center [(+ oldCx newX) (+ oldCy newY)]))
      (ref-set ball (assoc @ball :velocity [newX newY])))))

(defmethod updatePosition :rectBall [ball state]
  (dosync
    (let [[oldCx oldCy] (@ball :center)
          [velX velY] (@ball :velocity)
          xLim (.width WORLDBOUNDS)
          yLim (.height WORLDBOUNDS)]
      (def newX
        (if (or (< oldCx 0) (> oldCx xLim))
          (* -1 velX)
          velX))
      (def newY
        (if (or (< oldCy 0) (> oldCy yLim))
          (* -1 velY)
          velY))

      (ref-set ball (assoc @ball :center [(+ oldCx newX) (+ oldCy newY)]))
      (ref-set ball (assoc @ball :velocity [newX newY])))))

(defmethod updatePosition :splitBall [ball state]
  (dosync
    (let [[oldCx oldCy] (@ball :center)
          [velX velY] (@ball :velocity)
          xLim (.width WORLDBOUNDS)
          yLim (.height WORLDBOUNDS)]
      (def newX
        (if (or (< oldCx 0) (> oldCx xLim))
          (let [newBall (ref (createBall :splitBall))
              currentBalls (@state :balls)]
              (ref-set newBall (assoc @newBall :center [(- oldCx velX) oldCy]))
              (ref-set newBall (assoc @newBall :velocity [(* -1 velX) (* -1 velY)]))
              (ref-set state (assoc @state :balls (cons newBall currentBalls))) (* -1 velX))
          velX))
      (def newY
        (if (or (< oldCy 0) (> oldCy yLim))
          (let [newBall (ref (createBall :splitBall))
              currentBalls (@state :balls)]
              (ref-set newBall (assoc @newBall :center [oldCx (- oldCy velY)]))
              (ref-set newBall (assoc @newBall :velocity [(* -1 velX) (* -1 velY)]))
              (ref-set state (assoc @state :balls (cons newBall currentBalls))) (* -1 velY))
          velY))

      (ref-set ball (assoc @ball :center [(+ oldCx newX) (+ oldCy newY)]))
      (ref-set ball (assoc @ball :velocity [newX newY])))))
;;;;;;;;;;;;;;;;;;;;;;;
;GUI
;;;;;;;;;;;;;;;;;;;;;;;

;create a button, requires a label and an event listener
(defn createButton [label listener]
  (let [b (JButton.)]
    (.addActionListener b listener)
    (.setText b label)
    b))

;creates a frame, and sets the layout
(defn ballFrame []
  (let [f (proxy [JFrame] []
            (getPreferredSize [] FRAMEBOUNDS))]
      (.setLayout f (FlowLayout. FlowLayout/LEFT 20 25))
      f))

;creates a panel for buttons
(defn controlPanel []
  (let [p (JPanel.)
        box (BoxLayout. p BoxLayout/Y_AXIS)]
      (.setLayout p box)
      p))

;creates the simulation panel - everything happens here
(defn worldPanel [state]
  (let [p (proxy [JPanel] []

            (getPreferredSize []
              WORLDBOUNDS)

            (paintComponent [g]
                (proxy-super paintComponent g)
                (loop [balls (@state :balls)]
                  (if (empty? balls)
                    :done
                    (do
                      (paint g (deref (first balls)))
                      (recur (rest balls)))))))

        box (BoxLayout. p BoxLayout/Y_AXIS)]

    (.setLayout p box)
    (.setBackground p Color/red)
    p))

;dummy action listener
(defn doNothing []
  (proxy [ActionListener] []
    (actionPerformed [e]
      (println "hi"))))

(defn -main []
  ;define world state
  (def frame (ballFrame)) ;create the frame
  (def controls (controlPanel)) ;creates the control panel

  (def state (ref (createState)))
  (def world (worldPanel state))

  (let [moverButton (createButton "mover" (createMover state))
        rectButton (createButton "rectBall" (createRectBall state))
        bgButton (createButton "Bg color" (changeBGColor state world))
        splitButton (createButton "Split ball" (createSplitBall state))]

    (.add controls moverButton)
    (.add controls rectButton)
    (.add controls bgButton)
    (.add controls splitButton)

    (.add frame controls)
    (.add frame world)
    (.pack frame)

    (.start (Timer. UPDATERATE (updateTimer world state)))

    (.setVisible frame true)
    (.setDefaultCloseOperation frame JFrame/EXIT_ON_CLOSE)))
