// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Olá Mundo`
  String get helloWorld {
    return Intl.message(
      'Olá Mundo',
      name: 'helloWorld',
      desc: '',
      args: [],
    );
  }

  /// `em Português`
  String get title {
    return Intl.message(
      'em Português',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Meu nome é {completeName}.`
  String concatenedText(Object completeName) {
    return Intl.message(
      'Meu nome é $completeName.',
      name: 'concatenedText',
      desc: '',
      args: [completeName],
    );
  }

  /// `Meu nome é {lastName}, {firstName} {lastName}`
  String textWithPlaceHolders(Object lastName, Object firstName) {
    return Intl.message(
      'Meu nome é $lastName, $firstName $lastName',
      name: 'textWithPlaceHolders',
      desc: '',
      args: [lastName, firstName],
    );
  }

  /// `{howMany, plural, =0{Você não Possui menssagens} one{Você tem 1 mensagem} other {Você tem {howMany} mensagens}}`
  String pageNotificationsCount(num howMany) {
    return Intl.plural(
      howMany,
      zero: 'Você não Possui menssagens',
      one: 'Você tem 1 mensagem',
      other: 'Você tem $howMany mensagens',
      name: 'pageNotificationsCount',
      desc: '',
      args: [howMany],
    );
  }

  /// `o meu genero é {sex, select, male {ele} female {ela} other {them}}.`
  String gender(String sex) {
    return Intl.message(
      'o meu genero é ${Intl.gender(sex, male: 'ele', female: 'ela', other: 'them')}.',
      name: 'gender',
      desc: '',
      args: [sex],
    );
  }

  /// `Your balance is {amount} on {date}`
  String pageHomeBalance(double amount, DateTime date) {
    final NumberFormat amountNumberFormat = NumberFormat.currency(
        locale: Intl.getCurrentLocale(),
        decimalDigits: 2,
        name: 'USD',
        symbol: '\$',
        customPattern: '¤#0,00');
    final String amountString = amountNumberFormat.format(amount);

    final DateFormat dateDateFormat = DateFormat.yMd(Intl.getCurrentLocale());
    final String dateString = dateDateFormat.format(date);

    return Intl.message(
      'Your balance is $amountString on $dateString',
      name: 'pageHomeBalance',
      desc: '',
      args: [amountString, dateString],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'pt'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
