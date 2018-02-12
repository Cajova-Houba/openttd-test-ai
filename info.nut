class MyTestAI extends AIInfo {
	function GetAuthor()		{ return "Cajova Houba"; }
	function GetName()			{ return "MyTestAI";	}
	function GetDescription()	{ return "Test AI 'cause I want to learn stuff.";	}
	function GetVersion()		{ return 1; }
	function GetDate()			{ return "2017-03-05"; }
	function CreateInstance()	{ return "MyTestAI"; }
	function GetShortName()		{ return "MTAI"; }
	function GetAPIVersion()	{ return "1.0"; }
}

RegisterAI(MyTestAI());