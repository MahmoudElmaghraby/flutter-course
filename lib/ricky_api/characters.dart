import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ricky_api/cubit/cubit/ricky_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersScreen extends StatelessWidget {
  CharactersScreen({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RickyCubit()..getData(),
      child: BlocBuilder<RickyCubit, RickyState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              actions: [
                TextButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut();
                    },
                    child: const Text('Log out')),
              ],
              title: Text('Hellow ${user.email}'),
              centerTitle: true,
              elevation: 10,
              backgroundColor: Colors.white,
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    String image = RickyCubit.get(context)
                        .myData
                        ?.data['results'][index]['image'];
                    String name = RickyCubit.get(context)
                        .myData
                        ?.data['results'][index]['name'];
                    String species = RickyCubit.get(context)
                        .myData
                        ?.data['results'][index]['species'];
                    String status = RickyCubit.get(context)
                        .myData
                        ?.data['results'][index]['status'];
                    // int itemsCount =
                    //     RickyCubit.get(context).myData?.data['results'].leangh;

                    return Row(
                      children: [
                        Image.network(
                          image,
                          width: 100,
                          height: 100,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 220,
                              child: Text(
                                name,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Text(species),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.green,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(status),
                              ],
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 16,
                    );
                  },
                  itemCount: 20
                  //RickyCubit.get(context).myData?.data['results'].length
                  ),
            ),
          );
        },
      ),
    );
  }
}
