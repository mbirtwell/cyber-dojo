    lines =
    [
      'diff --git a/sandbox/file with_space b/sandbox/file with_space',
      'new file mode 100644',
      'index 0000000..21984c7',
      '--- /dev/null',
      '+++ b/sandbox/file with_space',
      '@@ -0,0 +1 @@',
      '+Please rename me!',
      '\\ No newline at end of file'
    ].join("\n")
    source_lines =
    [
      'Please rename me!'
    ].join("\n")
      section(0),
      added_line('Please rename me!', 1),
    lines =
    [
      'diff --git a/sandbox/untitled_5G3 b/sandbox/untitled_5G3',
      'index e69de29..2e65efe 100644',
      '--- a/sandbox/untitled_5G3',
      '+++ b/sandbox/untitled_5G3',
      '@@ -0,0 +1 @@',
      '+aaa',
      '\\ No newline at end of file'
    ].join("\n")
                  :added_lines   => [ 'aaa' ],
    source_lines =
    [
      'aaa'
    ].join("\n")
      { :type => :added,   :line => 'aaa', :number => 1 },
    diff_lines =
    [
      'diff --git a/sandbox/lines b/sandbox/lines',
      'index b1a30d9..7fa9727 100644',
      '--- a/sandbox/lines',
      '+++ b/sandbox/lines',
      '@@ -1,5 +1,5 @@',
      ' 1',
      '-2',
      '+2a',
      ' 3',
      ' 4',
      ' 5',
      '@@ -8,6 +8,6 @@',
      ' 8',
      ' 9',
      ' 10',
      '-11',
      '+11a',
      ' 12',
      ' 13',
      '\\ No newline at end of file'
    ].join("\n")
    source_lines =
    [
      '1',
      '2a',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '10',
      '11a',
      '12',
      '13'
    ].join("\n")
    diff_lines =
    [
      'diff --git a/sandbox/lines b/sandbox/lines',
      'index 0719398..2943489 100644',
      '--- a/sandbox/lines',
      '+++ b/sandbox/lines',
      '@@ -1,4 +1,4 @@',
      '-1',
      '+1a',
      ' 2',
      ' 3',
      ' 4',
      '@@ -6,4 +6,4 @@',
      ' 6',
      ' 7',
      ' 8',
      '-9',
      '+9a'
    ].join("\n")
    source_lines =
    [
      '1a',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9a'
    ].join("\n")
    diff_lines =
    [
      'diff --git a/sandbox/lines b/sandbox/lines',
      'index 535d2b0..a173ef1 100644',
      '--- a/sandbox/lines',
      '+++ b/sandbox/lines',
      '@@ -1,8 +1,8 @@',
      ' 1',
      ' 2',
      '-3',
      '+3a',
      ' 4',
      '-5',
      '+5a',
      ' 6',
      ' 7',
      ' 8'
    ].join("\n")
            'diff --git a/sandbox/lines b/sandbox/lines',
            'index 535d2b0..a173ef1 100644'
              :before_lines => [ '1', '2' ],
                  :deleted_lines => [ '3' ],
                  :added_lines   => [ '3a' ],
                  :after_lines => [ '4' ]
                  :deleted_lines => [ '5' ],
                  :added_lines   => [ '5a' ],
                  :after_lines => [ '6', '7', '8' ]
    source_lines =
    [
      '1',
      '2',
      '3a',
      '4',
      '5a',
      '6',
      '7',
      '8'
    ].join("\n")
      { :line => '1', :type => :same, :number => 1 },
      { :line => '2', :type => :same, :number => 2 },
      { :line => '3', :type => :deleted, :number => 3 },
      { :line => '3a', :type => :added, :number => 3 },
      { :line => '4', :type => :same, :number => 4 },
      { :line => '5', :type => :deleted, :number => 5 },
      { :line => '5a', :type => :added, :number => 5 },
      { :line => '6', :type => :same, :number => 6 },
      { :line => '7', :type => :same, :number => 7 },
      { :line => '8', :type => :same, :number => 8 },
    diff_lines =
    [
      'diff --git a/sandbox/lines b/sandbox/lines',
      'index 06e567b..59e88aa 100644',
      '--- a/sandbox/lines',
      '+++ b/sandbox/lines',
      '@@ -1,6 +1,9 @@',
      ' 1',
      ' 2',
      ' 3',
      '+3a1',
      '+3a2',
      '+3a3',
      ' 4',
      ' 5',
      ' 6'
    ].join("\n")
              :before_lines => [ '1', '2', '3' ],
                  :added_lines   => [ '3a1', '3a2', '3a3' ],
                  :after_lines => [ '4', '5', '6' ]
    source_lines =
    [
      '1',
      '2',
      '3',
      '3a1',
      '3a2',
      '3a3',
      '4',
      '5',
      '6',
      '7'
    ].join("\n")
      { :line => '1', :type => :same, :number => 1 },
      { :line => '2', :type => :same, :number => 2 },
      { :line => '3', :type => :same, :number => 3 },
      { :line => '3a1', :type => :added, :number => 4 },
      { :line => '3a2', :type => :added, :number => 5 },
      { :line => '3a3', :type => :added, :number => 6 },
      { :line => '4', :type => :same, :number => 7 },
      { :line => '5', :type => :same, :number => 8 },
      { :line => '6', :type => :same, :number => 9 },
      { :line => '7', :type => :same, :number => 10 },
    diff_lines =
    [
      'diff --git a/sandbox/lines b/sandbox/lines',
      'index 0b669b6..a972632 100644',
      '--- a/sandbox/lines',
      '+++ b/sandbox/lines',
      '@@ -2,8 +2,6 @@',
      ' bbb',
      ' ccc',
      ' ddd',
      '-EEE',
      '-FFF',
      ' ggg',
      ' hhh',
      ' iii'
    ].join("\n")
            'diff --git a/sandbox/lines b/sandbox/lines',
            'index 0b669b6..a972632 100644'
              :before_lines => [ 'bbb', 'ccc', 'ddd' ],
                  :deleted_lines => [ 'EEE', 'FFF' ],
                  :after_lines => [ 'ggg', 'hhh', 'iii' ]
    source_lines =
    [
      'aaa',
      'bbb',
      'ccc',
      'ddd',
      'ggg',
      'hhh',
      'iii',
      'jjj'
    ].join("\n")
      same_line('aaa', 1),
      same_line('bbb', 2),
      same_line('ccc', 3),
      same_line('ddd', 4),
      section(0),
      deleted_line('EEE', 5),
      deleted_line('FFF', 6),
      same_line('ggg', 5),
      same_line('hhh', 6),
      same_line('iii', 7),
      same_line('jjj', 8)
    diff_lines =
    [
      'diff --git a/sandbox/lines b/sandbox/lines',
      'index 08fe19c..1f8695e 100644',
      '--- a/sandbox/lines',
      '+++ b/sandbox/lines',
      '@@ -3,9 +3,7 @@',
      ' 3',
      ' 4',
      ' 5',
      '-6',
      '-7',
      '-8',
      '+7a',
      ' 9',
      ' 10',
      ' 11'
    ].join("\n")
    source_lines =
    [
      '1',
      '2',
      '3',
      '4',
      '5',
      '7a',
      '9',
      '10',
      '11',
      '12'
    ].join("\n")
      { :line => '1', :type => :same, :number => 1 },
      { :line => '2', :type => :same, :number => 2 },
      { :line => '3', :type => :same, :number => 3 },
      { :line => '4', :type => :same, :number => 4 },
      { :line => '5', :type => :same, :number => 5 },
      { :line => '6', :type => :deleted, :number =>  6 },
      { :line => '7', :type => :deleted, :number =>  7 },
      { :line => '8', :type => :deleted, :number =>  8 },
      { :line => '7a',:type => :added,   :number =>  6 },
      { :line => '9', :type => :same,    :number =>  7 },
      { :line => '10',:type => :same,    :number =>  8 },
      { :line => '11',:type => :same,    :number =>  9 },
      { :line => '12',:type => :same,    :number => 10 },
    diff_lines =
    [
      'diff --git a/sandbox/lines b/sandbox/lines',
      'index 8e435da..a787223 100644',
      '--- a/sandbox/lines',
      '+++ b/sandbox/lines',
      '@@ -3,7 +3,8 @@',
      ' ccc',
      ' ddd',
      ' eee',
      '-fff',
      '+XXX',
      '+YYY',
      ' ggg',
      ' hhh',
      ' iii'
    ].join("\n")
    diff_lines =
    [
      'diff --git a/sandbox/lines b/sandbox/lines',
      'index 5ed4618..aad3f67 100644',
      '--- a/sandbox/lines',
      '+++ b/sandbox/lines',
      '@@ -5,7 +5,7 @@',
      ' aaa',
      ' bbb',
      ' ccc',
      '-QQQ',
      '+RRR',
      ' ddd',
      ' eee',
      ' fff'
    ].join("\n")
              :before_lines => [ 'aaa', 'bbb', 'ccc' ],
                  :deleted_lines => [ 'QQQ' ],
                  :added_lines   => [ 'RRR' ],
                  :after_lines => [ 'ddd', 'eee', 'fff' ]
    source_lines =
    [
      'zz',
      'yy',
      'xx',
      'ww',
      'aaa',
      'bbb',
      'ccc',
      'RRR',
      'ddd',
      'eee',
      'fff',
      'ggg',
      'hhh'
    ].join("\n")
      'zz', 'yy', 'xx', 'ww', 'aaa', 'bbb', 'ccc',
      'RRR',
      'ddd', 'eee', 'fff', 'ggg', 'hhh'
      same_line('zz', 1),
      same_line('yy', 2),
      same_line('xx', 3),
      same_line('ww', 4),
      same_line('aaa', 5),
      same_line('bbb', 6),
      same_line('ccc', 7),
      section(0),
      deleted_line('QQQ', 8),
      added_line('RRR', 8),
      same_line('ddd',   9),
      same_line('eee', 10),
      same_line('fff', 11),
      same_line('ggg', 12),
      same_line('hhh', 13)
      same_line('a', 1),
      same_line('b', 2),
      same_line('c', 3),
      same_line('d', 4),
      same_line('e', 5),
      same_line('f', 6),
      added_line('XX',7),
      deleted_line('QQ',8),
      added_line('XX',8),
      same_line('g', 9),
      same_line('h', 10),
      same_line('i', 11),
      same_line('j', 12),
      same_line('k', 13)