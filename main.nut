class MyTestAI extends AIController  {
	function Start();
}

/** 
 * AI's brain.
 */
function MyTestAI::Start() {
	while (true) {
		AILog.Info("Hi there.");
		this.Sleep(50);
	}
}