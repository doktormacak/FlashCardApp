import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home/my_home.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter demo',
      home: MyHome(),
    );
  }
}

// enum City {
//   paris,
//   tokyo,
//   london,
// }

// typedef WeatherEmoji = String;

// Future<WeatherEmoji> getWeather(City city) {
//   return Future.delayed(
//     const Duration(milliseconds: 300),
//     () => {
//       City.paris: '🌞',
//       City.london: '🌧',
//       City.tokyo: '🌩',
//     }[city]!,
//   );
// }

// const unknownWeatherEmoji = '🤷‍♂️';

// //UI reads and writes to this
// final currentCityProvider = StateProvider<City?>(
//   (ref) => null,
// );

// //UI reads this
// final weatherProvider = FutureProvider<WeatherEmoji>(
//   (ref) {
//     final city = ref.watch(currentCityProvider);
//     if (city != null) {
//       return getWeather(city);
//     } else {
//       return unknownWeatherEmoji;
//     }
//   },
// );

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(home: Home());
//   }
// }

// class Home extends ConsumerWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final currentWeather = ref.watch(
//       weatherProvider,
//     );

//     return Scaffold(
//       body: Column(children: [
//         currentWeather.when(
//           data: (data) => Text(
//             data,
//             style: const TextStyle(fontSize: 40),
//           ),
//           error: (_, __) => const Text('Error'),
//           loading: () => const Padding(
//             padding: EdgeInsets.all(8.0),
//             child: CircularProgressIndicator(),
//           ),
//         ),
//         Expanded(
//           child: ListView.builder(
//             itemCount: City.values.length,
//             itemBuilder: (context, index) {
//               final city = City.values[index];
//               final isSelected = city == ref.watch(currentCityProvider);
//               return ListTile(
//                   title: Text(
//                     city.toString(),
//                   ),
//                   trailing: isSelected ? const Icon(Icons.check) : null,
//                   onTap: () {
//                     ref.read(currentCityProvider.notifier).state = city;
//                   });
//             },
//           ),
//         ),
//       ]),
//     );
//   }
// }
