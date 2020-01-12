import 'package:flutter/material.dart';

class InputPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _InputPageState();
  }

}
class _InputPageState extends State{
  String _valor= "";
  String _email="";
  String _fecha="";
  TextEditingController _inputFieldDateController= new TextEditingController();

  List<String> poderes= ['Volar', 'Saltar' ,'Invisible'];
  String _opcionSelected="Volar";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
        title: Text("INPUTS"),
        centerTitle: true,
      ) ,
      body: ListView(
        //separacion para que no quede muy pegado a las esquinas y arriba
        padding: EdgeInsets.symmetric( horizontal: 10,vertical:  20),
        children: <Widget>[
            _crearInputs(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropDown(),
          Divider(),
          _crearPersona()
        ],
      ),
    );
  }

  Widget _crearInputs() {
    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        counter:Text("Letras ${_valor.length}"),
        hintText: "Ingrese el Nombre",
        labelText: "Nombre: ",
          helperText: "Solo nombre",
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)
      ),
      onChanged: (valueTextField) {

        setState(() {
          _valor= valueTextField;
        });

      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre es: ${_valor}'),
      subtitle: Text('El email es: ${_email}'),
      trailing: Text("Poder es: ${_opcionSelected}"),
    );
  }

 Widget _crearEmail() {
    return TextField(
      keyboardType:  TextInputType.emailAddress,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          hintText: "Ingrese el email",
          labelText: "Email: ",
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)
      ),
      onChanged: (correo) {
        setState(() {
          _email= correo;
        });

      },
    );
 }

 Widget _crearPassword() {
    return TextField(
      obscureText:true,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          hintText: "Ingrese el Pasword",
          labelText: "Password: ",
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock)
      ),
      onChanged: (valueTextField) {
        setState(() {

        });
      },
    );
 }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          hintText: "Fecha de Nacimiento",
          labelText: "Fecha: ",
          suffixIcon: Icon(Icons.perm_contact_calendar),
          icon: Icon(Icons.calendar_today)
      ),
      onTap: () {
        // para quitar el focus
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

   _selectDate(BuildContext context) async{

    DateTime picked=await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2020),
        lastDate: new DateTime(2025),
       locale: Locale('es', 'ES')
     );

    if(picked != null){
       setState(() {
          _fecha=picked.toString();
          _inputFieldDateController.text=(_fecha);
       });
    }
  }
  List<DropdownMenuItem<String>> getOptionsDropdown(){

    List<DropdownMenuItem<String>> lista=  new List();
    poderes.forEach((itemPoder) {
      lista.add(DropdownMenuItem(
        child: Text(itemPoder),
        value: itemPoder,
      ));
    });
    return lista;
  }
  Widget _crearDropDown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30),
          Expanded(
            child:
              DropdownButton(
                value: _opcionSelected,
                items: getOptionsDropdown(),
                onChanged: (option) {
                  setState(() {
                    _opcionSelected=option;
                  });
                },
              ),
          )
      ],
    );


  }
}
