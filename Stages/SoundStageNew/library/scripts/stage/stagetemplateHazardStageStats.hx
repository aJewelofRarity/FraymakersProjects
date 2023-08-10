// Stats for Template Stage

{
	spriteContent: self.getResource().getContent("soundstage"),
	animationId: "stageH",
	ambientColor: 0x20fd8eff,
	shadowLayers: [
		{
			id: "0",
			maskSpriteContent: self.getResource().getContent("soundstage"),
			maskAnimationId: "shadowMaskFrontHazard",
			color:0x40000000,
			foreground: true
		},
		{
			id: "1",
			maskSpriteContent: self.getResource().getContent("soundstage"),
			maskAnimationId: "shadowMaskHazard",
			color:0x40000000,
			foreground: false
		}
	],
	camera: {
		startX : 0,
		startY : 43,
		zoomX : 0,
		zoomY : 0,
		camEaseRate : 1 / 11,
		camZoomRate : 1 / 15,
		minZoomHeight : 360,
		initialHeight: 360,
		initialWidth: 640,
		backgrounds: [
			// Sky
			/*
			{
				
				spriteContent: self.getResource().getContent("soundstage"),
				animationId: "parallax0",
				mode: ParallaxMode.PAN,
				originalBGWidth: 768,
				originalBGHeight: 432,
				horizontalScroll: false,
				verticalScroll: false,
				loopWidth: 0,
				loopHeight: 0,
				xPanMultiplier: 1,
				yPanMultiplier: 1,
				scaleMultiplier: 1,
				foreground: false,
				depth: 2
			}
			*/
		]
	}
}
