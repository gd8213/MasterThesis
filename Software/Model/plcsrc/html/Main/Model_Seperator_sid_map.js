function RTW_SidParentMap() {
    this.sidParentMap = new Array();
    this.sidParentMap["Main:47:1"] = "Main:47";
    this.sidParentMap["Main:47:144"] = "Main:47";
    this.sidParentMap["Main:47:54"] = "Main:47";
    this.sidParentMap["Main:47:2"] = "Main:47";
    this.sidParentMap["Main:47:175"] = "Main:47";
    this.sidParentMap["Main:47:3"] = "Main:47";
    this.sidParentMap["Main:47:176"] = "Main:47";
    this.sidParentMap["Main:47:177"] = "Main:47";
    this.sidParentMap["Main:47:174"] = "Main:47";
    this.sidParentMap["Main:47:51"] = "Main:47";
    this.sidParentMap["Main:47:52"] = "Main:47";
    this.sidParentMap["Main:47:69"] = "Main:47";
    this.sidParentMap["Main:47:49"] = "Main:47";
    this.sidParentMap["Main:47:55"] = "Main:47";
    this.sidParentMap["Main:47:145"] = "Main:47";
    this.sidParentMap["Main:47:146"] = "Main:47";
    this.sidParentMap["Main:47:17"] = "Main:47";
    this.sidParentMap["Main:47:18"] = "Main:47";
    this.sidParentMap["Main:47:19"] = "Main:47";
    this.getParentSid = function(sid) { return this.sidParentMap[sid];}
}
    RTW_SidParentMap.instance = new RTW_SidParentMap();
