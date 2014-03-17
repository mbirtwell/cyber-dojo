__DIR__ = File.dirname(__FILE__)
require __DIR__ + '/../test_helper'
require __DIR__ + '/../app_models/spy_disk'
require __DIR__ + '/../app_models/stub_git'
require __DIR__ + '/../app_models/stub_runner'

class LinuxPaasModelTestCase < ActionController::TestCase

  def setup
    setup_format('rb')
  end

  def setup_format(format)
    @disk = SpyDisk.new
    @git = StubGit.new
    @runner = StubRunner.new
    @paas = LinuxPaas.new(@disk, @git, @runner)
    @format = format
    @dojo = @paas.create_dojo(root_path + '../../', @format)
  end

  def teardown
    @disk.teardown
  end

  def rb_and_json(&block)
    block.call('rb')
    teardown
    setup_format('json')
    block.call('json')
  end

end
