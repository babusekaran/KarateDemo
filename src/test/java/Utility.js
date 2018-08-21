function(config){
	
	/**
	 * My Config Js utility
	 * This can be accessed directly on feature files
	 * eg: 
	 * def time = MyUtility.getTime()
	 * or
	 * call MyUtility.wait 5
	 * 
	 */
	
	config['MyUtility'] = {
			
			getTime : function(){
				return Date.now();
			},
			
			getDay : function(day){
				if(day == undefined || day > 6){
					day = 0;
				}
				var days = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'];
				return days[day];
			},
			
			wait : function(timeInSec){
				if(timeInSec == undefined){
					day = 0;
				}
				java.lang.Thread.sleep(timeInSec*1000);
			}
	}
	
	return config;
}