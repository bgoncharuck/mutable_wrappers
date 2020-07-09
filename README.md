#### mutable_wrappers
Package contains classes to wrap basic dart data types and objects in class with mutable field. It can be used in classes which marked as @immutable.
#### How It Looks
```
class Mutable{Type} {
  {Type} wrapped;
  Mutable{Type}(this.wrapped);
}
```
#### How It Can Be Used
```
@immutable
class SomeWidget extends StatefullWidget {
    final MutableString text;
    SomeWidget({@required this.text})
    ...
}

_SomeWidgetState {
    ...

    widget.text.wrapped = controller.text;

    ...
}

Screen {
    final textToCommit = MutableString("");
    ...
    SomeWidget(text: textToCommit)
    ...
    Button (
        onTap: () {
            validate(textToCommit.wrapped);

            database.push(textToCommit.wrapped);
        }
    )
}
```
#### How classes are called
- MutableObject (`Object`)
- MutableString (`String`)
- MutableInteger (`int`)
- MutableFloat (`double`)
- MutableBool (`bool`)
- MutableStream (`Stream`)
- MutableList (`List`)
- MutableMap (`Map`)
- MutableSet (`Set`)
- MutableFunction (`Function`)
- MutableDynamic (`Dynamic`)