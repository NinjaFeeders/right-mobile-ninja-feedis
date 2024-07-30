import 'package:feedis/backend/api_user.dart';
import 'package:feedis/constants/path_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LoginPage extends StatefulWidget {
  final VoidCallback show;
  const LoginPage(this.show, {super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final enterID = TextEditingController();
  final password = TextEditingController();
  FocusNode enterID_F = FocusNode();
  FocusNode password_F = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Espaço em branco
            SizedBox(width: 96.w, height: 70.h),
            // Centralizar a logo
            Center(
              child: Image.asset(PathConstants.logoLogin),
            ),
            // outro espaço em branco
            SizedBox(height: 28.h),
            UserInput(),
            SizedBox(height: 30.h),
            TextInput(password, Icons.lock, 'Senha', password_F),
            SizedBox(height: 10.h),
            Forgot(),
            SizedBox(height: 10.h),
            Login(),
            SizedBox(height: 20.h),
            Dont(),
          ],
        ),
      ),
    );
  }

  Widget UserInput() => TextInput(enterID, Icons.person, 'Usuario', enterID_F);

  Widget Dont() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Não tem uma conta? ",
            style: TextStyle(
              fontSize: 13.sp,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: widget.show,
            child: Text(
              "Se registre aqui",
              style: TextStyle(
                  fontSize: 13.sp,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget Login() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: InkWell(
        onTap: () async { 
           await ApiClient().postUserLogin(enterID.text, password.text, context);
        },
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 44.h,
        decoration: BoxDecoration(
        color: Colors.black, borderRadius: BorderRadius.circular(10.r)),
        child: Text('Entrar',
            style: TextStyle(
              fontSize: 23.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
            

        ),
    ));
  }

  Widget Forgot() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Text(
        'Esqueceu a senha?',
        style: TextStyle(
          fontSize: 13.sp,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget TextInput(TextEditingController controller, IconData icon, String type,
      FocusNode focusNode) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        height: 44.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: TextField(
          style: TextStyle(fontSize: 16.sp, color: Colors.black),
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
            hintText: type,
            prefixIcon: Icon(icon,
                color: focusNode.hasFocus ? Colors.black : Colors.grey),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.r),
              borderSide: BorderSide(color: Colors.grey, width: 2.w),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: Colors.black, width: 2.w),
            ),
          ),
        ),
      ),
    );
  }
}
