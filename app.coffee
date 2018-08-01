# Show Hints
Framer.Extras.Hints.disable()
artboard.x = Align.center
artboard.y = Align.top

# Use desktop cursor
document.body.style.cursor = "auto"

Framer.Extras.Preloader.enable()
Utils.loadWebFont("Material Icons")
affordances =[baseItem1, baseItem2, baseItem3, baseItem4, baseItem5, baseItem6, baseItem7, baseItem8, lndnItem1, lndnItem2, lndnItem3, lndnItem4, lndnItem5, lndnItem6, lndnItem7, lndnItem8, laItem1, laItem2, laItem3, laItem4, laItem5, laItem6, laItem7, laItem8, base, lndn, la, newExperience, lndnEditDesign, laEditDesign, laPublish, lndnPublish, basePublish, lndnContinue, lndnCancel, laContinue, laCancel, okayBtn]


createAffordances = (index) ->
	affordances[index].onMouseOver ->
		if affordances[index].visible == true
			document.body.style.cursor = "pointer"
	affordances[index].onMouseOut ->
		document.body.style.cursor = "auto"

for i in [0...affordances.length]
	createAffordances(i)


baseItems = [baseItem1, baseItem2, baseItem3, baseItem4, baseItem5, baseItem6, baseItem7, baseItem8]
baseHomes =[]

baseDefaults = [baseItem1Default, baseItem2Default, baseItem3Default, baseItem4Default, baseItem5Default, baseItem6Default, baseItem7Default, baseItem8Default]
baseHovers = [baseItem1Hover, baseItem2Hover, baseItem3Hover, baseItem4Hover, baseItem5Hover, baseItem6Hover, baseItem7Hover, baseItem8Hover]
baseActives = [baseItem1Active, baseItem2Active, baseItem3Active, baseItem4Active, baseItem5Active, baseItem6Active, baseItem7Active, baseItem8Active]
baseActiveHovers = [baseItem1ActiveHover, baseItem2ActiveHover, baseItem3ActiveHover, baseItem4ActiveHover, baseItem5ActiveHover, baseItem6ActiveHover, baseItem7ActiveHover, baseItem8ActiveHover]

lndnItems = [lndnItem1, lndnItem2, lndnItem3, lndnItem4, lndnItem5, lndnItem6, lndnItem7, lndnItem8]
lndnHomes =[]

lndnDefaults = [lndnItem1Default, lndnItem2Default, lndnItem3Default, lndnItem4Default, lndnItem5Default, lndnItem6Default, lndnItem7Default, lndnItem8Default]
lndnHovers = [lndnItem1Hover, lndnItem2Hover, lndnItem3Hover, lndnItem4Hover, lndnItem5Hover, lndnItem6Hover, lndnItem7Hover, lndnItem8Hover]
lndnActives = [lndnItem1Active, lndnItem2Active, lndnItem3Active, lndnItem4Active, lndnItem5Active, lndnItem6Active, lndnItem7Active, lndnItem8Active]
lndnActiveHovers = [lndnItem1ActiveHover, lndnItem2ActiveHover, lndnItem3ActiveHover, lndnItem4ActiveHover, lndnItem5ActiveHover, lndnItem6ActiveHover, lndnItem7ActiveHover, lndnItem8ActiveHover]


laItems = [laItem1, laItem2, laItem3, laItem4, laItem5, laItem6, laItem7, laItem8]
laHomes = []

laDefaults = [laItem1Default, laItem2Default, laItem3Default, laItem4Default, laItem5Default, laItem6Default, laItem7Default, laItem8Default]
laHovers = [laItem1Hover, laItem2Hover, laItem3Hover, laItem4Hover, laItem5Hover, laItem6Hover, laItem7Hover, laItem8Hover]
laActives = [laItem1Active, laItem2Active, laItem3Active, laItem4Active, laItem5Active, laItem6Active, laItem7Active, laItem8Active]
laActiveHovers = [laItem1ActiveHover, laItem2ActiveHover, laItem3ActiveHover, laItem4ActiveHover, laItem5ActiveHover, laItem6ActiveHover, laItem7ActiveHover, laItem8ActiveHover]


laNameModal.visible = false
lndnNameModal.visible = false
warningModal.visible = false

laSEO.visible = false
laAudience.visible = false
lndnSEO.visible = false
lndnAudience.visible = false
baseSEO.visible = false
baseAudience.visible = false
laBar.visible = false
lndnBar.visible = false
laPreview.visible = false
lndnPreview.visible = false
lndnSet.visible = false
laSet.visible = false

laEditDesign.onClick ->
	laPreviewPre.visible = false

lndnEditDesign.onClick ->
	lndnPreviewPre.visible = false



newExperience.onClick ->
	if lndnSet.visible is false
		lndnNameModal.visible = true
	else if laSet.visible is false
		laNameModal.visible = true

lndnCancel.onClick ->
	lndnNameModal.visible = false
laCancel.onClick ->
	laNameModal.visible = false

lndnContinue.onClick ->
	lndnNameModal.visible = false
	lndnBar.visible = true
	lndnPreview.visible = true
	lndnSet.visible = true
	baseBar.visible = false
	basePreview.visible = false
	baseSEO.visible = false
	baseAudience.visible = false
	lndnReset()
	lndnExpand()
	baseCollapse()
	laCollapse()
	lndnItem1Hover.visible = false
	for layer in baseActives
		layer.visible = false
	for layer in lndnActives
		layer.visible = false
	for layer in laActives
		layer.visible = false
	for layer in baseDefaults
		layer.visible = true
	for layer in lndnDefaults
		layer.visible = true
	for layer in laDefaults
		layer.visible = true
	lndnItem1Default.visible = false
	lndnItem1Active.visible = true
	lndnBar.visible = true
	basePreview.visible = false
	baseSEO.visible = false
	baseAudience.visible = false
	lndnPreview.visible = true
	lndnSEO.visible = false
	lndnAudience.visible = false
	laPreview.visible = false
	laSEO.visible = false
	laAudience.visible = false
	baseBar.visible = false
	laBar.visible = false

laContinue.onClick ->
	laNameModal.visible = false
	laBar.visible = true
	laPreview.visible = true
	laSet.visible = true
	lndnBar.visible = false
	lndnPreview.visible = false
	lndnSEO.visible = false
	lndnAudience.visible = false
	baseBar.visible = false
	basePreview.visible = false
	baseSEO.visible = false
	baseAudience.visible = false
	laReset()
	lndnReset()
	laExpand()
	baseCollapse()
	lndnCollapse()
	laItem1Hover.visible = false
	for layer in baseActives
		layer.visible = false
	for layer in lndnActives
		layer.visible = false
	for layer in laActives
		layer.visible = false
	for layer in baseDefaults
		layer.visible = true
	for layer in lndnDefaults
		layer.visible = true
	for layer in laDefaults
		layer.visible = true
	laItem1Default.visible = false
	laItem1Active.visible = true
	laBar.visible = true
	basePreview.visible = false
	baseSEO.visible = false
	baseAudience.visible = false
	lndnPreview.visible = false
	lndnSEO.visible = false
	lndnAudience.visible = false
	laPreview.visible = true
	laSEO.visible = false
	laAudience.visible = false
	baseBar.visible = false
	lndnBar.visible = false

laPublish.onClick ->
	warningModal.visible = true
lndnPublish.onClick ->
	warningModal.visible = true
basePublish.onClick ->
	warningModal.visible = true

okayBtn.onClick ->
	warningModal.visible = false

hide = (array) ->
	for layer in array
		layer.visible = false
hide(baseHovers)
hide(baseActives)
hide(baseActiveHovers)
hide(lndnHovers)
hide(lndnActives)
hide(lndnActiveHovers)
hide(laHovers)
hide(laActives)
hide(laActiveHovers)


createBaseHovers = (i) ->
	baseItems[i].onMouseOver ->
		if baseDefaults[i].visible is true
			baseHovers[i].visible = true
			baseDefaults[i].visible = false
		else if baseActives[i].visible is true
			baseActiveHovers[i].visible = true
			baseActives[i].visible = false
	baseItems[i].onMouseOut ->
		if baseHovers[i].visible is true
			baseDefaults[i].visible = true
			baseHovers[i].visible = false
		else if baseActiveHovers[i].visible is true
			baseActives[i].visible = true
			baseActiveHovers[i].visible = false

createLndnHovers = (i) ->
	lndnItems[i].onMouseOver ->
		if lndnDefaults[i].visible is true
			lndnHovers[i].visible = true
			lndnDefaults[i].visible = false
		else if lndnActives[i].visible is true
			lndnActiveHovers[i].visible = true
			lndnActiveHovers[i].visible = false
	lndnItems[i].onMouseOut ->
		if lndnHovers[i].visible is true
			lndnDefaults[i].visible = true
			lndnHovers[i].visible = false
		else if lndnActiveHovers[i].visible is true
			lndnActives[i].visible = true
			lndnActiveHovers[i].visible = false


createLaHovers = (i) ->
	laItems[i].onMouseOver ->
		if laDefaults[i].visible is true
			laHovers[i].visible = true
			laDefaults[i].visible = false
		else if laActives[i].visible is true
			laActiveHovers[i].visible = true
			laActiveHovers[i].visible = false
	laItems[i].onMouseOut ->
		if laHovers[i].visible is true
			laDefaults[i].visible = true
			laHovers[i].visible = false
		else if laActiveHovers[i].visible is true
			laActives[i].visible = true
			laActiveHovers[i].visible = false



baseItem1.onClick ->
	baseItem1Hover.visible = false
	for layer in baseActives
		layer.visible = false
	for layer in lndnActives
		layer.visible = false
	for layer in laActives
		layer.visible = false
	for layer in baseDefaults
		layer.visible = true
	for layer in lndnDefaults
		layer.visible = true
	for layer in laDefaults
		layer.visible = true
	baseItem1Default.visible = false
	baseItem1ActiveHover.visible = true
	baseBar.visible = true
	basePreview.visible = true
	baseSEO.visible = false
	baseAudience.visible = false
	lndnBar.visible = false
	lndnPreview.visible = false
	lndnSEO.visible = false
	lndnAudience.visible = false
	laBar.visible = false
	laPreview.visible = false
	laSEO.visible = false
	laAudience.visible = false

baseItem2.onClick ->
	baseItem2Hover.visible = false
	for layer in baseActives
		layer.visible = false
	for layer in lndnActives
		layer.visible = false
	for layer in laActives
		layer.visible = false
	for layer in baseDefaults
		layer.visible = true
	for layer in lndnDefaults
		layer.visible = true
	for layer in laDefaults
		layer.visible = true
	baseItem2Default.visible = false
	baseItem2ActiveHover.visible = true
	baseBar.visible = true
	basePreview.visible = false
	baseSEO.visible = false
	baseAudience.visible = true
	lndnBar.visible = false
	lndnPreview.visible = false
	lndnSEO.visible = false
	lndnAudience.visible = false
	laBar.visible = false
	laPreview.visible = false
	laSEO.visible = false
	laAudience.visible = false

baseItem6.onClick ->
	baseItem6Hover.visible = false
	for layer in baseActives
		layer.visible = false
	for layer in lndnActives
		layer.visible = false
	for layer in laActives
		layer.visible = false
	for layer in baseDefaults
		layer.visible = true
	for layer in lndnDefaults
		layer.visible = true
	for layer in laDefaults
		layer.visible = true
	baseItem6Default.visible = false
	baseItem6ActiveHover.visible = true
	baseBar.visible = true
	basePreview.visible = false
	baseSEO.visible = true
	baseAudience.visible = false
	lndnBar.visible = false
	lndnPreview.visible = false
	lndnSEO.visible = false
	lndnAudience.visible = false
	laBar.visible = false
	laPreview.visible = false
	laSEO.visible = false
	laAudience.visible = false

# baseItem7.onClick ->
# 	baseItem7Hover.visible = false
# 	for layer in baseActives
# 		layer.visible = false
# 	for layer in lndnActives
# 		layer.visible = false
# 	for layer in laActives
# 		layer.visible = false
# 	for layer in baseDefaults
# 		layer.visible = true
# 	for layer in lndnDefaults
# 		layer.visible = true
# 	for layer in laDefaults
# 		layer.visible = true
# 	baseItem7Default.visible = false
# 	baseItem7ActiveHover.visible = true
# 	basePreview.visible = false
# 	baseSEO.visible = false
# 	baseAudience.visible = true
# 	lndnPreview.visible = false
# 	lndnSEO.visible = false
# 	lndnAudience.visible = false
# 	laPreview.visible = false
# 	laSEO.visible = false
# 	laAudience.visible = false



lndnItem1.onClick ->
	lndnItem1Hover.visible = false
	for layer in baseActives
		layer.visible = false
	for layer in lndnActives
		layer.visible = false
	for layer in laActives
		layer.visible = false
	for layer in baseDefaults
		layer.visible = true
	for layer in lndnDefaults
		layer.visible = true
	for layer in laDefaults
		layer.visible = true
	lndnItem1Default.visible = false
	lndnItem1ActiveHover.visible = true
	lndnBar.visible = true
	basePreview.visible = false
	baseSEO.visible = false
	baseAudience.visible = false
	lndnPreview.visible = true
	lndnSEO.visible = false
	lndnAudience.visible = false
	laPreview.visible = false
	laSEO.visible = false
	laAudience.visible = false
	baseBar.visible = false
	laBar.visible = false





lndnItem2.onClick ->
	lndnItem2Hover.visible = false
	for layer in baseActives
		layer.visible = false
	for layer in lndnActives
		layer.visible = false
	for layer in laActives
		layer.visible = false
	for layer in baseDefaults
		layer.visible = true
	for layer in lndnDefaults
		layer.visible = true
	for layer in laDefaults
		layer.visible = true
	lndnItem2Default.visible = false
	lndnItem2ActiveHover.visible = true
	lndnBar.visible = true
	basePreview.visible = false
	baseSEO.visible = false
	baseAudience.visible = false
	lndnPreview.visible = false
	lndnSEO.visible = false
	lndnAudience.visible = true
	laPreview.visible = false
	laSEO.visible = false
	laAudience.visible = false
	baseBar.visible = false
	laBar.visible = false

lndnItem6.onClick ->
	lndnItem6Hover.visible = false
	for layer in baseActives
		layer.visible = false
	for layer in lndnActives
		layer.visible = false
	for layer in laActives
		layer.visible = false
	for layer in baseDefaults
		layer.visible = true
	for layer in lndnDefaults
		layer.visible = true
	for layer in laDefaults
		layer.visible = true
	lndnItem6Default.visible = false
	lndnItem6ActiveHover.visible = true
	lndnBar.visible = true
	basePreview.visible = false
	baseSEO.visible = false
	baseAudience.visible = false
	lndnPreview.visible = false
	lndnSEO.visible = true
	lndnAudience.visible = false
	laPreview.visible = false
	laSEO.visible = false
	laAudience.visible = false
	baseBar.visible = false
	laBar.visible = false

# lndnItem7.onClick ->
# 	lndnItem7Hover.visible = false
# 	for layer in baseActives
# 		layer.visible = false
# 	for layer in lndnActives
# 		layer.visible = false
# 	for layer in laActives
# 		layer.visible = false
# 	for layer in baseDefaults
# 		layer.visible = true
# 	for layer in lndnDefaults
# 		layer.visible = true
# 	for layer in laDefaults
# 		layer.visible = true
# 	lndnItem7Default.visible = false
# 	lndnItem7ActiveHover.visible = true



laItem1.onClick ->
	laItem1Hover.visible = false
	for layer in baseActives
		layer.visible = false
	for layer in lndnActives
		layer.visible = false
	for layer in laActives
		layer.visible = false
	for layer in baseDefaults
		layer.visible = true
	for layer in lndnDefaults
		layer.visible = true
	for layer in laDefaults
		layer.visible = true
	laItem1Default.visible = false
	laItem1ActiveHover.visible = true
	laBar.visible = true
	basePreview.visible = false
	baseSEO.visible = false
	baseAudience.visible = false
	lndnPreview.visible = false
	lndnSEO.visible = false
	lndnAudience.visible = false
	laPreview.visible = true
	laSEO.visible = false
	laAudience.visible = false
	baseBar.visible = false
	lndnBar.visible = false




laItem2.onClick ->
	laItem2Hover.visible = false
	for layer in baseActives
		layer.visible = false
	for layer in lndnActives
		layer.visible = false
	for layer in laActives
		layer.visible = false
	for layer in baseDefaults
		layer.visible = true
	for layer in lndnDefaults
		layer.visible = true
	for layer in laDefaults
		layer.visible = true
	laItem2Default.visible = false
	laItem2ActiveHover.visible = true
	laBar.visible = true
	basePreview.visible = false
	baseSEO.visible = false
	baseAudience.visible = false
	lndnPreview.visible = false
	lndnSEO.visible = false
	lndnAudience.visible = false
	laPreview.visible = false
	laSEO.visible = false
	laAudience.visible = true
	baseBar.visible = false
	lndnBar.visible = false

laItem6.onClick ->
	laItem6Hover.visible = false
	for layer in baseActives
		layer.visible = false
	for layer in lndnActives
		layer.visible = false
	for layer in laActives
		layer.visible = false
	for layer in baseDefaults
		layer.visible = true
	for layer in lndnDefaults
		layer.visible = true
	for layer in laDefaults
		layer.visible = true
	laItem6Default.visible = false
	laItem6ActiveHover.visible = true
	lndnBar.visible = true
	basePreview.visible = false
	baseSEO.visible = false
	baseAudience.visible = false
	lndnPreview.visible = false
	lndnSEO.visible = false
	lndnAudience.visible = false
	laPreview.visible = false
	laSEO.visible = true
	laAudience.visible = false
	baseBar.visible = false
	lndnBar.visible = false

# laItem7.onClick ->
# 	laItem7Hover.visible = false
# 	for layer in baseActives
# 		layer.visible = false
# 	for layer in lndnActives
# 		layer.visible = false
# 	for layer in laActives
# 		layer.visible = false
# 	for layer in baseDefaults
# 		layer.visible = true
# 	for layer in lndnDefaults
# 		layer.visible = true
# 	for layer in laDefaults
# 		layer.visible = true
# 	laItem7Default.visible = false
# 	laItem7ActiveHover.visible = true


for layer, i in baseItems
	createBaseHovers(i)
	createLndnHovers(i)
	createLaHovers(i)

for item in baseItems
	baseHomes.push item.y


baseState = 'open'
lndnState = 'open'
laState = 'open'
lndnHome = baseItem8.y + 84
laHome = baseItem8.y + 126


baseItem8.on "change:y", ->
	if baseItem8.y is baseItem1.y
		baseState = 'closed'
	else	baseState = 'open'

lndnItem8.on "change:y", ->
	if lndnItem8.y is lndnItem1.y
		lndnState = 'closed'
	else	lndnState = 'open'

laItem8.on "change:y", ->
	if laItem8.y is laItem1.y
		laState = 'closed'
	else	laState = 'open'

collapse = (array, icon, position) ->
	icon.animate 
		rotation: 180 
		options: time: 0.2
	for layer, i in array
		do (layer, i) ->
			layer.animate
					y: position
					opacity: 0
					options: 
						time: ((array.length+1)/(baseHomes[i] - base.y))*((i+1)*0.5) 
						curve: Bezier.ease

expand = (array, icon, position) ->
	icon.animate
		rotation: 0
		options: time: 0.2
	for layer, i in array
		do (layer, i) ->
			layer.animate
					y: position[i]
					opacity: 1
					options: 
						time: ((array.length+1)/(baseHomes[i] - base.y))*((i+1)*0.5) 
						curve: Bezier.ease

collapse(lndnItems, lndnIcon, lndn.y)
# collapse(baseItems, baseIcon, base.y)
collapse(laItems, laIcon, la.y)
# divider2.opacity = 0
# divider1.opacity = 0
divider4.opacity = 0
divider3.opacity = 0
divider5.opacity = 0
divider6.opacity = 0
for item in lndnItems
	lndnHomes.push item.y
for item in laItems
	laHomes.push item.y

lndnSet.y = 42
laSet.y = 84


dividerTime = ((baseItems.length+1)/(lndnHome - base.y))*((baseItems.length+1)*0.5) 



baseCollapse = ->
	divider1.animate
		opacity: 0
		options: time: dividerTime
	divider2.animate
		opacity: 0
		options:
			time: dividerTime 
	collapse(baseItems, baseIcon, base.y)

baseExpand = ->
	divider1.animate
		opacity: 1
		options: time: dividerTime
	divider2.animate
		opacity: 1
		options:
			time:dividerTime 
	lndnSet.animate
		y: 378
		options:
			time:dividerTime
	laSet.animate
		y:420
		options: time: dividerTime
	expand(baseItems, baseIcon, baseHomes)

lndnCollapse = ->
	divider3.animate
		opacity: 0
		options: time: dividerTime
	divider4.animate
		opacity: 0
		options:
			time:dividerTime
	collapse(lndnItems, lndnIcon, lndn.y)

lndnExpand = ->
	divider3.animate
		opacity: 1
		options: time: dividerTime
	divider4.animate
		opacity: 1
		options: time: dividerTime
	laSet.animate
		y: 420
		options: time: dividerTime
	expand(lndnItems, lndnIcon, lndnHomes)

lndnReset = ->
	lndnSet.animate
		y: 42
		options: time: dividerTime

laCollapse = ->
	divider5.animate
		opacity: 0
		options:time:dividerTime
	divider6.animate
		opacity:0
		options:time:dividerTime
	collapse(laItems, laIcon, la.y)


laExpand = ->
	divider5.animate
		opacity: 1
		options: time: dividerTime
	divider6.animate
		opacity: 1
		options:time:dividerTime
	expand(laItems, laIcon, laHomes)

laReset = ->
	laSet.animate
		y: 84
		options: time: dividerTime

base.onClick ->
	if baseState is 'open'
		baseCollapse()
		lndnReset()
		laReset()
	else if baseState is 'closed' and lndnState is 'closed' and laState is 'closed'
		baseExpand()
	else
		baseExpand()
		lndnCollapse()
		laCollapse()
		



lndn.onClick ->
	if lndnState is 'open'	
		lndnCollapse()
		laReset()
	else if lndnState is 'closed' and baseState is 'closed' and laState is 'closed'
		lndnExpand()
	else
		lndnReset()
		lndnExpand()
		baseCollapse()
		laCollapse()

la.onClick ->
	if laState is 'open'
		lndnCollapse()
		laCollapse()
	else if laState is 'closed' and baseState is 'closed' and lndnState is 'closed'
		laExpand()
	else
		laReset()
		lndnReset()
		laExpand()
		baseCollapse()
		lndnCollapse()

baseExpand()
baseItem1Hover.visible = false
for layer in baseActives
	layer.visible = false
for layer in lndnActives
	layer.visible = false
for layer in laActives
	layer.visible = false
for layer in baseDefaults
	layer.visible = true
for layer in lndnDefaults
	layer.visible = true
for layer in laDefaults
	layer.visible = true
baseItem1Default.visible = false
baseItem1Active.visible = true
baseBar.visible = true
basePreview.visible = true
baseSEO.visible = false
baseAudience.visible = false
lndnBar.visible = false
lndnPreview.visible = false
lndnSEO.visible = false
lndnAudience.visible = false
laBar.visible = false
laPreview.visible = false
laSEO.visible = false
laAudience.visible = false