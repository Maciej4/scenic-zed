; Identifier naming conventions

(identifier) @variable

((identifier) @constructor
 (#match? @constructor "^[A-Z]"))

((identifier) @constant
 (#match? @constant "^[A-Z][A-Z_]*$"))

((identifier) @type.builtin
 (#match?
   @type.builtin
   "^(Point|OrientedPoint|Object|Vector|Orientation|VectorField|PolygonalVectorField|Shape|MeshShape|BoxShape|CylinderShape|ConeShape|SpheroidShape|Region|PointSetRegion|RectangularRegion|CircularRegion|SectorRegion|PolygonalRegion|PolylineRegion|PathRegion|MeshVolumeRegion|MeshSurfaceRegion|BoxRegion|SpheroidRegion|Workspace|Range|DiscreteRange|Options|Discrete|Uniform|Normal|TruncatedNormal|VerifaiParameter|VerifaiRange|VerifaiDiscreteRange|VerifaiOptions)$"))

((identifier) @variable.special
 (#match? @variable.special "^(ego|workspace|globalParameters)$"))

((identifier) @function.builtin
 (#match?
   @function.builtin
   "^(resample|localPath|verbosePrint|simulation|sin|cos|hypot)$"))

; Function calls

(decorator
  [
    (identifier) @function.decorator
    (attribute attribute: (identifier) @function.decorator)
    (call function: (identifier) @function.decorator.call)
    (call function: (attribute attribute: (identifier) @function.decorator.call))
  ])

(call
  function: (attribute attribute: (identifier) @function.method))
(call
  function: (identifier) @function)

; Builtin functions

((call
  function: (identifier) @function.builtin)
 (#match?
   @function.builtin
   "^(abs|all|any|ascii|bin|bool|breakpoint|bytearray|bytes|callable|chr|classmethod|compile|complex|delattr|dict|dir|divmod|enumerate|eval|exec|filter|float|format|frozenset|getattr|globals|hasattr|hash|help|hex|id|input|int|isinstance|issubclass|iter|len|list|locals|map|max|memoryview|min|next|object|oct|open|ord|pow|print|property|range|repr|reversed|round|set|setattr|slice|sorted|staticmethod|str|sum|super|tuple|type|vars|zip|__import__)$"))

; Function definitions

(function_definition
  name: (identifier) @function)

(scenic_behavior_definition
  name: (identifier) @function)

(scenic_monitor_definition
  name: (identifier) @function)

(scenic_scenario_definition
  name: (identifier) @function)

(parameters
  (identifier) @variable.parameter)

(default_parameter
  name: (identifier) @variable.parameter)

(typed_parameter
  (identifier) @variable.parameter)

(typed_default_parameter
  name: (identifier) @variable.parameter)

(scenic_parameter
  name: (identifier) @variable.parameter)

(keyword_argument
  name: (identifier) @function.kwargs)

(scenic_new_expression
  class: (identifier) @constructor @type)

(scenic_with_specifier
  property: (identifier) @property)

(attribute attribute: (identifier) @property)
(type (identifier) @type)

; Literals

[
  (none)
  (true)
  (false)
] @constant.builtin

[
  (integer)
  (float)
] @number

(comment) @comment
(string) @string
(escape_sequence) @string.escape @escape

(interpolation
  "{" @punctuation.special
  "}" @punctuation.special) @embedded

[
  "-"
  "-="
  "!="
  "*"
  "**"
  "**="
  "*="
  "/"
  "//"
  "//="
  "/="
  "&"
  "&="
  "%"
  "%="
  "^"
  "^="
  "+"
  "->"
  "+="
  "<"
  "<<"
  "<<="
  "<="
  "<>"
  "="
  ":="
  "=="
  ">"
  ">="
  ">>"
  ">>="
  "|"
  "|="
  "~"
  "@"
  "@="
  "and"
  "in"
  "is"
  "not"
  "or"
  "is not"
  "not in"
] @operator

(decorator
  "@" @punctuation.special)

[
  (scenic_relative_position_of)
  (scenic_relative_heading_of)
  (scenic_apparent_heading_of)
  (scenic_distance_to)
  (scenic_distance_from)
  (scenic_distance_past)
  (scenic_angle_to)
  (scenic_angle_from)
  (scenic_altitude_to)
  (scenic_altitude_from)
  (scenic_follow)
] @keyword

(scenic_position_of) @keyword

(scenic_infix_operator
  [
    "can"
    "see"
    "intersects"
    "visible"
    "not"
    "from"
    "relative"
    "to"
    "offset"
    "by"
    "along"
    "at"
    "in"
  ] @keyword)

(scenic_postfix_operator
  "deg" @operator)

(scenic_temporal_binary_operator
  [
    "until"
    "implies"
    "and"
    "or"
  ] @operator)

[
  "as"
  "assert"
  "async"
  "await"
  "break"
  "class"
  "continue"
  "def"
  "del"
  "elif"
  "else"
  "except"
  "exec"
  "finally"
  "for"
  "from"
  "global"
  "if"
  "import"
  "lambda"
  "nonlocal"
  "pass"
  "print"
  "raise"
  "return"
  "try"
  "while"
  "with"
  "yield"
  "match"
  "case"
] @keyword

[
  "above"
  "ahead"
  "along"
  "apparently"
  "at"
  "away"
  "behavior"
  "behind"
  "below"
  "beyond"
  "by"
  "choose"
  "compose"
  "contained"
  "directly"
  "do"
  "every"
  "facing"
  "final"
  "following"
  "invariant"
  "initial"
  "intersects"
  "interrupt"
  "left"
  "monitor"
  "mutate"
  "new"
  "of"
  "on"
  "offset"
  "param"
  "precondition"
  "record"
  "relative"
  "require"
  "right"
  "scenario"
  "seconds"
  "see"
  "setup"
  "shuffle"
  "simulation"
  "simulator"
  "steps"
  "take"
  "terminate"
  "to"
  "toward"
  "visible"
  "wait"
  "when"
] @keyword

(scenic_model_keyword) @keyword

(scenic_new_expression
  "new" @keyword)

(scenic_initial_scenario_expression
  [
    "initial"
    "scenario"
  ] @keyword)

(scenic_temporal_prefix_operator
  [
    "always"
    "eventually"
    "next"
  ] @keyword)

(scenic_simulator_statement
  "simulator" @keyword)

(scenic_param_statement
  "param" @keyword)

(scenic_require_statement
  [
    "require"
    "monitor"
    "as"
  ] @keyword)

(scenic_terminate_statement
  [
    "terminate"
    "simulation"
    "when"
    "after"
    "as"
  ] @keyword)

(scenic_mutate_statement
  [
    "mutate"
    "by"
  ] @keyword)

(scenic_record_statement
  [
    "record"
    "initial"
    "final"
    "every"
    "after"
    "as"
    "to"
  ] @keyword)

(scenic_take_statement
  "take" @keyword)

(scenic_wait_statement
  [
    "wait"
    "for"
    "until"
  ] @keyword)

(scenic_do_statement
  [
    "do"
    "choose"
    "shuffle"
    "for"
    "until"
  ] @keyword)

(scenic_abort_statement) @keyword

(scenic_override_statement
  "override" @keyword)

(scenic_override_block
  "override" @keyword)

(scenic_precondition_statement
  "precondition" @keyword)

(scenic_invariant_statement
  "invariant" @keyword)

(scenic_behavior_definition
  "behavior" @keyword)

(scenic_monitor_definition
  "monitor" @keyword)

(scenic_scenario_definition
  "scenario" @keyword)

(scenic_setup_block
  "setup" @keyword)

(scenic_compose_block
  "compose" @keyword)

(scenic_try_interrupt_statement
  "try" @keyword)

(scenic_interrupt_clause
  [
    "interrupt"
    "when"
  ] @keyword)

(scenic_duration
  [
    "seconds"
    "steps"
  ] @keyword)

(scenic_with_specifier
  "with" @keyword)

(scenic_at_specifier
  "at" @keyword)

(scenic_in_specifier
  "in" @keyword)

(scenic_on_specifier
  "on" @keyword)

(scenic_contained_in_specifier
  [
    "contained"
    "in"
  ] @keyword)

(scenic_visible_specifier
  [
    "visible"
    "from"
  ] @keyword)

(scenic_not_visible_specifier
  [
    "not"
    "visible"
    "from"
  ] @keyword)

(scenic_visibility_expression
  [
    "not"
    "visible"
  ] @keyword)

(scenic_offset_by_specifier
  [
    "offset"
    "by"
  ] @keyword)

(scenic_offset_along_specifier
  [
    "offset"
    "along"
    "by"
  ] @keyword)

(scenic_direction_of_specifier
  [
    "left"
    "right"
    "ahead"
    "behind"
    "above"
    "below"
    "of"
    "by"
  ] @keyword)

(scenic_beyond_specifier
  [
    "beyond"
    "by"
    "from"
  ] @keyword)

(scenic_following_specifier
  [
    "following"
    "from"
    "for"
  ] @keyword)

(scenic_facing_specifier
  [
    "facing"
    "directly"
    "toward"
    "away"
    "from"
  ] @keyword)

(scenic_apparently_facing_specifier
  [
    "apparently"
    "facing"
    "from"
  ] @keyword)
