package hko;

/**
 *  Parses the text document at http://www.hko.gov.hk/textonly/v2/forecast/text_readings_e.htm
 */
class RegionalWeather {
	public function new() {}
	
	public function parseHtml(html:String) {
		var start = html.indexOf('<pre>');
		var end = html.indexOf('</pre>');
		var text = html.substring(start + 5, end);
		if(text.charCodeAt(0) == '\n'.code) text = text.substr(1);
		return parse(text);
	}
	
	public function parse(v:String) {
		var lines = v.split('\n');
		
		// ===  DateTime ===
			var regex = ~/Latest readings recorded at (\d{2}):(\d{2}) Hong Kong Time (\d*) (\w*) (\d{4})/;
			var date = if(regex.match(lines[0])) {
				var hour = Std.parseInt(regex.matched(1));
				var minute = Std.parseInt(regex.matched(2));
				var day = Std.parseInt(regex.matched(3));
				var month = parseMonth(regex.matched(4));
				var year = Std.parseInt(regex.matched(5));
				new Date(year, month - 1, day, hour, minute, 0);
			} else {
				throw 'Unable to parse date';
			}
		
		
		// === Temperature ===
		
			var i = 1;
			var temperature = [];
			
			// skip the temp header
			while(lines[++i].charCodeAt(0) == ' '.code) {}
			
			var regex = ~/\s{1,}([\w\/\.]{1,})\s{1,}([\w\/\.]{1,})\s{1,}([\w\/\.]{1,}) \/ ([\w\/\.]{1,})/;
			while(lines[i] != '') {
				var line = lines[i];
				var x = line.indexOf('  ');
				var station = line.substr(0, x);
				
				var values = line.substr(x + 2);
				
				if(regex.match(values)) {
					temperature.push({
						station: station,
						airTemperature: parseFloat(regex.matched(1)),
						relativeHumidity: parseFloat(regex.matched(2)),
						maxAirTemperature: parseFloat(regex.matched(3)),
						minAirTemperature: parseFloat(regex.matched(4)),
					});
				}
				i++;
			}
			i++; // skip blank line
			
		// === Wind ===
		
			var wind = [];
			
			if(lines[i++] != '10-Minute Mean Wind Direction, Speed and Maximum Gust (km/hour)')
				throw 'Expected wind header';
				
			var regex = ~/\s{1,}([\w\/\.]{1,})\s{1,}([\w\/\.]{1,})\s{1,}([\w\/\.]{1,})/;
			while(lines[i] != '') {
				var line = lines[i];
				var x = line.indexOf('  ');
				var station = line.substr(0, x);
				
				var values = line.substr(x + 2);
				
				if(regex.match(values)) {
					wind.push({
						station: station,
						direction: parseWindDirection(regex.matched(1)),
						speed: parseFloat(regex.matched(2)),
						maxGust: parseFloat(regex.matched(3)),
					});
				}
				i++;
			}
			i++; // skip blank line
			
		// === Pressure ===
		
			var pressure = [];
			
			if(lines[i++] != 'Mean Sea Level Pressure (hPa)')
				throw 'Expected pressure header';
				
			var regex = ~/\s{1,}([\w\/\.]{1,})/;
			while(lines[i] != '') {
				var line = lines[i];
				var x = line.indexOf('  ');
				var station = line.substr(0, x);
				
				var values = line.substr(x + 2);
				
				if(regex.match(values)) {
					pressure.push({
						station: station,
						pressure: parseFloat(regex.matched(1)),
					});
				}
				i++;
			}
			i++; // skip blank line
			
		// === Visibility ===
		
			var visibility = [];
			
			if(lines[i++] != '10-Minute Mean Visibility')
				throw 'Expected visibility header';
				
			var regex = ~/\s{1,}([\w\/\.]{1,})\s*/;
			while(lines[i] != '') {
				var line = lines[i];
				var x = line.indexOf('  ');
				var station = line.substr(0, x);
				
				var values = line.substr(x + 2);
				
				if(regex.match(values)) {
					visibility.push({
						station: station,
						visibility: parseFloat(regex.matched(1)),
					});
				}
				i++;
			}
		
		// === Solar ===
		
			var solar = [];
			
			// skip the solar header
			while(lines[++i].charCodeAt(0) == ' '.code) {}
				
			var regex = ~/\s{1,}([\w\/\.]{1,})\s{1,}([\w\/\.]{1,})\s{1,}([\w\/\.]{1,})/;
			while(lines[i] != '') {
				var line = lines[i];
				var x = line.indexOf('  ');
				var station = line.substr(0, x);
				
				var values = line.substr(x + 2);
				
				if(regex.match(values)) {
					solar.push({
						station: station,
						global: parseFloat(regex.matched(1)),
						direct: parseFloat(regex.matched(2)),
						diffused: parseFloat(regex.matched(3)),
					});
				}
				i++;
			}
		
		return {
			date: date,
			temperature: temperature,
			wind: wind,
			pressure: pressure,
			visibility: visibility,
			solar: solar,
		}
	}
	
	function parseFloat(v:String):Null<Float> {
		var f = Std.parseFloat(v);
		return Math.isNaN(f) ? null : f;
	}
	
	function parseMonth(v:String) {
		var months = [
			'jan' => 1,
			'feb' => 2,
			'mar' => 3,
			'apr' => 4,
			'may' => 5,
			'jun' => 6,
			'jul' => 7,
			'aug' => 8,
			'sep' => 9,
			'oct' => 10,
			'nov' => 11,
			'dec' => 12,
		];
		return months[v.substr(0, 3).toLowerCase()];
	}
	
	function parseWindDirection(v:String) {
		return switch v.toLowerCase() {
			case 'east': East;
			case 'south': South;
			case 'west': West;
			case 'north': North;
			case 'southeast': Southeast;
			case 'southwest': Southwest;
			case 'northeast': Northeast;
			case 'northwest': Northwest;
			case 'n/a': NotAvailable;
			case 'variable': Variable;
			case _: throw 'Unrecognized wind direction "$v"';
		}
	}
}

enum WindDirection {
	East;
	South;
	West;
	North;
	Southeast;
	Southwest;
	Northeast;
	Northwest;
	Variable;
	NotAvailable;
}