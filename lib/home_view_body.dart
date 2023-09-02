import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  String result='';
  
  double result2=0;
 double num1=0.0;
double num2=0;
String ope='';
finalresult({required String text}){
  if(text=='+'||text=='*'||text=='/'||text=='-'){

num1=result2;
result='';
ope=text;

setState(() {
  
});

  }
  else if(text=='='){
    
    num2=result2;

    if(ope=='+'||ope=='*'){
if(ope=='+'){
result=(num1+num2).toString();
result2=double.parse(result);}
  else {
      
result=(num1*num2).toString();
result2=double.parse(result);

    }

    }

    else {
      if(ope=='/'){
      try{
             
result=(num1/num2).toString();
result2=double.parse(result);
      }
      catch( e){
        result='Error';
      }}
   else {
     
result=(num1-num2).toString();
result2=num1-num2;
    }

    }
    setState(() {
      
    });

  }
  else if(text=='AC'){
    result='';
    num1=0;
    num2=0;
    ope='';
    result2=0;
setState(() {
  
});

  }
  else{
   
    result= result+text;
    setState(() {
      result2=double.parse(result);
    });
  }

}
  @override
    
  Widget build(BuildContext context) {
   
    return  Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding:const EdgeInsets.symmetric(vertical: 25),
            child: Text(result
            ,
              style: const TextStyle(fontSize: 100),
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
        fixedSize:const Size.fromHeight(50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          )),
            
            onPressed: (){
finalresult(text: 'AC');

            }, child:const Center(child:  Text('AC', style:  TextStyle(fontSize: 30, fontWeight: FontWeight.bold)))),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  hint: '1',
                  onPressed: () {
                    finalresult(text: '1');
                  },
                  color: Colors.grey,
                ),
                CustomButton(
                  hint: '2',
                   onPressed: () {
                    finalresult(text: '2');
                  },
            color: Colors.grey,
                ),
                CustomButton(
                  hint: '3',
                   onPressed: () {
                    finalresult(text: '3');
                  },
                   color: Colors.grey,
                ),
                CustomButton(
                  hint: '+',
                   onPressed: () {
                    finalresult(text: '+');
                  },
                  color: Colors.orange,
                ),
              ],
            ),
          ),
         Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               CustomButton(
                  hint: '4',
                    onPressed: () {
                    finalresult(text: '4');
                  },
                 
                 color: Colors.grey,
                ),
                CustomButton(
                  hint: '5',
                    onPressed: () {
                    finalresult(text: '5');
                  },
              color: Colors.grey,
                ),
                CustomButton(
                  hint: '6',
                    onPressed: () {
                    finalresult(text: '6');
                  },
            color: Colors.grey,
                ),
                CustomButton(
                  hint: '*',
                    onPressed: () {
                    finalresult(text: '*');
                  },
                 color: Colors.orange,
                ),
              ],
            ),
          ),
         Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  hint: '7',
                    onPressed: () {
                    finalresult(text: '7');
                  },
              color: Colors.grey,
                ),
                CustomButton(
                  hint: '8',
                    onPressed: () {
                    finalresult(text: '8');
                  },
             color: Colors.grey,
                ),
                CustomButton(
                  hint: '9',
                    onPressed: () {
                    finalresult(text: '9');
                  },
                color: Colors.grey,
                ),
                CustomButton(
                  hint: '-',
                    onPressed: () {
                    finalresult(text: '-');
                  },
                 color: Colors.orange,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  hint: '0',
                    onPressed: () {
                    finalresult(text: '0');
                  },
              color: Colors.grey,
                ),
                CustomButton(
                  hint: '.',
                    onPressed: () {
                    finalresult(text: '.');
                  },
                  color: Colors.grey,
                ),
                CustomButton(
                  hint: '=',
                    onPressed: () {
                    finalresult(text: '=');
                  },
                  color: Colors.orange,
                ),
                CustomButton(
                  hint: '/',
                    onPressed: () {
                    finalresult(text: '/');
                  },
                 color: Colors.orange,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.hint, required this.color, this.onPressed});
  final String hint;
  final Color color;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            fixedSize: const Size(50, 75),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
            )),
        onPressed: onPressed,
        child: Text(
          hint,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ));
  }
}
