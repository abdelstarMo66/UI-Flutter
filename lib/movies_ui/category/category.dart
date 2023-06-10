import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'item_category.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 45.0,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search_outlined,
                          color: Colors.black54,
                        ),
                        hintText: "Search your movie ...",
                        hintStyle: GoogleFonts.barlow(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.grey.withOpacity(0.2),
                        filled: true,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    backgroundColor: Colors.cyan,
                    minimumSize: const Size(40.0, 45.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                  child: const Icon(
                    Icons.filter_list_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: SizedBox(
                  height: 30.0,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 3.0),
                      child: Text(
                        "Action",
                        style: GoogleFonts.barlow(
                          fontWeight: FontWeight.w500,
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 9.0,
                    ),
                    itemCount: 10,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 20.0,
                childAspectRatio: 1 / 1.90,
                shrinkWrap: true,
                crossAxisCount: 2,
                children: List.generate(
                  11,
                  (index) => itemCategory(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
