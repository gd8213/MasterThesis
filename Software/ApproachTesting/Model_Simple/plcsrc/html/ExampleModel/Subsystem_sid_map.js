function RTW_SidParentMap() {
    this.sidParentMap = new Array();
    this.sidParentMap["ExampleModel:27"] = "ExampleModel:26";
    this.sidParentMap["ExampleModel:23"] = "ExampleModel:26";
    this.sidParentMap["ExampleModel:28"] = "ExampleModel:26";
    this.getParentSid = function(sid) { return this.sidParentMap[sid];}
}
    RTW_SidParentMap.instance = new RTW_SidParentMap();
