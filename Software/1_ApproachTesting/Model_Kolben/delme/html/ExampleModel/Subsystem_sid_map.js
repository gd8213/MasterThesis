function RTW_SidParentMap() {
    this.sidParentMap = new Array();
    this.sidParentMap["ExampleModel:50"] = "ExampleModel:49";
    this.sidParentMap["ExampleModel:39"] = "ExampleModel:49";
    this.sidParentMap["ExampleModel:53"] = "ExampleModel:49";
    this.sidParentMap["ExampleModel:44"] = "ExampleModel:49";
    this.sidParentMap["ExampleModel:37"] = "ExampleModel:49";
    this.sidParentMap["ExampleModel:33"] = "ExampleModel:49";
    this.sidParentMap["ExampleModel:34"] = "ExampleModel:49";
    this.sidParentMap["ExampleModel:51"] = "ExampleModel:49";
    this.sidParentMap["ExampleModel:52"] = "ExampleModel:49";
    this.sidParentMap["ExampleModel:44:1"] = "ExampleModel:44";
    this.sidParentMap["ExampleModel:44:1:2"] = "ExampleModel:44";
    this.sidParentMap["ExampleModel:44:1:3"] = "ExampleModel:44";
    this.sidParentMap["ExampleModel:44:1:4"] = "ExampleModel:44";
    this.sidParentMap["ExampleModel:44:1:6"] = "ExampleModel:44";
    this.getParentSid = function(sid) { return this.sidParentMap[sid];}
}
    RTW_SidParentMap.instance = new RTW_SidParentMap();
