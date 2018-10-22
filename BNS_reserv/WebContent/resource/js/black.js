var LeftIndex = document.getElementsByClassName("LeftIndex");
		var startTime = new Date().getTime();
		var makeItBigger = function() {
			var currTime = new Date().getTime();
			var newWidth = (((currTime - startTime) / 1000) * 40);
			LeftIndex.style.width = newWidth + "px";

			if (newWidth < 100) {
				window.requestAnimationFrame(makeItBigger);
			}

		};
		