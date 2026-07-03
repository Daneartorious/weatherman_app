import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


//main func
void main(){
  runApp(const WeathermanApp());
}

// WeathermanApp class, include seedColor, primary, secondary, surface inside ColorScheme from theme, 
// also have text theme, return "home" value to HomeScreen()
class WeathermanApp extends StatelessWidget{
  const WeathermanApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Weatherman',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF62929E),
          primary: const Color(0xFF62929E),   // Tombol Utama / Aksen
          secondary: const Color(0xFF546A7B), // Tombol Sekunder
          surface: const Color(0xFFC6C5B9), 
        ),
        textTheme: GoogleFonts.poppinsTextTheme().apply(
          bodyColor: const Color(0xFF393D3F),
          displayColor: const Color(0xFF393D3F),
        ),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }

}


//HomeScreen class for StatefulWidget, got TextEditingController, have dispose func that return super.dispose
class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  final TextEditingController _cityController = TextEditingController();

  @override
  void dispose(){
    _cityController.dispose();
    super.dispose();
  }

  Widget _buildWeatherDetail(String label, String value, IconData icon){
    return Column(
      children: [
        Icon(icon, color: Theme.of(context).colorScheme.secondary),
        Text(value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.w500
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const 
        Text(
          'Weatherman',
          style: TextStyle(fontWeight: FontWeight.bold),
          ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _cityController,
              decoration: InputDecoration(
                hintText: ('Cari kota: '),
                prefix: Icon(
                  Icons.search,
                  color: Theme.of(context).colorScheme.primary,
                  size: 27,
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.symmetric(vertical: 15),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.surface
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.surface,
                    width: 2
                  )
                )
              ),
            ),
            SizedBox(height: 30),
              Expanded(child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.cloud,
                    size: 100,
                    color: Theme.of(context).colorScheme.primary
                  ),
                  const SizedBox(height: 20),
                  Text(
                    '28°C',
                    style: TextStyle(
                      fontSize: 64,
                      color: Theme.of(context).colorScheme.primary
                    ),
                  ),
                  Text(
                  'Kota Depok',
                    style: TextStyle(
                      fontSize: 32,
                      color: Theme.of(context).colorScheme.primary
                    ),
                  ),
                  const SizedBox(height: 30),

                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildWeatherDetail('Kelembaban','75%', Icons.water_drop),
                        _buildWeatherDetail('Angin','10 km/h', Icons.air)
                      ],
                    ),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}