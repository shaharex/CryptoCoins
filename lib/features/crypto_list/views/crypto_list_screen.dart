import 'package:crypto_app/features/crypto_list/bloc/crypto_list_bloc.dart';
import 'package:crypto_app/repositories/crypto_coins/crypto_coins.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../widgets/widgets.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  List<CryptoCoin>? _cryptoCoinsList;

  final _cryptoListBloc = CryptoListBloc(
    GetIt.I<AbstractCoinsRepository>()
    );

  @override
  void initState() {
    _loadCryptoCoins();
    _cryptoListBloc.add(LoadCryptoList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('CryptoCurrencies App'),
        centerTitle: true,
      ),
      body: (_cryptoCoinsList == null)
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.separated(
              padding: const EdgeInsets.only(top: 16),
              itemCount: _cryptoCoinsList!.length,
              separatorBuilder: (context, index) => Divider(
                color: theme.dividerColor,
              ),
              itemBuilder: (context, i) {
                final coin = _cryptoCoinsList![i];
                return CryptoCoinTile(coin: coin);
              },
            ),
    );
  }

  Future<void> _loadCryptoCoins() async {
    _cryptoCoinsList = await GetIt.I<AbstractCoinsRepository>().getCoinsList();
    setState(() {});
  }
}
