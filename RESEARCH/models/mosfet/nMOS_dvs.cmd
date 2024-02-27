;---- Create an nMOS Device --------------------

;--------------------------------------------------------
; create substrate
(sdegeo:create-rectangle (position 0 0 0.0) (position 3.0 1.3 0) "Silicon" "region_1")
; (x1, y1, z1) (x2, y2, z2) Material

;create oxide layer
(sdegeo:create-rectangle (position 1 0 0.0) (position 2 -0.01 0.0) "SiO2" "region_2")

; create gate
(sdegeo:create-rectangle (position 1 -0.01 0.0) (position 2 -0.03 0.0) "Aluminum" "region_3" )
;--------------------------------------------------------

;------------------------------------------------------
; CREATING THE CONTACTS
; create vertices for contact
(sdegeo:insert-vertex (position 0.7 0 0))
(sdegeo:insert-vertex (position 2.3 0 0))

; define and create contacts
; SOURCE
(sdegeo:define-contact-set "Source" 4 (color:rgb 1 0 0) "##")
(sdegeo:set-current-contact-set "Source")
(sdegeo:set-contact-edges (list (car (find-edge-id (position 0.35 0 0)))) "Source")

; DRAIN 
(sdegeo:define-contact-set "Drain" 4 (color:rgb 1 0 0) "##")
(sdegeo:set-current-contact-set "Drain")
(sdegeo:set-contact-edges (list (car (find-edge-id (position 2.65 0 0)))) "Drain")

; GATE
(sdegeo:define-contact-set "Gate" 4 (color:rgb 1 0 0) "##")
(sdegeo:set-current-contact-set "Gate")
(sdegeo:set-contact-edges (list (car (find-edge-id (position 1.5 -0.03 0)))) "Gate")

; SUBSTRATE
(sdegeo:define-contact-set "Substrate" 4 (color:rgb 1 0 0) "##")
(sdegeo:set-current-contact-set "Substrate")
(sdegeo:set-contact-edges (list (car (find-edge-id (position 1.5 1.3 0)))) "Substrate")

;--------------------------------------------------

;--------------------------------------------------
; SET DOPING CONCENTRATIONS
; dope substrate
(sdedr:define-refeval-window "RefEvalWin_1" "Rectangle" (position 0 0 0) (position 3 1.3 0))
(sdedr:define-constant-profile "substrate" "BoronActiveConcentration" 1e+16) 
(sdedr:define-constant-profile-placement "substrate" "substrate" "RefEvalWin_1" 0)

; dope channel
(sdedr:define-refeval-window "RefEvalWin_2" "Line" (position 1 0 0)  (position 2 0 0))
(sdedr:define-gaussian-profile "channel" "BoronActiveConcentration" "PeakPos" 0.1 "PeakVal" 2e+17 "StdDev" 0.1 "Gauss" "Factor" 0.8) 
(sdedr:define-analytical-profile-placement "channel" "channel" "RefEvalWin_2" "Positive" "NoReplace" "Eval")

; dope source
(sdedr:define-refeval-window "RefEvalWin_3" "Line" (position 0 0 0)  (position 1 0 0))
(sdedr:define-gaussian-profile "source" "PhosphorusActiveConcentration" "PeakPos" 0 "PeakVal" 3e+19 "ValueAtDepth" 1e+19 "Depth" 0.2 "Gauss" "Factor" 0.8) 
(sdedr:define-analytical-profile-placement "source" "source" "RefEvalWin_3" "Positive" "NoReplace" "Eval")

; dope drain
(sdedr:define-refeval-window "RefEvalWin_4" "Line" (position 2 0 0)  (position 3 0 0))
(sdedr:define-gaussian-profile "drain" "PhosphorusActiveConcentration" "PeakPos" 0 "PeakVal" 3e+19 "ValueAtDepth" 1e+19 "Depth" 0.2 "Gauss" "Factor" 0.8) 
(sdedr:define-analytical-profile-placement "drain" "drain" "RefEvalWin_4" "Positive" "NoReplace" "Eval")

; ------------------------------------------

; ------------------------------------------
; MESHING CONFIGURATION

;meshing active region
(sdedr:define-refeval-window "RefEvalWin_5" "Rectangle" (position 0 0 0) (position 3 0.2 0))
(sdedr:define-refinement-size "top" 0.1 0.04 0.01 0.01)
(sdedr:define-refinement-placement "top" "top" "RefEvalWin_5")
; For refinement size: x_mesh_max y_mesh_max x_mesh_min y_mesh_min

; meshing entire device
(sdedr:define-refeval-window "RefEvalWin_6" "Rectangle" (position 0 -0.01 0) (position 3 1.3 0))
(sdedr:define-refinement-size "entire" 0.2 0.2 0.02 0.02)
(sdedr:define-refinement-placement "entire" "entire" "RefEvalWin_6")

(sde:build-mesh "mesh" "-P -discontinuousData" "nMOS_dvs.cmd")

;--------------------------------------------

; GENERAL NOTES ABOUT THE CODE AND HOW IT WORKS

; sdegeo creates the geometry for the device 
    ; i.e. create-rectangle, insert-vertex

