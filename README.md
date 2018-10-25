
# react-native-calendar-kit

## Getting started

`$ npm install react-native-calendar-kit --save`

### Mostly automatic installation

`$ react-native link react-native-calendar-kit`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-calendar-kit` and add `RNCalendarKit.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNCalendarKit.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNCalendarKitPackage;` to the imports at the top of the file
  - Add `new RNCalendarKitPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-calendar-kit'
  	project(':react-native-calendar-kit').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-calendar-kit/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-calendar-kit')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNCalendarKit.sln` in `node_modules/react-native-calendar-kit/windows/RNCalendarKit.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Calendar.Kit.RNCalendarKit;` to the usings at the top of the file
  - Add `new RNCalendarKitPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNCalendarKit from 'react-native-calendar-kit';

// TODO: What to do with the module?
RNCalendarKit;
```
  