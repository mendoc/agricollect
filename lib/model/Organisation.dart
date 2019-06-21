class Organisation {
  final int id;
  final String libelle;

  Organisation(this.id, this.libelle);

  Map<String, dynamic> toMap() => {"id": id, "nom": libelle};

  @override
  String toString() => "Organisation{id: $id, nom, $libelle}";
}
