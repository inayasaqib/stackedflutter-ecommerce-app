import 'package:ecommerce/ui/views/startup/wish%20list/wishlist_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ImageSlider extends StatefulWidget {
  final Function(int) onChange;
  final String image;
  const ImageSlider({super.key, required this.image, required this.onChange});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(viewModelBuilder: () => WishlistViewmodel(), builder: (context, viewmodel, child){
   return  SizedBox(
                    height: 250,
                    child: PageView.builder(
                      itemBuilder: (context, index) {
                        return Hero(tag: widget.image, child: Image.asset(widget.image));
                      },
                      onPageChanged: (index) {
              widget.onChange(index); 
                       },
                    ),
                  );
    });
  }
}