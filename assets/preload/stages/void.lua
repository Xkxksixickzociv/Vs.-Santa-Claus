function onCreate()
	makeLuaSprite('hi','',-1000,-1000)
	makeGraphic('hi',3000,3000,'FFFFFF')
	setScrollFactor('hi',0,0)
	addLuaSprite('hi')
	setProperty('skipCountdown',true)
	setProperty('camZooming',true)
end
function onCreatePost()
	setProperty('boyfriend.alpha',0)
	setProperty('gf.alpha',0)
	setProperty('botplayTxt.text','your fucked')
end

function onBeatHit()
	triggerEvent('Add Camera Zoom',0.02,0.02)

	if curBeat == 264 then
		cameraFlash('other','FFFFFF',3,true)
		setProperty('camGame.alpha',0)
		setProperty('camHUD.alpha',0)
	end
end

function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if getProperty('health') > 0.6 then
		if isSustainNote then
			runHaxeCode([[
				game.health -= 0.01;
			]])
		else
			runHaxeCode([[
				game.health -= 0.02;
			]])
		end
	end
end