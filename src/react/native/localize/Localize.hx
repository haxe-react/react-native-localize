package react.native.localize;

@:enum
abstract TemperatureUnit(String){
    var Celsius = "celsius";
    var Fahrenheit = "fahrenheit";
}
@:enum
abstract CalendarType(String){
    var Gregorian = "gregorian";
    var Japanese = "japanese";
    var Buddhist = "buddhist";
}
typedef Locale = {
    languageCode:String,
    ?scriptCode:String,
    countryCode:String,
    languageTag:String,
    isRTL:Bool
}
@:jsRequire("react-native-localize")
extern class Localize {
    static function getLocales():Array<Locale>;
    static function getNumberFormatSettings():{decimalSeparator:String,groupingSeparator:String};
    static function getCurrencies():Array<String>;
    static function getCountry():String;
    static function getCalendar():CalendarType;
    static function getTemperatureUnit():TemperatureUnit;
    static function getTimeZone():String;
    static function uses24HourClock():Bool;
    static function usesMetricSystem():Bool;
    static function usesAutoDateAndTime():Null<Bool>;
    static function usesAutoTimeZone():Null<Bool>;
    static function addEventListener(type:String,cb:Void->Void):Void;
    static function removeEventListener(type:String,cb:Void->Void):Void;
    static function findBestAvailableLanguage(languageTags:Array<String>):Null<{languageTag:String,isRTL:Bool}>;
}
