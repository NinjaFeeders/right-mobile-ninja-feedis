import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignPage extends StatefulWidget {
  final VoidCallback show;
  const SignPage(this.show, {super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
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
            SizedBox(width: 96.w, height: 100.h),
            // Centralizar a logo
            Center(
              child: Image.asset('images/logo_2lower.png'),
            ),
            // outro espaço em branco
            SizedBox(height: 120.h),
            TextInput(enterID, Icons.person, 'Usuario', enterID_F),
            SizedBox(height: 30.h),
            TextInput(password, Icons.lock, 'Senha', password_F),
            SizedBox(height: 20.h),
            registerAccount(),
            SizedBox(height: 20.h),
            errorContact(),
          ],
        ),
      ),
    );
  }

  Widget errorContact() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Já tem uma conta? ",
            style: TextStyle(
              fontSize: 13.sp,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: widget.show,
            child: Text(
              "Entre por aqui",
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

  Widget registerAccount() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 44.h,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(10.r)),
        child: Text('Cadastrar',
            style: TextStyle(
              fontSize: 23.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
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
