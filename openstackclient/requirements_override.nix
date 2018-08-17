{ pkgs, python }:

self: super: {
  jsonschema = super.jsonschema.overrideDerivation (x: {
    propagatedBuildInputs = x.propagatedBuildInputs ++ [
      self.vcversioner
      self.unicodecsv
    ];
  });

  requestsexceptions = super.requestsexceptions.overrideDerivation (x: {
    propagatedBuildInputs = x.propagatedBuildInputs ++ [
      self.pbr
    ];
  });
}
