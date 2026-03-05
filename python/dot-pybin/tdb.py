"""
Tallant debugger, lol

Use by :
  - setting PYTHONPATH="~/.pybin"
  - setting PYTHONBREAKPOINT='tbd.set_trace'

This activates this debugger for breakpoint() calls,
and can also be used like pdb, python -m tdb script.py
"""
import inspect
import linecache
import pdb
import reprlib
import sys

CLEAR = "\x1b[2J\x1b[H"
RED = "\x1b[31m"
GREEN = "\x1b[32m"
CYAN = "\x1b[36m"
RESET = "\x1b[0m"


def as_color(text, color):
    return color + text + RESET


DEFAULT_HEADER = (
    f"\nWelcome to the Tallant debugger {as_color('(tdb)', RED)}!\n"
    f"The current frame will be shown in {as_color('cyan', CYAN)} and is:"
)


class Tdb(pdb.Pdb):

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.prompt = as_color("[tdb] ", RED) + as_color("▶ ▷ ▶ ", GREEN)

    def displayhook(self, obj):
        """Wraps displayhook used in default()"""
        if obj is not None:
            self.message(as_color(repr(obj), GREEN))

    def format_stack_entry(self, frame_lineno, lprefix=": "):
        """Return a string with information about a stack entry.

        The stack entry frame_lineno is a (frame, lineno) tuple.  The
        return string contains the canonical filename, the function name
        or '<lambda>', the input arguments, the return value, and the
        line of code (if it exists).

        """
        frame, lineno = frame_lineno
        file_name = self.canonic(frame.f_code.co_filename)
        func_name = frame.f_code.co_name or "<lambda>"
        if "__return__" in frame.f_locals:
            rv = " --Returning--> " + reprlib.repr(frame.f_locals["__return__"])
        else:
            rv = ""
        formatted_frame = (
            "------" + "-" * len(file_name) + "\n"
            f"File: {file_name}\n"
            f"Func: {func_name}{rv}\n"
            f"Line: {lineno}"
        )
        source_preview = "".join(
            f"{ln:>{6}} {'-->' if ln == lineno else '   '} {linecache.getline(file_name, ln, frame.f_globals)}"
            for ln in range(max(0, lineno - 2), lineno + 2)
        )
        return formatted_frame + "\n\n" + source_preview

    def print_stack_entry(self, frame_lineno, prompt_prefix=pdb.line_prefix):
        self.message("")
        self.message(
            as_color(
                self.format_stack_entry(frame_lineno, prompt_prefix),
                CYAN if frame_lineno[0] == self.curframe else RESET,
            )
        )


def set_trace(*, header="", commands=None):
    # TODO: Figure out shared class var without reimplementing lots of stuff
    # This is what Pdb does...
    # if Tdb._last_pdb_instance is not None:
    #     tdb = Tdb._last_pdb_instance
    # else:

    pdb_init_params = inspect.signature(pdb.Pdb.__init__).parameters
    tbd_kwargs = {}
    if "mode" in pdb_init_params:
        tbd_kwargs["mode"] = "inline"
    if "backend" in pdb_init_params:
        # Python 3.14+ can use the lower-overhead monitoring backend.
        tbd_kwargs["backend"] = "monitoring"
    if "colorize" in pdb_init_params:
        tbd_kwargs["colorize"] = True

    set_trace_params = inspect.signature(pdb.Pdb.set_trace).parameters
    set_trace_kwargs = {}
    if "frame" in set_trace_params:
        set_trace_kwargs["frame"] = sys._getframe().f_back
    if "commands" in set_trace_params and commands is not None:
        set_trace_kwargs["commands"] = commands

    tdb = Tdb(**tbd_kwargs)
    tdb.message(header or DEFAULT_HEADER)
    tdb.set_trace(**set_trace_kwargs)


if __name__ == "__main__":
    pdb.Pdb = Tdb
    pdb.main()
