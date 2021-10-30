import 'package:flutter/material.dart';
import 'package:shoesapp/background_clipper.dart';
import 'package:shoesapp/models/shoes.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          
          SliverAppBar(
            pinned: true,
            leading: IconButton(
              onPressed: (){},
              icon: Icon(Icons.menu),
            ),
          ),
          
          CategoryListWidget(),

          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                left: 30,
                top: 30,
                bottom: 20,
              ),
              child: Text(
                'Recommended for You',
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          //show grid
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.72,
                ),
              delegate: SliverChildBuilderDelegate(
                  (context,index){
                    return Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: categoryShoes[index].bgColor,
                          borderRadius: BorderRadius.circular(35),

                        ),
                        child: Column(
                          children: [
                             Stack(
                               alignment: Alignment.bottomCenter,
                               children: [
                                 Image.network(
                                   '${categoryShoes[index].imageName}',
                                   width: MediaQuery.of(context).size.width*0.25,
                                   height: MediaQuery.of(context).size.height*0.25,
                                 ),
                                 Container(
                                   height: 100,
                                   width: MediaQuery.of(context).size.width*3.5,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(100),
                                     boxShadow: [
                                       BoxShadow(
                                         color:
                                         Colors.black.withOpacity(0.25),
                                         spreadRadius: 10,
                                         blurRadius: 30,
                                       )
                                     ],
                                   ),
                                 ),

                                 Positioned(
                                   top: 10,
                                   child: Text(
                                     categoryShoes[index].name!,
                                     style: TextStyle(
                                       color: Colors.teal,
                                       fontSize: 16,
                                       fontWeight: FontWeight.bold,
                                     ),),
                                 ),
                                 Positioned(
                                   bottom: 5,
                                   child: Text(
                                     '\$${                                  categoryShoes[index].price!}',
                                     style: TextStyle(
                                       color: Colors.teal,
                                       fontSize: 12,
                                       fontWeight: FontWeight.bold,
                                     ),),
                                 ),

                               ],
                             ),
                          ],
                        ),
                      ),
                    );
                  },
                childCount: categoryShoes.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 8,),
            child: Text('Browse by Categories',
            style: TextStyle(
              color: Colors.teal,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
          ),
          SizedBox(height: 40,),
          Container(
            height: MediaQuery.of(context).size.height/4.12,
            decoration: BoxDecoration(
            ),
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemCount: categoryShoes.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ClipPath(
                      clipper: BackgroundClipper(),
                      child: Container(
                        width: MediaQuery.of(context).size.width/1.8,
                        decoration: BoxDecoration(
                          color: categoryShoes[index].bgColor,
                        ),
                        child: Column(

                          children: [
                            Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Image.network(
                                    '${categoryShoes[index].imageName}',
                                  width: MediaQuery.of(context).size.width*0.35,
                                  height: MediaQuery.of(context).size.height*0.215,
                                ),

                                Container(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width*3.5,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(100),
                     boxShadow: [
                       BoxShadow(
                         color:
                           Colors.black.withOpacity(0.25),
                         spreadRadius: 10,
                         blurRadius: 30,
                       )
                     ],
                   ),
                                ),

                                Positioned(
                                  top: 5,
                                  child: Text(
                                    categoryShoes[index].name!,
                                    style: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ),
                                Positioned(
                                  top: 25,
                                  child: Text(
        '\$${                                  categoryShoes[index].price!}',
                                    style: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  );
                },
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              color: Colors.teal,
               thickness: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
