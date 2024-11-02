import 'package:shadcn_flutter/shadcn_flutter.dart';

class CustomSelect extends StatefulWidget {
  const CustomSelect({super.key});

  @override
  State<CustomSelect> createState() => _CustomSelectState();
}

class _CustomSelectState extends State<CustomSelect> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Select<String>(
      itemBuilder: (context, item) {
        return Text(item);
      },
      searchFilter: (item, query) {
        return item.toLowerCase().contains(query.toLowerCase()) ? 1 : 0;
      },
      popupConstraints: const BoxConstraints(
        maxHeight: 300,
        maxWidth: 200,
      ),
      onChanged: (value) {
        setState(() {
          selectedValue = value;
        });
      },
      value: selectedValue,
      placeholder: const Text('Select age range:'),
      children: const [
        SelectGroup(
          headers: [
            SelectLabel(
              child: Text('18-22'),
            ),
          ],
          children: [
            SelectItemButton(
              value: 'Red Apple',
              child: Text('Red Apple'),
            ),
            SelectItemButton(
              value: 'Green Apple',
              child: Text('Green Apple'),
            ),
          ],
        ),
        SelectGroup(
          headers: [
            SelectLabel(
              child: Text('22-24'),
            ),
          ],
          children: [
            SelectItemButton(
              value: 'Yellow Banana',
              child: Text('Yellow Banana'),
            ),
            SelectItemButton(
              value: 'Brown Banana',
              child: Text('Brown Banana'),
            ),
          ],
        ),
        SelectGroup(
          headers: [
            SelectLabel(
              child: Text('25-27'),
            ),
          ],
          children: [
            SelectItemButton(
              value: 'Yellow Lemon',
              child: Text('Yellow Lemon'),
            ),
            SelectItemButton(
              value: 'Green Lemon',
              child: Text('Green Lemon'),
            ),
          ],
        ),
        SelectGroup(
          headers: [
            SelectLabel(
              child: Text('27-29'),
            ),
          ],
          children: [
            SelectItemButton(
              value: 'Red Tomato',
              child: Text('Red'),
            ),
            SelectItemButton(
              value: 'Green Tomato',
              child: Text('Green'),
            ),
            SelectItemButton(
              value: 'Yellow Tomato',
              child: Text('Yellow'),
            ),
            SelectItemButton(
              value: 'Brown Tomato',
              child: Text('Brown'),
            ),
          ],
        ),
      ],
    );
  }
}


class CustomMultiSelect extends StatefulWidget {
  const CustomMultiSelect({super.key});

  @override
  State<CustomMultiSelect> createState() => _CustomMultiSelectState();
}

class _CustomMultiSelectState extends State<CustomMultiSelect> {
  List<String> selectedValues = [];
@override
Widget build(BuildContext context) {
  //needs latest version of shadcn which also needs an upgraded version of sdk
  return MultiSelect<String>(
    itemBuilder: (context, item) {
      return Text(item);
    },
    searchFilter: (item, query) {
      return item.toLowerCase().contains(query.toLowerCase()) ? 1 : 0;
    },
    popupConstraints: const BoxConstraints(
      maxHeight: 300,
      maxWidth: 200,
    ),
    onChanged: (value) {
      setState(() {
        selectedValues = value;
      });
    },
    value: selectedValues,
    placeholder: const Text('Select a fruit'),
    children: const [
      SelectGroup(
        headers: [
          SelectLabel(
            child: Text('Apple'),
          ),
        ],
        children: [
          SelectItemButton(
            value: 'Red Apple',
            child: Text('Red Apple'),
          ),
          SelectItemButton(
            value: 'Green Apple',
            child: Text('Green Apple'),
          ),
        ],
      ),
      SelectGroup(
        headers: [
          SelectLabel(
            child: Text('Banana'),
          ),
        ],
        children: [
          SelectItemButton(
            value: 'Yellow Banana',
            child: Text('Yellow Banana'),
          ),
          SelectItemButton(
            value: 'Brown Banana',
            child: Text('Brown Banana'),
          ),
        ],
      ),
      SelectGroup(
        headers: [
          SelectLabel(
            child: Text('Lemon'),
          ),
        ],
        children: [
          SelectItemButton(
            value: 'Yellow Lemon',
            child: Text('Yellow Lemon'),
          ),
          SelectItemButton(
            value: 'Green Lemon',
            child: Text('Green Lemon'),
          ),
        ],
      ),
      SelectGroup(
        headers: [
          SelectLabel(
            child: Text('Tomato'),
          ),
        ],
        children: [
          SelectItemButton(
            value: 'Red Tomato',
            child: Text('Red'),
          ),
          SelectItemButton(
            value: 'Green Tomato',
            child: Text('Green'),
          ),
          SelectItemButton(
            value: 'Yellow Tomato',
            child: Text('Yellow'),
          ),
          SelectItemButton(
            value: 'Brown Tomato',
            child: Text('Brown'),
          ),
        ],
      ),
    ],
  );
}

}