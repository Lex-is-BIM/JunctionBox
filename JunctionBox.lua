local width = 100
local height = 70

local contour = CreateRectangle2D(Point2D(0,0),0,width,width)
FilletCorners2D(contour,10)
local extParam =  ExtrusionParameters(height)
extParam.ForwardDirectionDraftAngle = math.rad(-10)
local solid = Extrude(contour,extParam)
Style.SetDetailedGeometry(ModelGeometry():AddSolid(solid))