# ForgeSC Frontend

Premium Qt Quick / QML frontend for ForgeSC.

## Purpose
This repository contains the presentation layer for the existing ForgeSC Python desktop application.

The existing ForgeSC AI stack remains unchanged:
- PySide6
- OpenCV
- YOLO
- InsightFace
- RTSP / USB camera support
- Attendance
- People database
- Registration
- Settings

The final application will load this QML frontend from the ForgeSC Python application.

## Integration model

RecognitionEngine -> Python Qt signals/properties -> UI bridge -> QML

No web server, REST API, CORS or separate frontend server is required.

## UI
- Premium dark AI control-room design
- Command Center
- Live Monitor
- Attendance
- People
- Reports / Presence
- Settings
- Camera/system status
- Recognition activity
- Smooth navigation and transitions

## Development
The QML files are intentionally kept independent from the AI engine. During integration, the Python bridge will replace the demo values with the existing ForgeSC signals and database calls.
