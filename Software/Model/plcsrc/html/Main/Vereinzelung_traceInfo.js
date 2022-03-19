function RTW_Sid2UrlHash() {
	this.urlHashMap = new Array();
	/* <S1>/Cast To Boolean */
	this.urlHashMap["Main:47:154"] = "Main.st:178";
	this.getUrlHash = function(sid) { return this.urlHashMap[sid];}
}
RTW_Sid2UrlHash.instance = new RTW_Sid2UrlHash();
function RTW_rtwnameSIDMap() {
	this.rtwnameHashMap = new Array();
	this.sidHashMap = new Array();
	this.rtwnameHashMap["<Root>"] = {sid: "Main"};
	this.sidHashMap["Main"] = {rtwname: "<Root>"};
	this.rtwnameHashMap["<S1>/Signal_CreateContainer"] = {sid: "Main:47:1"};
	this.sidHashMap["Main:47:1"] = {rtwname: "<S1>/Signal_CreateContainer"};
	this.rtwnameHashMap["<S1>/Hw_HubmagnetOben"] = {sid: "Main:47:2"};
	this.sidHashMap["Main:47:2"] = {rtwname: "<S1>/Hw_HubmagnetOben"};
	this.rtwnameHashMap["<S1>/Hw_HubmagnetUnten"] = {sid: "Main:47:3"};
	this.sidHashMap["Main:47:3"] = {rtwname: "<S1>/Hw_HubmagnetUnten"};
	this.rtwnameHashMap["<S1>/SamplingTime"] = {sid: "Main:47:54"};
	this.sidHashMap["Main:47:54"] = {rtwname: "<S1>/SamplingTime"};
	this.rtwnameHashMap["<S1>/Signal_RemoveContainerOnConveyor"] = {sid: "Main:47:144"};
	this.sidHashMap["Main:47:144"] = {rtwname: "<S1>/Signal_RemoveContainerOnConveyor"};
	this.rtwnameHashMap["<S1>/Cast To Boolean"] = {sid: "Main:47:154"};
	this.sidHashMap["Main:47:154"] = {rtwname: "<S1>/Cast To Boolean"};
	this.rtwnameHashMap["<S1>/From1"] = {sid: "Main:47:51"};
	this.sidHashMap["Main:47:51"] = {rtwname: "<S1>/From1"};
	this.rtwnameHashMap["<S1>/From2"] = {sid: "Main:47:52"};
	this.sidHashMap["Main:47:52"] = {rtwname: "<S1>/From2"};
	this.rtwnameHashMap["<S1>/From3"] = {sid: "Main:47:69"};
	this.sidHashMap["Main:47:69"] = {rtwname: "<S1>/From3"};
	this.rtwnameHashMap["<S1>/Goto"] = {sid: "Main:47:49"};
	this.sidHashMap["Main:47:49"] = {rtwname: "<S1>/Goto"};
	this.rtwnameHashMap["<S1>/Logic"] = {sid: "Main:47:55"};
	this.sidHashMap["Main:47:55"] = {rtwname: "<S1>/Logic"};
	this.rtwnameHashMap["<S1>/Subsystem Reference"] = {sid: "Main:47:15"};
	this.sidHashMap["Main:47:15"] = {rtwname: "<S1>/Subsystem Reference"};
	this.rtwnameHashMap["<S1>/Subsystem Reference1"] = {sid: "Main:47:20"};
	this.sidHashMap["Main:47:20"] = {rtwname: "<S1>/Subsystem Reference1"};
	this.rtwnameHashMap["<S1>/Hw_SensorOben"] = {sid: "Main:47:17"};
	this.sidHashMap["Main:47:17"] = {rtwname: "<S1>/Hw_SensorOben"};
	this.rtwnameHashMap["<S1>/Hw_SensorMitte"] = {sid: "Main:47:18"};
	this.sidHashMap["Main:47:18"] = {rtwname: "<S1>/Hw_SensorMitte"};
	this.rtwnameHashMap["<S1>/Hw_SensorUnten"] = {sid: "Main:47:19"};
	this.sidHashMap["Main:47:19"] = {rtwname: "<S1>/Hw_SensorUnten"};
	this.rtwnameHashMap["<S1>/Signal_Storage1"] = {sid: "Main:47:145"};
	this.sidHashMap["Main:47:145"] = {rtwname: "<S1>/Signal_Storage1"};
	this.rtwnameHashMap["<S1>/Signal_Storage2"] = {sid: "Main:47:146"};
	this.sidHashMap["Main:47:146"] = {rtwname: "<S1>/Signal_Storage2"};
	this.getSID = function(rtwname) { return this.rtwnameHashMap[rtwname];}
	this.getRtwname = function(sid) { return this.sidHashMap[sid];}
}
RTW_rtwnameSIDMap.instance = new RTW_rtwnameSIDMap();
