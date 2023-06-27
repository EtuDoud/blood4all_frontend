import 'package:blood4all/Screens/utils/constants.dart';
import 'package:flutter/material.dart';
/// SearchBar is the widget of the search bar
class SearchBar extends StatefulWidget {
  const SearchBar(
      {Key? key,
      this.onChanged,/* 
      required this.controller, */
      required this.searchText})
      : super(key: key);
  final void Function(String)? onChanged;/* 
  final TextEditingController controller; */
  /// Ex: Category => Recherche Category
  final String searchText;

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Container(
        // width: 500.0,
        height: 85.0,
        // color: const Color(0xffecf0f3),
        alignment: Alignment.center,
        transformAlignment: Alignment.center,
        child: Container(
          // width: 212,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(53),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white,
                Colors.white,
              ],
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0xffffffff),
                offset: Offset(-11.8, -11.8),
                blurRadius: 42,
                spreadRadius: 0.0,
              ),
              BoxShadow(
                color: Color(0xffd6dadd),
                offset: Offset(11.8, 11.8),
                blurRadius: 42,
                spreadRadius: 0.0,
              ),
            ],
          ),
          child: TextFormField(
            controller: controller,
            onChanged: widget.onChanged,
            style: const TextStyle(fontSize: 18),
            decoration: InputDecoration(
              border: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              hintText: "Recherche ${widget.searchText}",
              suffixIconColor: kPrimaryColor,
              prefixIconColor: kPrimaryColor,
              prefixIcon: const Icon(Icons.search),
              suffixIcon: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  controller.text = '';
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
