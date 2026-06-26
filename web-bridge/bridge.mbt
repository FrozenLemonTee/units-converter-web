///|
fn json_escape(text : String) -> String {
  let chars : Array[Char] = []
  text
  .iter()
  .each(fn(c) {
    match c {
      '"' => {
        chars.push('\\')
        chars.push('"')
      }
      '\\' => {
        chars.push('\\')
        chars.push('\\')
      }
      '\n' => {
        chars.push('\\')
        chars.push('n')
      }
      '\r' => {
        chars.push('\\')
        chars.push('r')
      }
      '\t' => {
        chars.push('\\')
        chars.push('t')
      }
      _ => chars.push(c)
    }
  })
  String::from_array(chars)
}

///|
fn result_json(result : @uc.CliResult) -> String {
  match result {
    Ok(text) => "{\"ok\":true,\"value\":\"\{json_escape(text)}\"}"
    Err(text) => "{\"ok\":false,\"error\":\"\{json_escape(text)}\"}"
  }
}

///|
pub fn convert_json(input : String, target : String, format : String) -> String {
  result_json(@uc.run_convert(input, target, format~))
}

///|
pub fn parse_json(input : String, format : String) -> String {
  result_json(@uc.run_parse(input, format~))
}

///|
pub fn parse_unit_json(input : String, format : String) -> String {
  result_json(@uc.run_parse_unit(input, format~))
}

///|
pub fn inspect_json(symbol : String, format : String) -> String {
  result_json(@uc.run_inspect(symbol, format~))
}
