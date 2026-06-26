///|
test "convert_json returns success payload" {
  let actual = convert_json("60 km/h", "m/s", "ascii")
  assert_eq(actual, "{\"ok\":true,\"value\":\"16.666666666666668 m/s\"}")
}

///|
test "convert_json returns error payload" {
  let actual = convert_json("3 m", "s", "ascii")
  assert_eq(
    actual, "{\"ok\":false,\"error\":\"incompatible dimensions: cannot convert `3 m` to `s`\"}",
  )
}

///|
test "parse_unit_json escapes result text" {
  let actual = parse_unit_json("kg*m/s^2", "ascii")
  assert_eq(actual, "{\"ok\":true,\"value\":\"kg*m/s^2\"}")
}
