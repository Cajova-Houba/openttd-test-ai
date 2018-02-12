class MyTestAI extends AIController  {
	function Start();
}

/** 
 * AI's brain.
 */
function MyTestAI::Start() {
	
	this.NameCompany();
	
	while (true) {
		AILog.Info("Hi there.");
		this.Sleep(50);
	}
}

/**
 * Function which will generate and set AI's company name.
 */
function MyTestAI::NameCompany() {
	local baseName = "Test AI Co.";

	if (!AICompany.SetName(baseName)) {
		local i = 2;
		while (!AICompany.SetName(baseName + " #" + i)) {
			i = i + 1;
		}
	}
}