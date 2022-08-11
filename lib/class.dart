class Button {
final String text;
final Function() onPressed;

const Button ({
required this.text, 
required this.onPressed
})

GestureDetector (
   onTap = onPressed,
   child = Container (
           width: 100,
           height: 100,
           color: Colors.black,
           child: Text(text)
          ),
);
}