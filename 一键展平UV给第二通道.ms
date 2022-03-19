	rollout bakeminzi "Unwarp #2 UV" width:171 height:97
	(
		button 'btn1' "Start !" pos:[14,13] width:144 height:51 align:#left
		label 'lbl1' "Waiting..." pos:[10,73] width:80 height:16 align:#left
		label 'lbl2' "0" pos:[100,73] width:20 height:16 align:#left
		label 'lbl3' "0" pos:[145,73] width:20 height:16 align:#left
		label 'lbl4' "in" pos:[120,73] width:15 height:16 align:#left
		
		global wuti
		global wutishu
		
		on btn1 pressed do
		(
			
			if ($ == undefined) == true then
			(
				messagebox"Select Something !"
				--exit
			)
			
			else 
			(
				wuti = for o in $ collect o
				wutishu = wuti.count
				wutijindushu = 1
				
				clearSelection()
		
				for i = 1 to wutishu do
					(
						clearSelection()
						select wuti[i]
						
						lbl1.text = wuti[i].name as string
						lbl2.text = wutijindushu as string
						lbl3.text = wutishu as string
						
						addModifier $ (Edit_Poly ()) ui:off
							--print wuti[i].name
						maxOps.CollapseNode $ off
						addModifier $ (Unwrap_UVW ()) ui:off
							$.modifiers[#unwrap_uvw].unwrap.setMapChannel 2
							subobjectLevel = 3
							--$.modifiers[#unwrap_uvw].unwrap2.setFreeFormMode on
							actionMan.executeAction 0 "40021"
							$.modifiers[#unwrap_uvw].flattenMapNoParams() 
							--$.modifiers[#unwrap_uvw].flattenMap 45.0 #() 0.001 true 0 true true
							--Here used a martix before, I got something misunderstanding here, so use NoParams could be better.

							maxOps.CollapseNode $ off
							clearSelection()
							wutijindushu += 1
							clearUndoBuffer() 
					)
							clearUndoBuffer() 
							messagebox"OK !"
					lbl1.text = "Waiting..."
					lbl2.text = "0"
					lbl3.text = "0"
					
			)
		
		)
	)
-- End of Rollout --
createDialog bakeminzi
gc()
clearlistener()

--By DzlHimeko

