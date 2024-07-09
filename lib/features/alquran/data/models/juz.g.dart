// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'juz.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetJuzCollection on Isar {
  IsarCollection<Juz> get juzs => this.collection();
}

const JuzSchema = CollectionSchema(
  name: r'Juz',
  id: -4102876579624723299,
  properties: {
    r'ayatArab': PropertySchema(
      id: 0,
      name: r'ayatArab',
      type: IsarType.string,
    ),
    r'ayatIndo': PropertySchema(
      id: 1,
      name: r'ayatIndo',
      type: IsarType.string,
    ),
    r'ayatLatin': PropertySchema(
      id: 2,
      name: r'ayatLatin',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'nameEndArab': PropertySchema(
      id: 4,
      name: r'nameEndArab',
      type: IsarType.string,
    ),
    r'nameEndId': PropertySchema(
      id: 5,
      name: r'nameEndId',
      type: IsarType.string,
    ),
    r'nameStartArab': PropertySchema(
      id: 6,
      name: r'nameStartArab',
      type: IsarType.string,
    ),
    r'nameStartId': PropertySchema(
      id: 7,
      name: r'nameStartId',
      type: IsarType.string,
    ),
    r'number': PropertySchema(
      id: 8,
      name: r'number',
      type: IsarType.string,
    ),
    r'surahIdEnd': PropertySchema(
      id: 9,
      name: r'surahIdEnd',
      type: IsarType.string,
    ),
    r'surahIdStart': PropertySchema(
      id: 10,
      name: r'surahIdStart',
      type: IsarType.string,
    ),
    r'verseEnd': PropertySchema(
      id: 11,
      name: r'verseEnd',
      type: IsarType.string,
    ),
    r'verseStart': PropertySchema(
      id: 12,
      name: r'verseStart',
      type: IsarType.string,
    )
  },
  estimateSize: _juzEstimateSize,
  serialize: _juzSerialize,
  deserialize: _juzDeserialize,
  deserializeProp: _juzDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _juzGetId,
  getLinks: _juzGetLinks,
  attach: _juzAttach,
  version: '3.1.0+1',
);

int _juzEstimateSize(
  Juz object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.ayatArab;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ayatIndo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ayatLatin;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.nameEndArab;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.nameEndId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.nameStartArab;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.nameStartId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.number;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.surahIdEnd;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.surahIdStart;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.verseEnd;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.verseStart;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _juzSerialize(
  Juz object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.ayatArab);
  writer.writeString(offsets[1], object.ayatIndo);
  writer.writeString(offsets[2], object.ayatLatin);
  writer.writeString(offsets[3], object.name);
  writer.writeString(offsets[4], object.nameEndArab);
  writer.writeString(offsets[5], object.nameEndId);
  writer.writeString(offsets[6], object.nameStartArab);
  writer.writeString(offsets[7], object.nameStartId);
  writer.writeString(offsets[8], object.number);
  writer.writeString(offsets[9], object.surahIdEnd);
  writer.writeString(offsets[10], object.surahIdStart);
  writer.writeString(offsets[11], object.verseEnd);
  writer.writeString(offsets[12], object.verseStart);
}

Juz _juzDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Juz(
    ayatArab: reader.readStringOrNull(offsets[0]),
    ayatIndo: reader.readStringOrNull(offsets[1]),
    ayatLatin: reader.readStringOrNull(offsets[2]),
    name: reader.readStringOrNull(offsets[3]),
    nameEndArab: reader.readStringOrNull(offsets[4]),
    nameEndId: reader.readStringOrNull(offsets[5]),
    nameStartArab: reader.readStringOrNull(offsets[6]),
    nameStartId: reader.readStringOrNull(offsets[7]),
    number: reader.readStringOrNull(offsets[8]),
    surahIdEnd: reader.readStringOrNull(offsets[9]),
    surahIdStart: reader.readStringOrNull(offsets[10]),
    verseEnd: reader.readStringOrNull(offsets[11]),
    verseStart: reader.readStringOrNull(offsets[12]),
  );
  return object;
}

P _juzDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _juzGetId(Juz object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _juzGetLinks(Juz object) {
  return [];
}

void _juzAttach(IsarCollection<dynamic> col, Id id, Juz object) {}

extension JuzQueryWhereSort on QueryBuilder<Juz, Juz, QWhere> {
  QueryBuilder<Juz, Juz, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension JuzQueryWhere on QueryBuilder<Juz, Juz, QWhereClause> {
  QueryBuilder<Juz, Juz, QAfterWhereClause> isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterWhereClause> isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Juz, Juz, QAfterWhereClause> isarIdGreaterThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<Juz, Juz, QAfterWhereClause> isarIdLessThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Juz, Juz, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension JuzQueryFilter on QueryBuilder<Juz, Juz, QFilterCondition> {
  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatArabIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ayatArab',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatArabIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ayatArab',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatArabEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ayatArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatArabGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ayatArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatArabLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ayatArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatArabBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ayatArab',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatArabStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ayatArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatArabEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ayatArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatArabContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ayatArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatArabMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ayatArab',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatArabIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ayatArab',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatArabIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ayatArab',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatIndoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ayatIndo',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatIndoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ayatIndo',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatIndoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ayatIndo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatIndoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ayatIndo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatIndoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ayatIndo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatIndoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ayatIndo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatIndoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ayatIndo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatIndoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ayatIndo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatIndoContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ayatIndo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatIndoMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ayatIndo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatIndoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ayatIndo',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatIndoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ayatIndo',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatLatinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ayatLatin',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatLatinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ayatLatin',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatLatinEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ayatLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatLatinGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ayatLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatLatinLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ayatLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatLatinBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ayatLatin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatLatinStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ayatLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatLatinEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ayatLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatLatinContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ayatLatin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatLatinMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ayatLatin',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatLatinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ayatLatin',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> ayatLatinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ayatLatin',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndArabIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nameEndArab',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndArabIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nameEndArab',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndArabEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameEndArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndArabGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nameEndArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndArabLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nameEndArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndArabBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nameEndArab',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndArabStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nameEndArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndArabEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nameEndArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndArabContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nameEndArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndArabMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nameEndArab',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndArabIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameEndArab',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndArabIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nameEndArab',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nameEndId',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nameEndId',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameEndId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nameEndId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nameEndId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nameEndId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nameEndId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nameEndId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndIdContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nameEndId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndIdMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nameEndId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameEndId',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameEndIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nameEndId',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartArabIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nameStartArab',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartArabIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nameStartArab',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartArabEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameStartArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartArabGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nameStartArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartArabLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nameStartArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartArabBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nameStartArab',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartArabStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nameStartArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartArabEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nameStartArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartArabContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nameStartArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartArabMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nameStartArab',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartArabIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameStartArab',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartArabIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nameStartArab',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nameStartId',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nameStartId',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameStartId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nameStartId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nameStartId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nameStartId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nameStartId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nameStartId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nameStartId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nameStartId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nameStartId',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> nameStartIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nameStartId',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> numberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'number',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> numberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'number',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> numberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> numberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> numberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> numberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'number',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> numberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> numberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> numberContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> numberMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'number',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> numberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'number',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> numberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'number',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdEndIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'surahIdEnd',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdEndIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'surahIdEnd',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdEndEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surahIdEnd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdEndGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'surahIdEnd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdEndLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'surahIdEnd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdEndBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'surahIdEnd',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdEndStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'surahIdEnd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdEndEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'surahIdEnd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdEndContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'surahIdEnd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdEndMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'surahIdEnd',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdEndIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surahIdEnd',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdEndIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'surahIdEnd',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdStartIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'surahIdStart',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdStartIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'surahIdStart',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdStartEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surahIdStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdStartGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'surahIdStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdStartLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'surahIdStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdStartBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'surahIdStart',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdStartStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'surahIdStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdStartEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'surahIdStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdStartContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'surahIdStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdStartMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'surahIdStart',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdStartIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surahIdStart',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> surahIdStartIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'surahIdStart',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseEndIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'verseEnd',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseEndIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'verseEnd',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseEndEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'verseEnd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseEndGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'verseEnd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseEndLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'verseEnd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseEndBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'verseEnd',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseEndStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'verseEnd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseEndEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'verseEnd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseEndContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'verseEnd',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseEndMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'verseEnd',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseEndIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'verseEnd',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseEndIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'verseEnd',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseStartIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'verseStart',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseStartIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'verseStart',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseStartEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'verseStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseStartGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'verseStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseStartLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'verseStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseStartBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'verseStart',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseStartStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'verseStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseStartEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'verseStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseStartContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'verseStart',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseStartMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'verseStart',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseStartIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'verseStart',
        value: '',
      ));
    });
  }

  QueryBuilder<Juz, Juz, QAfterFilterCondition> verseStartIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'verseStart',
        value: '',
      ));
    });
  }
}

extension JuzQueryObject on QueryBuilder<Juz, Juz, QFilterCondition> {}

extension JuzQueryLinks on QueryBuilder<Juz, Juz, QFilterCondition> {}

extension JuzQuerySortBy on QueryBuilder<Juz, Juz, QSortBy> {
  QueryBuilder<Juz, Juz, QAfterSortBy> sortByAyatArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatArab', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortByAyatArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatArab', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortByAyatIndo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatIndo', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortByAyatIndoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatIndo', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortByAyatLatin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatLatin', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortByAyatLatinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatLatin', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortByNameEndArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameEndArab', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortByNameEndArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameEndArab', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortByNameEndId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameEndId', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortByNameEndIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameEndId', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortByNameStartArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameStartArab', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortByNameStartArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameStartArab', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortByNameStartId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameStartId', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortByNameStartIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameStartId', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortBySurahIdEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surahIdEnd', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortBySurahIdEndDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surahIdEnd', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortBySurahIdStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surahIdStart', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortBySurahIdStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surahIdStart', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortByVerseEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verseEnd', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortByVerseEndDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verseEnd', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortByVerseStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verseStart', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> sortByVerseStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verseStart', Sort.desc);
    });
  }
}

extension JuzQuerySortThenBy on QueryBuilder<Juz, Juz, QSortThenBy> {
  QueryBuilder<Juz, Juz, QAfterSortBy> thenByAyatArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatArab', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByAyatArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatArab', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByAyatIndo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatIndo', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByAyatIndoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatIndo', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByAyatLatin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatLatin', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByAyatLatinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayatLatin', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByNameEndArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameEndArab', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByNameEndArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameEndArab', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByNameEndId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameEndId', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByNameEndIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameEndId', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByNameStartArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameStartArab', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByNameStartArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameStartArab', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByNameStartId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameStartId', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByNameStartIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nameStartId', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenBySurahIdEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surahIdEnd', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenBySurahIdEndDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surahIdEnd', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenBySurahIdStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surahIdStart', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenBySurahIdStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surahIdStart', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByVerseEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verseEnd', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByVerseEndDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verseEnd', Sort.desc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByVerseStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verseStart', Sort.asc);
    });
  }

  QueryBuilder<Juz, Juz, QAfterSortBy> thenByVerseStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'verseStart', Sort.desc);
    });
  }
}

extension JuzQueryWhereDistinct on QueryBuilder<Juz, Juz, QDistinct> {
  QueryBuilder<Juz, Juz, QDistinct> distinctByAyatArab(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ayatArab', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Juz, Juz, QDistinct> distinctByAyatIndo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ayatIndo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Juz, Juz, QDistinct> distinctByAyatLatin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ayatLatin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Juz, Juz, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Juz, Juz, QDistinct> distinctByNameEndArab(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nameEndArab', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Juz, Juz, QDistinct> distinctByNameEndId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nameEndId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Juz, Juz, QDistinct> distinctByNameStartArab(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nameStartArab',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Juz, Juz, QDistinct> distinctByNameStartId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nameStartId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Juz, Juz, QDistinct> distinctByNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'number', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Juz, Juz, QDistinct> distinctBySurahIdEnd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'surahIdEnd', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Juz, Juz, QDistinct> distinctBySurahIdStart(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'surahIdStart', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Juz, Juz, QDistinct> distinctByVerseEnd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'verseEnd', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Juz, Juz, QDistinct> distinctByVerseStart(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'verseStart', caseSensitive: caseSensitive);
    });
  }
}

extension JuzQueryProperty on QueryBuilder<Juz, Juz, QQueryProperty> {
  QueryBuilder<Juz, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<Juz, String?, QQueryOperations> ayatArabProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ayatArab');
    });
  }

  QueryBuilder<Juz, String?, QQueryOperations> ayatIndoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ayatIndo');
    });
  }

  QueryBuilder<Juz, String?, QQueryOperations> ayatLatinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ayatLatin');
    });
  }

  QueryBuilder<Juz, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Juz, String?, QQueryOperations> nameEndArabProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nameEndArab');
    });
  }

  QueryBuilder<Juz, String?, QQueryOperations> nameEndIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nameEndId');
    });
  }

  QueryBuilder<Juz, String?, QQueryOperations> nameStartArabProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nameStartArab');
    });
  }

  QueryBuilder<Juz, String?, QQueryOperations> nameStartIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nameStartId');
    });
  }

  QueryBuilder<Juz, String?, QQueryOperations> numberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'number');
    });
  }

  QueryBuilder<Juz, String?, QQueryOperations> surahIdEndProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'surahIdEnd');
    });
  }

  QueryBuilder<Juz, String?, QQueryOperations> surahIdStartProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'surahIdStart');
    });
  }

  QueryBuilder<Juz, String?, QQueryOperations> verseEndProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'verseEnd');
    });
  }

  QueryBuilder<Juz, String?, QQueryOperations> verseStartProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'verseStart');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Juz _$JuzFromJson(Map<String, dynamic> json) => Juz(
      ayatArab: json['ayat_arab'] as String?,
      ayatIndo: json['ayat_indo'] as String?,
      ayatLatin: json['ayat_latin'] as String?,
      name: json['name'] as String?,
      nameEndArab: json['name_end_arab'] as String?,
      nameEndId: json['name_end_id'] as String?,
      nameStartArab: json['name_start_arab'] as String?,
      nameStartId: json['name_start_id'] as String?,
      number: json['number'] as String?,
      surahIdEnd: json['surah_id_end'] as String?,
      surahIdStart: json['surah_id_start'] as String?,
      verseEnd: json['verse_end'] as String?,
      verseStart: json['verse_start'] as String?,
    );

Map<String, dynamic> _$JuzToJson(Juz instance) => <String, dynamic>{
      'ayat_arab': instance.ayatArab,
      'ayat_indo': instance.ayatIndo,
      'ayat_latin': instance.ayatLatin,
      'name': instance.name,
      'name_end_arab': instance.nameEndArab,
      'name_end_id': instance.nameEndId,
      'name_start_arab': instance.nameStartArab,
      'name_start_id': instance.nameStartId,
      'number': instance.number,
      'surah_id_end': instance.surahIdEnd,
      'surah_id_start': instance.surahIdStart,
      'verse_end': instance.verseEnd,
      'verse_start': instance.verseStart,
    };

Map<String, dynamic> _$$JuzImplToJson(_$JuzImpl instance) => <String, dynamic>{
      'isarId': instance.isarId,
      'ayatArab': instance.ayatArab,
      'ayatIndo': instance.ayatIndo,
      'ayatLatin': instance.ayatLatin,
      'name': instance.name,
      'nameEndArab': instance.nameEndArab,
      'nameEndId': instance.nameEndId,
      'nameStartArab': instance.nameStartArab,
      'nameStartId': instance.nameStartId,
      'number': instance.number,
      'surahIdEnd': instance.surahIdEnd,
      'surahIdStart': instance.surahIdStart,
      'verseEnd': instance.verseEnd,
      'verseStart': instance.verseStart,
    };
