// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayah.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAyahCollection on Isar {
  IsarCollection<Ayah> get ayahs => this.collection();
}

const AyahSchema = CollectionSchema(
  name: r'Ayah',
  id: -4601816037318021044,
  properties: {
    r'arab': PropertySchema(
      id: 0,
      name: r'arab',
      type: IsarType.string,
    ),
    r'asbab': PropertySchema(
      id: 1,
      name: r'asbab',
      type: IsarType.string,
    ),
    r'audio': PropertySchema(
      id: 2,
      name: r'audio',
      type: IsarType.string,
    ),
    r'ayah': PropertySchema(
      id: 3,
      name: r'ayah',
      type: IsarType.string,
    ),
    r'ayahInt': PropertySchema(
      id: 4,
      name: r'ayahInt',
      type: IsarType.long,
    ),
    r'id': PropertySchema(
      id: 5,
      name: r'id',
      type: IsarType.string,
    ),
    r'idInt': PropertySchema(
      id: 6,
      name: r'idInt',
      type: IsarType.long,
    ),
    r'juz': PropertySchema(
      id: 7,
      name: r'juz',
      type: IsarType.string,
    ),
    r'juzInt': PropertySchema(
      id: 8,
      name: r'juzInt',
      type: IsarType.long,
    ),
    r'latin': PropertySchema(
      id: 9,
      name: r'latin',
      type: IsarType.string,
    ),
    r'notes': PropertySchema(
      id: 10,
      name: r'notes',
      type: IsarType.string,
    ),
    r'page': PropertySchema(
      id: 11,
      name: r'page',
      type: IsarType.string,
    ),
    r'surah': PropertySchema(
      id: 12,
      name: r'surah',
      type: IsarType.string,
    ),
    r'surahInt': PropertySchema(
      id: 13,
      name: r'surahInt',
      type: IsarType.long,
    ),
    r'text': PropertySchema(
      id: 14,
      name: r'text',
      type: IsarType.string,
    ),
    r'theme': PropertySchema(
      id: 15,
      name: r'theme',
      type: IsarType.string,
    )
  },
  estimateSize: _ayahEstimateSize,
  serialize: _ayahSerialize,
  deserialize: _ayahDeserialize,
  deserializeProp: _ayahDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _ayahGetId,
  getLinks: _ayahGetLinks,
  attach: _ayahAttach,
  version: '3.1.0+1',
);

int _ayahEstimateSize(
  Ayah object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.arab;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.asbab;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.audio;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ayah;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.id;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.juz;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.latin;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.notes;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.page;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.surah;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.text;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.theme;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _ayahSerialize(
  Ayah object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.arab);
  writer.writeString(offsets[1], object.asbab);
  writer.writeString(offsets[2], object.audio);
  writer.writeString(offsets[3], object.ayah);
  writer.writeLong(offsets[4], object.ayahInt);
  writer.writeString(offsets[5], object.id);
  writer.writeLong(offsets[6], object.idInt);
  writer.writeString(offsets[7], object.juz);
  writer.writeLong(offsets[8], object.juzInt);
  writer.writeString(offsets[9], object.latin);
  writer.writeString(offsets[10], object.notes);
  writer.writeString(offsets[11], object.page);
  writer.writeString(offsets[12], object.surah);
  writer.writeLong(offsets[13], object.surahInt);
  writer.writeString(offsets[14], object.text);
  writer.writeString(offsets[15], object.theme);
}

Ayah _ayahDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Ayah(
    arab: reader.readStringOrNull(offsets[0]),
    asbab: reader.readStringOrNull(offsets[1]),
    audio: reader.readStringOrNull(offsets[2]),
    ayah: reader.readStringOrNull(offsets[3]),
    ayahInt: reader.readLongOrNull(offsets[4]),
    id: reader.readStringOrNull(offsets[5]),
    idInt: reader.readLongOrNull(offsets[6]),
    juz: reader.readStringOrNull(offsets[7]),
    juzInt: reader.readLongOrNull(offsets[8]),
    latin: reader.readStringOrNull(offsets[9]),
    notes: reader.readStringOrNull(offsets[10]),
    page: reader.readStringOrNull(offsets[11]),
    surah: reader.readStringOrNull(offsets[12]),
    surahInt: reader.readLongOrNull(offsets[13]),
    text: reader.readStringOrNull(offsets[14]),
    theme: reader.readStringOrNull(offsets[15]),
  );
  return object;
}

P _ayahDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readLongOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _ayahGetId(Ayah object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _ayahGetLinks(Ayah object) {
  return [];
}

void _ayahAttach(IsarCollection<dynamic> col, Id id, Ayah object) {}

extension AyahQueryWhereSort on QueryBuilder<Ayah, Ayah, QWhere> {
  QueryBuilder<Ayah, Ayah, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AyahQueryWhere on QueryBuilder<Ayah, Ayah, QWhereClause> {
  QueryBuilder<Ayah, Ayah, QAfterWhereClause> isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterWhereClause> isarIdNotEqualTo(Id isarId) {
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

  QueryBuilder<Ayah, Ayah, QAfterWhereClause> isarIdGreaterThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterWhereClause> isarIdLessThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterWhereClause> isarIdBetween(
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

extension AyahQueryFilter on QueryBuilder<Ayah, Ayah, QFilterCondition> {
  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> arabIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'arab',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> arabIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'arab',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> arabEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'arab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> arabGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'arab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> arabLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'arab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> arabBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'arab',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> arabStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'arab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> arabEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'arab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> arabContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'arab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> arabMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'arab',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> arabIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'arab',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> arabIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'arab',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> asbabIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'asbab',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> asbabIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'asbab',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> asbabEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'asbab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> asbabGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'asbab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> asbabLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'asbab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> asbabBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'asbab',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> asbabStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'asbab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> asbabEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'asbab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> asbabContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'asbab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> asbabMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'asbab',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> asbabIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'asbab',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> asbabIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'asbab',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> audioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'audio',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> audioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'audio',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> audioEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> audioGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'audio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> audioLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'audio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> audioBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'audio',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> audioStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'audio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> audioEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'audio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> audioContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'audio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> audioMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'audio',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> audioIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audio',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> audioIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'audio',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> ayahIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ayah',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> ayahIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ayah',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> ayahEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ayah',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> ayahGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ayah',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> ayahLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ayah',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> ayahBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ayah',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> ayahStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ayah',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> ayahEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ayah',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> ayahContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ayah',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> ayahMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ayah',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> ayahIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ayah',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> ayahIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ayah',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> ayahIntIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ayahInt',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> ayahIntIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ayahInt',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> ayahIntEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ayahInt',
        value: value,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> ayahIntGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ayahInt',
        value: value,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> ayahIntLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ayahInt',
        value: value,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> ayahIntBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ayahInt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> idEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> idGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> idLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> idBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> idContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> idMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> idIntIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idInt',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> idIntIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idInt',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> idIntEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idInt',
        value: value,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> idIntGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idInt',
        value: value,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> idIntLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idInt',
        value: value,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> idIntBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idInt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> isarIdGreaterThan(
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

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> isarIdLessThan(
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

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> isarIdBetween(
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

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> juzIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'juz',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> juzIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'juz',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> juzEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'juz',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> juzGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'juz',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> juzLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'juz',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> juzBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'juz',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> juzStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'juz',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> juzEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'juz',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> juzContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'juz',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> juzMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'juz',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> juzIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'juz',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> juzIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'juz',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> juzIntIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'juzInt',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> juzIntIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'juzInt',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> juzIntEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'juzInt',
        value: value,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> juzIntGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'juzInt',
        value: value,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> juzIntLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'juzInt',
        value: value,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> juzIntBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'juzInt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> latinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'latin',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> latinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'latin',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> latinEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> latinGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'latin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> latinLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'latin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> latinBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'latin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> latinStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'latin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> latinEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'latin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> latinContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'latin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> latinMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'latin',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> latinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latin',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> latinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'latin',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> notesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notes',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> notesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notes',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> notesEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> notesGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> notesLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> notesBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> notesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> notesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> notesContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> notesMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> notesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> notesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> pageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'page',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> pageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'page',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> pageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'page',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> pageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'page',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> pageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'page',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> pageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'page',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> pageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'page',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> pageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'page',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> pageContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'page',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> pageMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'page',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> pageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'page',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> pageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'page',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> surahIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'surah',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> surahIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'surah',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> surahEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surah',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> surahGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'surah',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> surahLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'surah',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> surahBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'surah',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> surahStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'surah',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> surahEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'surah',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> surahContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'surah',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> surahMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'surah',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> surahIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surah',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> surahIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'surah',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> surahIntIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'surahInt',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> surahIntIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'surahInt',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> surahIntEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surahInt',
        value: value,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> surahIntGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'surahInt',
        value: value,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> surahIntLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'surahInt',
        value: value,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> surahIntBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'surahInt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> textIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'text',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> textIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'text',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> textEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> textGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> textLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> textBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'text',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> textStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> textEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> textContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> textMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'text',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> textIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'text',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> textIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'text',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> themeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'theme',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> themeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'theme',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> themeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'theme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> themeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'theme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> themeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'theme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> themeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'theme',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> themeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'theme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> themeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'theme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> themeContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'theme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> themeMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'theme',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> themeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'theme',
        value: '',
      ));
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterFilterCondition> themeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'theme',
        value: '',
      ));
    });
  }
}

extension AyahQueryObject on QueryBuilder<Ayah, Ayah, QFilterCondition> {}

extension AyahQueryLinks on QueryBuilder<Ayah, Ayah, QFilterCondition> {}

extension AyahQuerySortBy on QueryBuilder<Ayah, Ayah, QSortBy> {
  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arab', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arab', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByAsbab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'asbab', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByAsbabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'asbab', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByAudio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByAudioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByAyah() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayah', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByAyahDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayah', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByAyahInt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayahInt', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByAyahIntDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayahInt', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByIdInt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idInt', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByIdIntDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idInt', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByJuz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'juz', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByJuzDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'juz', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByJuzInt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'juzInt', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByJuzIntDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'juzInt', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByLatin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latin', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByLatinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latin', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'page', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByPageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'page', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortBySurah() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surah', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortBySurahDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surah', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortBySurahInt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surahInt', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortBySurahIntDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surahInt', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByTheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> sortByThemeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.desc);
    });
  }
}

extension AyahQuerySortThenBy on QueryBuilder<Ayah, Ayah, QSortThenBy> {
  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arab', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arab', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByAsbab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'asbab', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByAsbabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'asbab', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByAudio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByAudioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audio', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByAyah() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayah', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByAyahDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayah', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByAyahInt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayahInt', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByAyahIntDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ayahInt', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByIdInt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idInt', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByIdIntDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idInt', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByJuz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'juz', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByJuzDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'juz', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByJuzInt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'juzInt', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByJuzIntDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'juzInt', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByLatin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latin', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByLatinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latin', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'page', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByPageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'page', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenBySurah() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surah', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenBySurahDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surah', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenBySurahInt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surahInt', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenBySurahIntDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'surahInt', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'text', Sort.desc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByTheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.asc);
    });
  }

  QueryBuilder<Ayah, Ayah, QAfterSortBy> thenByThemeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.desc);
    });
  }
}

extension AyahQueryWhereDistinct on QueryBuilder<Ayah, Ayah, QDistinct> {
  QueryBuilder<Ayah, Ayah, QDistinct> distinctByArab(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'arab', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ayah, Ayah, QDistinct> distinctByAsbab(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'asbab', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ayah, Ayah, QDistinct> distinctByAudio(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'audio', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ayah, Ayah, QDistinct> distinctByAyah(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ayah', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ayah, Ayah, QDistinct> distinctByAyahInt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ayahInt');
    });
  }

  QueryBuilder<Ayah, Ayah, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ayah, Ayah, QDistinct> distinctByIdInt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idInt');
    });
  }

  QueryBuilder<Ayah, Ayah, QDistinct> distinctByJuz(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'juz', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ayah, Ayah, QDistinct> distinctByJuzInt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'juzInt');
    });
  }

  QueryBuilder<Ayah, Ayah, QDistinct> distinctByLatin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'latin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ayah, Ayah, QDistinct> distinctByNotes(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notes', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ayah, Ayah, QDistinct> distinctByPage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'page', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ayah, Ayah, QDistinct> distinctBySurah(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'surah', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ayah, Ayah, QDistinct> distinctBySurahInt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'surahInt');
    });
  }

  QueryBuilder<Ayah, Ayah, QDistinct> distinctByText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'text', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Ayah, Ayah, QDistinct> distinctByTheme(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'theme', caseSensitive: caseSensitive);
    });
  }
}

extension AyahQueryProperty on QueryBuilder<Ayah, Ayah, QQueryProperty> {
  QueryBuilder<Ayah, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<Ayah, String?, QQueryOperations> arabProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'arab');
    });
  }

  QueryBuilder<Ayah, String?, QQueryOperations> asbabProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'asbab');
    });
  }

  QueryBuilder<Ayah, String?, QQueryOperations> audioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'audio');
    });
  }

  QueryBuilder<Ayah, String?, QQueryOperations> ayahProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ayah');
    });
  }

  QueryBuilder<Ayah, int?, QQueryOperations> ayahIntProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ayahInt');
    });
  }

  QueryBuilder<Ayah, String?, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Ayah, int?, QQueryOperations> idIntProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idInt');
    });
  }

  QueryBuilder<Ayah, String?, QQueryOperations> juzProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'juz');
    });
  }

  QueryBuilder<Ayah, int?, QQueryOperations> juzIntProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'juzInt');
    });
  }

  QueryBuilder<Ayah, String?, QQueryOperations> latinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'latin');
    });
  }

  QueryBuilder<Ayah, String?, QQueryOperations> notesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notes');
    });
  }

  QueryBuilder<Ayah, String?, QQueryOperations> pageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'page');
    });
  }

  QueryBuilder<Ayah, String?, QQueryOperations> surahProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'surah');
    });
  }

  QueryBuilder<Ayah, int?, QQueryOperations> surahIntProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'surahInt');
    });
  }

  QueryBuilder<Ayah, String?, QQueryOperations> textProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'text');
    });
  }

  QueryBuilder<Ayah, String?, QQueryOperations> themeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'theme');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ayah _$AyahFromJson(Map<String, dynamic> json) => Ayah(
      id: json['id'] as String?,
      idInt: (json['id_int'] as num?)?.toInt(),
      arab: json['arab'] as String?,
      asbab: json['asbab'] as String?,
      audio: json['audio'] as String?,
      ayah: json['ayah'] as String?,
      ayahInt: (json['ayah_int'] as num?)?.toInt(),
      juz: json['juz'] as String?,
      juzInt: (json['juz_int'] as num?)?.toInt(),
      surah: json['surah'] as String?,
      surahInt: (json['surah_int'] as num?)?.toInt(),
      latin: json['latin'] as String?,
      notes: json['notes'] as String?,
      page: json['page'] as String?,
      text: json['text'] as String?,
      theme: json['theme'] as String?,
    );

Map<String, dynamic> _$AyahToJson(Ayah instance) => <String, dynamic>{
      'id': instance.id,
      'id_int': instance.idInt,
      'arab': instance.arab,
      'asbab': instance.asbab,
      'audio': instance.audio,
      'ayah': instance.ayah,
      'ayah_int': instance.ayahInt,
      'juz': instance.juz,
      'juz_int': instance.juzInt,
      'surah': instance.surah,
      'surah_int': instance.surahInt,
      'latin': instance.latin,
      'notes': instance.notes,
      'page': instance.page,
      'text': instance.text,
      'theme': instance.theme,
    };
