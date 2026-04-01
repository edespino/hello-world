#!/usr/bin/env python3

import subprocess
import sys
import unittest

from hello import hello


class TestHello(unittest.TestCase):
    def test_hello_function(self):
        self.assertEqual(hello(), "Hello, Foobar!")

    def test_hello_script_output(self):
        result = subprocess.run(
            [sys.executable, "hello.py"],
            capture_output=True,
            text=True,
            cwd=sys.path[0] or ".",
        )
        self.assertEqual(result.returncode, 0)
        self.assertEqual(result.stdout.strip(), "Hello, Foobar!")


if __name__ == "__main__":
    unittest.main()
