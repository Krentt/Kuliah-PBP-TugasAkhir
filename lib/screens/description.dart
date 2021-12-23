import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    this.pressOnSeeMore,
  }) : super(key: key);

  final GestureTapCallback? pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Customize Mask",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        // Align(
        //   alignment: Alignment.centerRight,
        //   child: Container(
        //     padding: EdgeInsets.all(15),
        //     width: 64,
        //     decoration: BoxDecoration(
        //       color:
        //           Color(0xFFFFE6E6),
        //       borderRadius: BorderRadius.only(
        //         topLeft: Radius.circular(20),
        //         bottomLeft: Radius.circular(20),
        //       ),
        //     ),
        //     child: SvgPicture.asset(
        //       "assets/icons/Heart Icon_2.svg",
        //       color:
        //           product.isFavourite ? Color(0xFFFF4848) : Color(0xFFDBDEE4),
        //       height: getProportionateScreenWidth(16),
        //     ),
        //   ),
        // ),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 64,
          ),
          child: Text(
            "Masker bedah atau bisa disebut sebagai masker medis yang biasanya berwarna hijau atau biru. Masker jenis ini mampu menahan droplet sekitar 80-90 persen. Masker ini hanya bisa digunakan satu kali pakai dalam waktu 4 jam pemakaian. Masker ini terutama wajib digunakan oleh pasien sakit dan petugas kesehatan yang tidak menangani pasien COVID-19 secara langsung. Petugas yang menangani pasien COVID-19 secara langsung wajib mengenakan masker N-95 dan APD level 3",
            maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                          title: const Text("Description Message"),
                          content: Text(
                              "Masker bedah atau bisa disebut sebagai masker medis yang biasanya berwarna hijau atau biru. Masker jenis ini mampu menahan droplet sekitar 80-90 persen. Masker ini hanya bisa digunakan satu kali pakai dalam waktu 4 jam pemakaian. Masker ini terutama wajib digunakan oleh pasien sakit dan petugas kesehatan yang tidak menangani pasien COVID-19 secara langsung. Petugas yang menangani pasien COVID-19 secara langsung wajib mengenakan masker N-95 dan APD level 3"),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Close'),
                              child: const Text('Close'),
                            ),
                          ]));
            },
            child: Row(
              children: [
                Text(
                  "See More Detail",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.black),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
