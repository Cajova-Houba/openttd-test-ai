class MyTestAI extends AIController  {
	
	/**
	 * Name of AI's company.
	 */
	companyName = null;
	
	/**
	 * Id of town which was choosed as the base one.
	 */
	baseTown = null;
	
	constructor() {
		companyName = "undefined";
		baseTown = -1;
	}

	function Start();
}

/** 
 * AI's brain.
 */
function MyTestAI::Start() {
	
	this.NameCompany();
	this.ChooseBaseCity();
	
	AILog.Info("Company name: "+this.companyName);
	AILog.Info("Base town: "+AITown.GetName(this.baseTown));
	
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
	local name = "";
	
	if (!AICompany.SetName(baseName)) {
		local i = 2;
		while (!AICompany.SetName(baseName + " #" + i)) {
			i = i + 1;
		}
		
		name = baseName + " #" + i;
	} else {
		name = baseName;
	}
	
	this.companyName = name;
}

/**
 * Choose the company's base city (the largest one).
 */
function MyTestAI::ChooseBaseCity() {
	local townList = AITownList();
	local t = null;
	local maxPop = 0;
	
	foreach (town, value in townList) {
		local pop = AITown.GetPopulation(town);
		if (maxPop < pop) {
			t = town;
			maxPop = pop;
		}
	}
	
	this.baseTown = t;
}