import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _AppbarSection(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                    child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8)),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search)),
                  ),
                )),
                const SizedBox(
                  width: 20,
                ),
                const Icon(Icons.tune)
              ],
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 7),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'May 24, 2022',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const _PaymentTile(
                        name: 'Emmanuel Rockson',
                        subname: 'Kwabena Uncle Ebo',
                        isSuccessful: true,
                        image: 'assets/images/mtn.jpeg',
                        isStarred: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const _PaymentTile(
                        name: 'Absa Bank',
                        isSuccessful: false,
                        image: 'assets/images/absa.png',
                        isStarred: false,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 7),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'May 24, 2022',
                            style:
                                TextStyle(color: Colors.black38, fontSize: 12),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const _PaymentTile(
                        name: 'Emmanuel Rockson',
                        isSuccessful: true,
                        image: 'assets/images/mtn.jpeg',
                        isStarred: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const _PaymentTile(
                        name: 'Emmanuel Rockson',
                        isSuccessful: true,
                        image: 'assets/images/mtn.jpeg',
                        isStarred: false,
                      ),
                    ]),
              ),
            ))
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color.fromARGB(255, 51, 195, 180),
          onPressed: () {},
          label: const Row(
            children: [
              Icon(Icons.add_circle_rounded),
              SizedBox(
                width: 10,
              ),
              Text('SEND NEW')
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
          useLegacyColorScheme: false,
          selectedItemColor: Color.fromARGB(255, 51, 195, 180),
          unselectedLabelStyle: TextStyle(color: Colors.black45),
          showUnselectedLabels: true,
          items: [
            const BottomNavigationBarItem(
              // backgroundColor: Colors.red,
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.send,
                color: Colors.blueGrey.withOpacity(0.4),
              ),
              label: 'Send',
            ),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.history,
                  color: Colors.black,
                ),
                label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_month,
                  color: Colors.blueGrey.withOpacity(0.4),
                ),
                label: 'Scheduled')
          ]),
    );
  }
}

class _AppbarSection extends StatelessWidget implements PreferredSizeWidget {
  const _AppbarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          SizedBox(
            // height: 65,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 16,
                // bottom: 8,
              ),
              child: ShadTabs(
                // scrollable: true,
                value: '1',
                tabs: [
                  ShadTab(
                    value: '1',
                    child: Text('History'),
                  ),
                  ShadTab(
                    value: '2',
                    child: Expanded(
                        child: Text(
                      'Transaction Summary',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            height: 0,
            thickness: 2,
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 60);
}

class _PaymentTile extends StatelessWidget {
  const _PaymentTile(
      {super.key,
      required this.isSuccessful,
      required this.image,
      required this.isStarred,
      required this.name,
      this.subname = ''});
  final String name;
  final String subname;
  final bool isSuccessful;
  final String image;
  final bool isStarred;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.3),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '14:45PM',
            style: TextStyle(
                color: Color.fromARGB(255, 169, 183, 198), fontSize: 14),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),
              radius: 20,
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  Text(subname)
                  //
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: isSuccessful
                    ? Colors.green.withOpacity(0.2)
                    : Colors.red.withOpacity(0.4),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Icon(
                    isSuccessful ? Icons.check_circle : Icons.cancel,
                    color: isSuccessful
                        ? const Color.fromARGB(255, 119, 211, 122)
                        : Color.fromARGB(255, 145, 25, 16),
                    size: 10,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    isSuccessful ? 'Successful' : 'Failed',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: isSuccessful
                            ? const Color.fromARGB(255, 119, 211, 122)
                            : Color.fromARGB(255, 145, 25, 16)),
                  )
                ],
              ),
            ),
          ]),
          const Row(
            children: [
              SizedBox(
                width: 45,
              ),
              Text(
                '0241 123 4567',
                style: TextStyle(color: Color.fromARGB(255, 169, 183, 198)),
              ),
              Spacer(),
              Text(
                'GHS 500',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const Divider(),
          Row(children: [
            const CircleAvatar(
              backgroundColor: Color(0xffDFDFFC),
              radius: 12,
              child: Icon(
                Icons.person,
                size: 16,
                color: Color(0xff7F81F3),
              ),
            ),
            SizedBox(width: 8),
            const Text(
              'Personal',
              style: TextStyle(fontSize: 13),
            ),
            SizedBox(width: 8),
            const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 169, 183, 198),
              radius: 2,
            ),
            SizedBox(width: 8),
            const Text(
              'Cool your heart wai',
              style: TextStyle(fontSize: 13),
            ),
            const Spacer(),
            isStarred
                ? const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  )
                : Container()
          ])
        ],
      ),
    );
  }
}
