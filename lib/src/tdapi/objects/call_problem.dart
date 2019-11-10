part of '../tdapi.dart';

class CallProblem implements TdObject {
  /// Describes the exact type of a problem with a call
  CallProblem();

  /// a CallProblem return type can be :
  /// * CallProblemEcho
  /// * CallProblemNoise
  /// * CallProblemInterruptions
  /// * CallProblemDistortedSpeech
  /// * CallProblemSilentLocal
  /// * CallProblemSilentRemote
  /// * CallProblemDropped
  factory CallProblem.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case CallProblemEcho.CONSTRUCTOR:
        return CallProblemEcho.fromJson(json);
      case CallProblemNoise.CONSTRUCTOR:
        return CallProblemNoise.fromJson(json);
      case CallProblemInterruptions.CONSTRUCTOR:
        return CallProblemInterruptions.fromJson(json);
      case CallProblemDistortedSpeech.CONSTRUCTOR:
        return CallProblemDistortedSpeech.fromJson(json);
      case CallProblemSilentLocal.CONSTRUCTOR:
        return CallProblemSilentLocal.fromJson(json);
      case CallProblemSilentRemote.CONSTRUCTOR:
        return CallProblemSilentRemote.fromJson(json);
      case CallProblemDropped.CONSTRUCTOR:
        return CallProblemDropped.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = "callProblem";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemEcho implements CallProblem {
  /// The user heard their own voice.
  ///
  CallProblemEcho();

  /// Parse from a json
  CallProblemEcho.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "callProblemEcho";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemNoise implements CallProblem {
  /// The user heard background noise.
  ///
  CallProblemNoise();

  /// Parse from a json
  CallProblemNoise.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "callProblemNoise";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemInterruptions implements CallProblem {
  /// The other side kept disappearing.
  ///
  CallProblemInterruptions();

  /// Parse from a json
  CallProblemInterruptions.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "callProblemInterruptions";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemDistortedSpeech implements CallProblem {
  /// The speech was distorted.
  ///
  CallProblemDistortedSpeech();

  /// Parse from a json
  CallProblemDistortedSpeech.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "callProblemDistortedSpeech";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemSilentLocal implements CallProblem {
  /// The user couldn't hear the other side.
  ///
  CallProblemSilentLocal();

  /// Parse from a json
  CallProblemSilentLocal.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "callProblemSilentLocal";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemSilentRemote implements CallProblem {
  /// The other side couldn't hear the user.
  ///
  CallProblemSilentRemote();

  /// Parse from a json
  CallProblemSilentRemote.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "callProblemSilentRemote";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemDropped implements CallProblem {
  /// The call ended unexpectedly.
  ///
  CallProblemDropped();

  /// Parse from a json
  CallProblemDropped.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "callProblemDropped";

  @override
  String getConstructor() => CONSTRUCTOR;
}