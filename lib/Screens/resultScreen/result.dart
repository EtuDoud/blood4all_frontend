import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen(this.data, {Key? key}) : super(key: key);
  final List data;
  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 450,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 60),
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    color: const Color(0xff153565),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: const [
                                Text("Hello!",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16)),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Shahin Alam",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              color: Colors.orange,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 1.0),
                              borderRadius: BorderRadius.circular(8.0)),
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              hintText: "Recherchez du sang",
                              hintStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    right: (MediaQuery.of(context).size.width - 343) / 2,
                    child: Container(
                      width: 343,
                      height: 201,
                      padding: const EdgeInsets.all(16),
                      //margin: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Text(
                                "Groupe sanguain",
                                style: TextStyle(fontSize: 14)
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Divider(
                                    thickness: 2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                color: Colors.orange,
                                child: const Text(
                                  "A+",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                color: Colors.orange,
                                child: const Text(
                                  "A+",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                color: Colors.orange,
                                child: const Text(
                                  "A+",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                color: Colors.orange,
                                child: const Text(
                                  "A+",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                color: Colors.orange,
                                child: const Text(
                                  "A+",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                color: Colors.orange,
                                child: const Text(
                                  "A+",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                color: Colors.orange,
                                child: const Text(
                                  "A+",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                color: Colors.orange,
                                child: const Text(
                                  "A+",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ...List.generate(
                widget.data.length, (index) => resultCard(widget.data[index])),
          ],
        ),
      ),
    );
  }

  Widget resultCard(data) {
    return Container(
      height: 135,
      width: 343,
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 22),
      margin: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFDCEDF9),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data[0],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    data[1],
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text("${data[2]} min",
                      style: const TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 16)),
                ],
              )
            ],
          ),
          const Text(
            "Disponibilité Critique",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
