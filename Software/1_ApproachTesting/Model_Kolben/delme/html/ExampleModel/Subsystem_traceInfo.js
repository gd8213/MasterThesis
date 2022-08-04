function RTW_Sid2UrlHash() {
	this.urlHashMap = new Array();
	/* <S1>/Constant */
	this.urlHashMap["ExampleModel:39"] = "ExampleModel.st:50";
	/* <S1>/Discrete-Time
Integrator */
	this.urlHashMap["ExampleModel:53"] = "ExampleModel.st:44,51,137";
	/* <S1>/MATLAB Function */
	this.urlHashMap["ExampleModel:44"] = "ExampleModel.st:53,142";
	/* <S1>/Mod */
	this.urlHashMap["ExampleModel:37"] = "ExampleModel.st:49";
	/* <S1>/Product */
	this.urlHashMap["ExampleModel:33"] = "ExampleModel.st:139";
	/* <S1>/degree per second */
	this.urlHashMap["ExampleModel:34"] = "ExampleModel.st:138";
	/* <S2>:1 */
	this.urlHashMap["ExampleModel:44:1"] = "ExampleModel.st:54";
	/* <S2>:1:2 */
	this.urlHashMap["ExampleModel:44:1:2"] = "ExampleModel.st:55";
	/* <S2>:1:3 */
	this.urlHashMap["ExampleModel:44:1:3"] = "ExampleModel.st:56";
	/* <S2>:1:4 */
	this.urlHashMap["ExampleModel:44:1:4"] = "ExampleModel.st:57";
	/* <S2>:1:6 */
	this.urlHashMap["ExampleModel:44:1:6"] = "ExampleModel.st:58";
	this.getUrlHash = function(sid) { return this.urlHashMap[sid];}
}
RTW_Sid2UrlHash.instance = new RTW_Sid2UrlHash();
function RTW_rtwnameSIDMap() {
	this.rtwnameHashMap = new Array();
	this.sidHashMap = new Array();
	this.rtwnameHashMap["<Root>"] = {sid: "ExampleModel"};
	this.sidHashMap["ExampleModel"] = {rtwname: "<Root>"};
	this.rtwnameHashMap["<S1>/VelocityGain"] = {sid: "ExampleModel:50"};
	this.sidHashMap["ExampleModel:50"] = {rtwname: "<S1>/VelocityGain"};
	this.rtwnameHashMap["<S1>/Constant"] = {sid: "ExampleModel:39"};
	this.sidHashMap["ExampleModel:39"] = {rtwname: "<S1>/Constant"};
	this.rtwnameHashMap["<S1>/Discrete-Time Integrator"] = {sid: "ExampleModel:53"};
	this.sidHashMap["ExampleModel:53"] = {rtwname: "<S1>/Discrete-Time Integrator"};
	this.rtwnameHashMap["<S1>/MATLAB Function"] = {sid: "ExampleModel:44"};
	this.sidHashMap["ExampleModel:44"] = {rtwname: "<S1>/MATLAB Function"};
	this.rtwnameHashMap["<S1>/Mod"] = {sid: "ExampleModel:37"};
	this.sidHashMap["ExampleModel:37"] = {rtwname: "<S1>/Mod"};
	this.rtwnameHashMap["<S1>/Product"] = {sid: "ExampleModel:33"};
	this.sidHashMap["ExampleModel:33"] = {rtwname: "<S1>/Product"};
	this.rtwnameHashMap["<S1>/degree per second"] = {sid: "ExampleModel:34"};
	this.sidHashMap["ExampleModel:34"] = {rtwname: "<S1>/degree per second"};
	this.rtwnameHashMap["<S1>/PositionPiston"] = {sid: "ExampleModel:51"};
	this.sidHashMap["ExampleModel:51"] = {rtwname: "<S1>/PositionPiston"};
	this.rtwnameHashMap["<S1>/PositionWheel_Deg"] = {sid: "ExampleModel:52"};
	this.sidHashMap["ExampleModel:52"] = {rtwname: "<S1>/PositionWheel_Deg"};
	this.rtwnameHashMap["<S2>:1"] = {sid: "ExampleModel:44:1"};
	this.sidHashMap["ExampleModel:44:1"] = {rtwname: "<S2>:1"};
	this.rtwnameHashMap["<S2>:1:2"] = {sid: "ExampleModel:44:1:2"};
	this.sidHashMap["ExampleModel:44:1:2"] = {rtwname: "<S2>:1:2"};
	this.rtwnameHashMap["<S2>:1:3"] = {sid: "ExampleModel:44:1:3"};
	this.sidHashMap["ExampleModel:44:1:3"] = {rtwname: "<S2>:1:3"};
	this.rtwnameHashMap["<S2>:1:4"] = {sid: "ExampleModel:44:1:4"};
	this.sidHashMap["ExampleModel:44:1:4"] = {rtwname: "<S2>:1:4"};
	this.rtwnameHashMap["<S2>:1:6"] = {sid: "ExampleModel:44:1:6"};
	this.sidHashMap["ExampleModel:44:1:6"] = {rtwname: "<S2>:1:6"};
	this.getSID = function(rtwname) { return this.rtwnameHashMap[rtwname];}
	this.getRtwname = function(sid) { return this.sidHashMap[sid];}
}
RTW_rtwnameSIDMap.instance = new RTW_rtwnameSIDMap();
