## Usage Example

import toggle_button.dart

```dart
import 'package:toggle_button/toggle_button.dart';
```

### For Toggle Button.

```dart
ToggleButton(
    onChange: (status) {
    },
),
```

### For Customization.

```dart
ToggleButton(
    borderRadius: 40.0,
    size: 15.0,
    backgroundColor: Colors.indigo,
    foregroundColor: Colors.white,
    axis: ToggleButtonAlignment.horizontal,
    deactivatedColor: Colors.grey,
    onChange: (status) {
    },
),
```