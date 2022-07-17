import 'package:cached_network_image/cached_network_image.dart';
import 'package:challenge/src/bloc/show_data_bloc/show_info_bloc.dart';
import 'package:challenge/src/views/components/snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShowInfoScreen extends StatelessWidget {
  ShowInfoScreen({Key? key}) : super(key: key);
  final double _itemExtend = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Show data'),
      ),
      body: BlocProvider(
        create: (context) =>
        RepositoryProvider.of<ShowInfoBloc>(context)
          ..add(ShowInfoStarted()),
        child:
        BlocConsumer<ShowInfoBloc, ShowInfoState>(
            buildWhen: (previous, current) {
              if (current is ShowInfoLoading || current is ShowInfoSuccess) {
                return true;
              } else {
                return false;
              }
            },
            listener: (context, state) {
              if (state is ListItemShowImageUrl) {
                showSnackBar(context, state.imagePointUrl);
              }
            },
            builder: (context, state) {
              late Widget result;
              if (state is ShowInfoLoading) {
                result = const Center(
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                );
              }
              if (state is ShowInfoSuccess) {
                result = Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Text(state.userInfoList![0].email),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(state.userInfoList![0].pointUrl),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: state.userInfoList!.isNotEmpty
                          ? (state.userInfoList!.length * _itemExtend) + 16
                          : 0,
                      child: ListView.builder(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 8),
                          itemExtent: _itemExtend,
                          itemCount: state.userInfoList!.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                context.read<ShowInfoBloc>().add(
                                    ShowInfoListItemClicked(
                                        imagePointUrl: state.userInfoList![index]
                                            .pointUrl));
                              },
                              child: Container(
                                height: 190,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(12)),),
                                child: CachedNetworkImage(
                                  imageUrl: state.userInfoList![index].imageUrl,
                                  errorWidget: (context, url,
                                      error) => const Icon(Icons.image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Spacer(),
                  ],
                );
              }
              return result;
            }),
      ),
    );
  }
}
