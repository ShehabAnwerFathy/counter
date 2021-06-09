# counter

A new Flutter project.

## Getting Started


## Directory Structure
    lib
    ├──controller
    │   ├─asset [save all assets]
    │   │   ├─asset.dart
    │   │   ├─flare.dart
    │   │   ├─font.dart
    │   │   ├─image.dart
    │   │   └─lang.dart
    │   │
    │   ├─constants 
    │   │   └─colors.dart
    │   │
    │   ├─state_management
    │   │   ├─counter
    │   │   │   ├─counter_cubit.dart
    │   │   │   └─counter_states.dart
    │   │   └─app_bloc_observer.dart  
    │   │
    │   └─routes.dart
    │
    ├──view
    │   └─counter.dart
    │
    ├──widget
    │   ├─gradient_floating_action_button.dart
    │   └─increment_and_decrement_operator_buttons.dart
    │
    └─main.dart
    

## packages
[normal](https://pub.dev)

((state management))
bloc: ^7.0.0
flutter_bloc: ^7.0.1

((image processing packages))
flutter_svg: ^0.22.0 [to display .svg images]

((style))
new_gradient_app_bar: ^0.2.0 [to get gradient app bar with custom colors]



## Flutter SDK Version
Flutter 2.2.0 • channel beta • https://github.com/flutter/flutter.git
Tools • Dart 2.13.0