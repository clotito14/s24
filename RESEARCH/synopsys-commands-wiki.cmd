; This is a compilation of SYNOPSYS SENTARUS COMMANDS

;;; -- GEOMETRY --


; rectangles
(sdegeo:create-rectangle position1 positon2 material-name region-name) ; region_name defaults to region_1, region_2, ...


; regular polygons
(sdegeo:create-reg-polygon center-position radius number_of_faces start_angle material-name region_name)


; polygons
(sdegeo-create-polygon list-of-positions material-name region-name)

; ruled regions (i.e. region created by connecting the endpoints of two edges)
(sdegeo:create-ruled-region edge-list material-name region-name)


;;; OTHER FUNCTIONS
(car ) ; finds the first element in a list
(color:rgb 1 0 0) ; the color red (other colors p.355)
