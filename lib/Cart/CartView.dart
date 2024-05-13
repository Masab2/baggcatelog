import 'package:baggcatelog/Model/ProductModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slideable/slideable.dart';

class CartView extends StatefulWidget {
  final List<ProductModel> productList;
  const CartView({super.key, required this.productList});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff403b58),
        title: Text(
          'My Cart',
          style: GoogleFonts.poppins(
            color: Colors.white.withOpacity(0.63),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: widget.productList.length,
            itemBuilder: (context, index) {
              return Slideable(
                resetSlide: true,
                items: <ActionItems>[
                  ActionItems(
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPress: () {
                      setState(() {
                        widget.productList.removeAt(index);
                      });
                    },
                    backgroudColor: Colors.transparent,
                  ),
                ],
                child: Container(
                  height: 100,
                  width: double.infinity,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xff403b58),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        child: Image(
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                          image: AssetImage(widget.productList[index].image),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                widget.productList[index].name,
                                style: GoogleFonts.poppins(
                                  color: Colors.white.withOpacity(0.63),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                widget.productList[index].description,
                                style: GoogleFonts.poppins(
                                  color: Colors.white.withOpacity(0.43),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${widget.productList[index].price}৳',
                                      style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white.withOpacity(0.43),
                                      ),
                                    ),
                                    Container(
                                      height: 25,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.43),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                widget.productList[index]
                                                    .quntity++;
                                              });
                                            },
                                            child: const Icon(Icons.add),
                                          ),
                                          const SizedBox(width: 10),
                                          Text(
                                            widget.productList[index].quntity
                                                .toString(),
                                            style: GoogleFonts.poppins(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          GestureDetector(
                                            onTap: () {
                                              if (widget.productList[index]
                                                      .quntity ==
                                                  0) {
                                                setState(() {
                                                  widget.productList[index]
                                                          .quntity ==
                                                      0;
                                                });
                                              } else {
                                                setState(() {
                                                  widget.productList[index]
                                                      .quntity--;
                                                });
                                              }
                                            },
                                            child: const Icon(Icons.remove),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          )),
        ],
      ),
    );
  }
}
