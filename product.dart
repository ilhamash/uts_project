class product {
  final String name;
  final String category;

  product({
    required this.name,
    required this.category,
  });
}


final List<product> productlist = [
    product(name: 'beasiswa1', category: 'akademik'),
    product(name: 'beasiswa2', category: 'akademik'),
    product(name: 'beasiswa3', category: 'Non-Akademik'),
    product(name: 'beasiswa4', category: 'Non-Akademik'),
    product(name: 'beasiswa5', category: 'Olahraga'),
    product(name: 'beasiswa6', category: 'Olahraga'),
    product(name: 'beasiswa7', category: 'akademik'),
];