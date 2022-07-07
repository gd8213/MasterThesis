function RTW_Sid2UrlHash() {
	this.urlHashMap = new Array();
	/* <S1>/Discrete
Transfer Fcn */
	this.urlHashMap["ExampleModel:23"] = "ExampleModel.exp:36,42,44";
	this.getUrlHash = function(sid) { return this.urlHashMap[sid];}
}
RTW_Sid2UrlHash.instance = new RTW_Sid2UrlHash();
function RTW_rtwnameSIDMap() {
	this.rtwnameHashMap = new Array();
	this.sidHashMap = new Array();
	this.rtwnameHashMap["<Root>"] = {sid: "ExampleModel"};
	this.sidHashMap["ExampleModel"] = {rtwname: "<Root>"};
	this.rtwnameHashMap["<S1>/Input"] = {sid: "ExampleModel:27"};
	this.sidHashMap["ExampleModel:27"] = {rtwname: "<S1>/Input"};
	this.rtwnameHashMap["<S1>/Discrete Transfer Fcn"] = {sid: "ExampleModel:23"};
	this.sidHashMap["ExampleModel:23"] = {rtwname: "<S1>/Discrete Transfer Fcn"};
	this.rtwnameHashMap["<S1>/Output"] = {sid: "ExampleModel:28"};
	this.sidHashMap["ExampleModel:28"] = {rtwname: "<S1>/Output"};
	this.getSID = function(rtwname) { return this.rtwnameHashMap[rtwname];}
	this.getRtwname = function(sid) { return this.sidHashMap[sid];}
}
RTW_rtwnameSIDMap.instance = new RTW_rtwnameSIDMap();
