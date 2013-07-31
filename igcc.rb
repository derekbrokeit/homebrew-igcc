require 'formula'

class Igcc < Formula
  homepage ''
  url 'http://downloads.sourceforge.net/project/igcc/igcc-0.2.tar.bz2'
  sha1 '08905bea123fff7c006d72cef2575a8793e3dd25'
  head 'git://git.code.sf.net/p/igcc/code'

  depends_on :python

  def install
    system './test-igcc'
    python.site_packages.install('libigcc')
    bin.install('igcc')
  end

  test do
    system 'igcc -h'
  end
  
  def patches
    # allow any python including system python
    DATA
  end
end

__END__

diff --git a/igcc b/igcc
index 2aa97b9..480d9ca 100755
--- a/igcc
+++ b/igcc
@@ -1,4 +1,4 @@
-#!/usr/bin/python
+#!/usr/bin/env python
 
 # igcc - a read-eval-print loop for C/C++ programmers
 #
diff --git a/test-igcc b/test-igcc
index 5d44f79..c311c73 100755
--- a/test-igcc
+++ b/test-igcc
@@ -1,4 +1,4 @@
-#!/usr/bin/python
+#!/usr/bin/env python
 
 # igcc - a read-eval-print loop for C/C++ programmers
 #
