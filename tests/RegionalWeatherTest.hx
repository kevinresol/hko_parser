package;

import hko.RegionalWeather;
import sys.io.File;

@:asserts
class RegionalWeatherTest {
	public function new() {}
	
	public function parse() {
		var parser = new RegionalWeather();
		var result = parser.parse(File.getContent('tests/regional_weather.txt'));
		// trace(result);
		
		asserts.assert(result.date.getTime() == new Date(2018, 2, 7, 12, 0, 0).getTime());
		
		asserts.assert(result.temperature.length == 37);
		
		asserts.assert(result.temperature[0].station == 'Chek Lap Kok');
		asserts.assert(result.temperature[0].airTemperature == 21.8);
		asserts.assert(result.temperature[0].relativeHumidity == 67);
		asserts.assert(result.temperature[0].maxAirTemperature == 22.4);
		asserts.assert(result.temperature[0].minAirTemperature == 18.1);
		
		asserts.assert(result.temperature[2].station == 'Happy Valley');
		asserts.assert(result.temperature[2].airTemperature == 19.3);
		asserts.assert(result.temperature[2].relativeHumidity == null);
		asserts.assert(result.temperature[2].maxAirTemperature == 19.7);
		asserts.assert(result.temperature[2].minAirTemperature == 17.5);
		
		asserts.assert(result.temperature[36].station == 'Yuen Long Park');
		asserts.assert(result.temperature[36].airTemperature == 23.4);
		asserts.assert(result.temperature[36].relativeHumidity == null);
		asserts.assert(result.temperature[36].maxAirTemperature == 24.1);
		asserts.assert(result.temperature[36].minAirTemperature == 17.6);
		
		asserts.assert(result.wind.length == 26);
		
		asserts.assert(result.wind[0].station == 'Chek Lap Kok');
		asserts.assert(result.wind[0].direction == East);
		asserts.assert(result.wind[0].speed == 28);
		asserts.assert(result.wind[0].maxGust == 35);
		
		asserts.assert(result.wind[7].station == 'Ngong Ping');
		asserts.assert(result.wind[7].direction == NotAvailable);
		asserts.assert(result.wind[7].speed == null);
		asserts.assert(result.wind[7].maxGust == null);
		
		asserts.assert(result.pressure.length == 12);
		
		asserts.assert(result.pressure[0].station == 'Chek Lap Kok');
		asserts.assert(result.pressure[0].pressure == 1017.4);
		
		asserts.assert(result.visibility.length == 4);
		
		asserts.assert(result.visibility[0].station == 'Central');
		asserts.assert(result.visibility[0].visibility == 9);
		
		asserts.assert(result.solar.length == 2);
		asserts.assert(result.solar[0].global == 233.0);
		asserts.assert(result.solar[0].direct == 1.0);
		asserts.assert(result.solar[0].diffused == 227.0);
		
		return asserts.done();
	}
}