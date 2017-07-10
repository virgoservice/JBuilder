var validate = (function(){
        this.instructions = {
            notEmpty:"不能为空!",
            nameLength:"不能超过50字!",
            tooLong:"内容太长，不能超过255字!",
            isUrl:"必须是正确的网址，以http://https://开头",
            isNumber:"必须为数字！"
        };
        var types = {
        	isUrl:function(value){
        		if(!types.notEmpty(value))
        			return true;
        		
        		var reg=/^([hH][tT]{2}[pP]:\/\/|[hH][tT]{2}[pP][sS]:\/\/)(([A-Za-z0-9-~]+)\.)+([A-Za-z0-9-~\/])+$/;
        		if(reg.test(value)){
        			return true;
        		}
        		return false;
        		 
        	},
            notEmpty:function(value){
                if(value==null||value.length===0){
                    return false;
                }
                return true;
            },
            nameLength:function(value){
                if(value==null||value.length>50){
                    return false;
                }
                return true;
            },
            tooLong:function(value){
                if(value==null||value.length>255){
                    return false;
                }
                return true;
            },
            isNumber:function(value){
            	if(!types.notEmpty(value))
        			return true;
            	
            	var reg=/^(0|[1-9][0-9]*)$/
            	if(reg.test(value)){
            		return true;
            	}
            	return false;
            }
        }
        return function(value,type){ 
            if(!types[type]){
                throw "检测类型不存在";
            }
            if(!types[type](value)){
                return instructions[type];
            }
            return false;
        }
    })();
    var Detect = function(){
        this.result = [];
    }
    Detect.prototype.add = function(title,value,types){
         if(!(types instanceof Array)){
            throw "检测类型只能为数组";
        }
        
        types.splice(0, 0, "notEmpty");
        
        for(var type of types){
        //for(var type in types){
            var msg = validate(value,type);
            if(!!msg){
                this.result.push(title+msg);
            }
        }
    }
    
    Detect.prototype.getResult = function(){
        var result = this.result;
        return result.length?result.join('\n'):false;
    }
    