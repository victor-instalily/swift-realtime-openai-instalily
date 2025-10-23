public enum Model: RawRepresentable, Equatable, Hashable, Codable, Sendable {
	case gptRealtime
	case gptRealtimeMini
	case custom(String)

	public var rawValue: String {
		switch self {
			case .gptRealtime: return "gpt-realtime"
			case .gptRealtimeMini: return "gpt-realtime-mini"
			case let .custom(value): return value
		}
	}

	public init?(rawValue: String) {
		switch rawValue {
			case "gpt-realtime": self = .gptRealtime
			case "gpt-realtime-mini": self = .gptRealtimeMini
			default: self = .custom(rawValue)
		}
	}
}

public extension Model {
	enum Transcription: String, CaseIterable, Equatable, Hashable, Codable, Sendable {
		case whisper = "whisper-1"
		case gpt4o = "gpt-4o-transcribe-latest"
		case gpt4oMini = "gpt-4o-mini-transcribe"
		case gpt4oDiarize = "gpt-4o-transcribe-diarize"
        case gpt4oTranscribe = "gpt-4o-transcribe"
	}
}
