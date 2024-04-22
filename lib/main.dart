//import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login and Register Page',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JackEd',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.yellow[200],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/loginpgback1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(16.0),
            width:  MediaQuery.of(context).size.width * 0.8,
            height:  MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              color: Colors.yellow[200],
              borderRadius: BorderRadius.circular(20.0),// Add rounded corners
              border: Border.all(color: Colors.green, width: 2),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sign in',style: TextStyle(color: Colors.green,fontSize: 26,fontWeight: FontWeight.bold),),
                SizedBox(height: 20),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                    color: Colors.green, // Change the label text color
                    fontSize: 20, // Adjust the font size
                  ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green), // Change the focused underline color
                    ),
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        color: Colors.green, // Change the label text color
                        fontSize: 20, // Adjust the font size
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green), // Change the focused underline color
                    ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                  ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Validate email and password (for demonstration, use 'admin' as valid credentials)
                    if (emailController.text == 'admin' && passwordController.text == 'admin') {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MainPage()),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Invalid Credentials'),
                          content: Text('Please enter valid email and password.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('OK'),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  child: Text('Login'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green), // Background color
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: Text('Create an account',style: TextStyle(color: Colors.green,)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Page',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.yellow[200],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/loginpgback1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(16.0),
            width:  MediaQuery.of(context).size.width * 0.8,
            height:  MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              color: Colors.yellow[200],
              borderRadius: BorderRadius.circular(20.0),// Add rounded corners
              border: Border.all(color: Colors.green, width: 2),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // TextField(
                //   controller: emailController,
                //   decoration: InputDecoration(
                //     labelText: 'Email',
                //   ),
                // ),
                // SizedBox(height: 20),
                // TextField(
                //   controller: passwordController,
                //   obscureText: true,
                //   decoration: InputDecoration(
                //     labelText: 'Password',
                //   ),
                // ),
                // SizedBox(height: 20),
                Text('Sign up',style: TextStyle(color: Colors.green,fontSize: 26,fontWeight: FontWeight.bold),),
                SizedBox(height: 20),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.green, // Change the label text color
                      fontSize: 20, // Adjust the font size
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green), // Change the focused underline color
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.green, // Change the label text color
                      fontSize: 20, // Adjust the font size
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green), // Change the focused underline color
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
                SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );// Handle register button press (for demonstration, do nothing)
                  },
                  child: Text('Register'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green), // Background color
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Already have an account? Login',style: TextStyle(color: Colors.green),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Main Page'),
//       ),
//       body: Center(
//         child: Text('Welcome to the main page!'),
//       ),
//     );
//   }
// }

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  File? _image;
  Future getImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null)
        return;

      //final imageTemporary = File(image.path);
      final imagePermanent= await saveFilePermanently(image.path);
      setState(() {
        this._image = imagePermanent;
      });
    }
    on PlatformException catch(e){ print('failed to pickup image:$e');}
  }

  Future<File> saveFilePermanently(String imagePath) async{
    final directory=await getApplicationDocumentsDirectory();
    final name=basename(imagePath);
    final image= File('${directory.path}/$name');

    return File(imagePath).copy(image.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JackEd',style: TextStyle(color: Colors.green),),
        centerTitle: true,
        backgroundColor: Colors.yellow[200],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/jackback1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              SizedBox(
                height:20.0,
              ),
              _image!=null? Image.file(_image!,width: 250,height:250,fit: BoxFit.cover): Image.asset('images/noimg3.jpg'),
              SizedBox(
                height:160.0,
              ),
              CustomButton(
                title:'Import',
                icon:Icons.image_outlined,
                onClick:()=> getImage(ImageSource.gallery),
              ),
              SizedBox(
                height:20.0,
              ),
              CustomButton(
                title:'Capture',
                icon:Icons.camera_alt,
                onClick:()=> getImage(ImageSource.camera),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


Widget CustomButton({
  required String  title,
  required IconData icon,
  required VoidCallback onClick,
})
{
  return Container(
    height: 50,
    width: 240,
    child: OutlinedButton(
      onPressed: onClick,
      child: Row(
        children:[
          SizedBox(width: 20,),
          Icon(icon),
          SizedBox(width: 20,),
          Text(title,style: TextStyle(fontSize: 20,),),
        ],
      ),
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.green,
        primary: Colors.white,
        side: BorderSide(color: Colors.white, width: 5),
      ),
    ),

  );
}
