class Country {
  Country(
    this.name,
    this.domain,
  );
  final String name;
  final String domain;
}

Country unitedArabEmirates = Country("United Arab Emirates", "ae");
Country switzerland = Country("Switzerland", "ch");
Country russia = Country("Russia", "ru");
Country indonesia = Country("Indonesia", "id");
Country india = Country("India", "in");
Country usa = Country("USA", "us");
Country korea = Country("Korea", "kr");
Country turkey = Country("Turkey", "tr");
Country ukraine = Country("Ukraine", "ua");

Set<Country> countrySet = {
  unitedArabEmirates,
  switzerland,
  russia,
  indonesia,
  india,
  usa,
  korea,
  turkey,
  ukraine,
};

List<Country> countryLisy = [
  unitedArabEmirates,
  switzerland,
  russia,
  indonesia,
  india,
  usa,
  korea,
  turkey,
  ukraine,
];
