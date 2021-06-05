import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

// ignore: must_be_immutable
class FiltersScreen extends StatefulWidget {
  static final String routeName = '/filters-screen';
  Function selectedFilters;
  final Map<String, bool> currentFilters;
  FiltersScreen(this.currentFilters, this.selectedFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarion = false;
  bool _vegan = false;
  bool _lactoseFree = false;
 @override
  initState() {
    _glutenFree = widget.currentFilters['gluten'];
    _lactoseFree = widget.currentFilters['lactose'];
    _vegetarion = widget.currentFilters['vegetarian'];
    _vegan = widget.currentFilters['vegan'];
    super.initState();
  }
  Widget _buildSwitchListTile(String title, String description,
      bool currentValue, Function updateValue) {
    return SwitchListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontStyle: FontStyle.normal,
        ),
      ),
      value: currentValue,
      subtitle: Text(
        description,
        style: TextStyle(fontSize: 12),
      ),
      onChanged: updateValue,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              // stateful object /logic contextte 'widget' yazarak ulaşabiliriz
              //bak alta mesela stateful instance yukarda ama erişebildik
            final selectedFilters = {
                'gluten': _glutenFree,
                'lactose': _lactoseFree,
                'vegan': _vegan,
                'vegetarian': _vegetarion,
              };
              widget.selectedFilters(selectedFilters);
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Adjust your meal selection",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwitchListTile(
                    "Gluten-free", "Only Gluten free meals", _glutenFree,
                    (newValue) {
                  setState(() {
                    _glutenFree = newValue;
                  });
                }),
                _buildSwitchListTile(
                    "Lactose-free", "Only Lactose free meals", _lactoseFree,
                    (newValue) {
                  setState(() {
                    _lactoseFree = newValue;
                  });
                }),
                _buildSwitchListTile("Vegetarian-free",
                    "Only Vegetarion free meals", _vegetarion, (newValue) {
                  setState(() {
                    _vegetarion = newValue;
                  });
                }),
                _buildSwitchListTile(
                    "Vegan-free", "Only Vegan free meals", _vegan, (newValue) {
                  setState(() {
                    _vegan = newValue;
                  });
                })
              ],
            ),
          )
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
