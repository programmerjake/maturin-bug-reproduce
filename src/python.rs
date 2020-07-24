// SPDX-License-Identifier: LGPL-2.1-or-later
// See Notices.txt for copyright information

#![cfg(feature = "python")]

use pyo3::prelude::*;

#[pymodule]
fn maturin_bug_reproduce(_py: Python, _m: &PyModule) -> PyResult<()> {
    Ok(())
}
