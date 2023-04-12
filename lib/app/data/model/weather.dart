import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

@JsonSerializable()
class WeatherResponse {
    WeatherResponse({
        this.location,
        this.current,
    });

    final Location? location;
    final Current? current;





factory WeatherResponse.fromJson(Map<String, dynamic> json) => _$WeatherResponseFromJson(json);
Map<String, dynamic> toJson() => _$WeatherResponseToJson(this);






}


@JsonSerializable(fieldRename: FieldRename.snake)

class Current {
    Current({
        this.lastUpdatedEpoch,
        this.lastUpdated,
        this.tempC,
        this.tempF,
        this.isDay,
        this.condition,
        this.windMph,
        this.windKph,
        this.windDegree,
        this.windDir,
        this.pressureMb,
        this.pressureIn,
        this.precipMm,
        this.precipIn,
        this.humidity,
        this.cloud,
        this.feelslikeC,
        this.feelslikeF,
        this.visKm,
        this.visMiles,
        this.uv,
        this.gustMph,
        this.gustKph,
    });

    final int? lastUpdatedEpoch;
    final String? lastUpdated;
    final double? tempC;
    final double? tempF;
    final int? isDay;
    final Condition? condition;
    final double? windMph;
    final double? windKph;
    final int? windDegree;
    final String? windDir;
    final double? pressureMb;
    final double? pressureIn;
    final double? precipMm;
    final double? precipIn;
    final int? humidity;
    final int? cloud;
    final double? feelslikeC;
    final double? feelslikeF;
    final double? visKm;
    final double? visMiles;
    final double? uv;
    final double? gustMph;
    final double? gustKph;

    

factory Current.fromJson(Map<String, dynamic> json) => _$CurrentFromJson(json);
Map<String, dynamic> toJson() => _$CurrentToJson(this);

}

@JsonSerializable(fieldRename: FieldRename.snake)


class Condition {
    Condition({
        this.text,
        this.icon,
        this.code,
    });

    final String? text;
    final String? icon;
    final int? code;

    

factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);
Map<String, dynamic> toJson() => _$ConditionToJson(this);

}


@JsonSerializable(fieldRename: FieldRename.snake)


class Location {
    Location({
        this.name,
        this.region,
        this.country,
        this.lat,
        this.lon,
        this.tzId,
        this.localtimeEpoch,
        this.localtime,
    });

    final String? name;
    final String? region;
    final String? country;
    final double? lat;
    final double? lon;
    final String? tzId;
    final int? localtimeEpoch;
    final String? localtime;

    

factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
Map<String, dynamic> toJson() => _$LocationToJson(this);

}
