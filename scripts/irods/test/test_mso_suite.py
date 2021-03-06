from __future__ import print_function
import time
import sys
import shutil
import os
if sys.version_info >= (2, 7):
    import unittest
else:
    import unittest2 as unittest
import socket
import os
import datetime
import tempfile
import time

from . import resource_suite
from .. import lib
from ..configuration import IrodsConfig
from . import session


class Test_MSOSuite(resource_suite.ResourceBase, unittest.TestCase):

    def setUp(self):
        hostname = lib.get_hostname()
        with session.make_session_for_existing_admin() as admin_session:
            admin_session.assert_icommand("iadmin modresc demoResc name origResc", 'STDOUT_SINGLELINE', 'rename', input='yes\n')
            admin_session.assert_icommand("iadmin mkresc demoResc compound", 'STDOUT_SINGLELINE', 'compound')
            admin_session.assert_icommand("iadmin mkresc cacheResc 'unixfilesystem' " + hostname + ":" +
                                          IrodsConfig().irods_directory + "/cacheRescVault", 'STDOUT_SINGLELINE', 'unixfilesystem')
            admin_session.assert_icommand("iadmin mkresc archiveResc mso " + hostname + ":/fake/vault/", 'STDOUT_SINGLELINE', 'mso')
            admin_session.assert_icommand("iadmin addchildtoresc demoResc cacheResc cache")
            admin_session.assert_icommand("iadmin addchildtoresc demoResc archiveResc archive")
        super(Test_MSOSuite, self).setUp()

    def tearDown(self):
        super(Test_MSOSuite, self).tearDown()
        with session.make_session_for_existing_admin() as admin_session:
            admin_session.assert_icommand("iadmin rmchildfromresc demoResc archiveResc")
            admin_session.assert_icommand("iadmin rmchildfromresc demoResc cacheResc")
            admin_session.assert_icommand("iadmin rmresc archiveResc")
            admin_session.assert_icommand("iadmin rmresc cacheResc")
            admin_session.assert_icommand("iadmin rmresc demoResc")
            admin_session.assert_icommand("iadmin modresc origResc name demoResc", 'STDOUT_SINGLELINE', 'rename', input='yes\n')
        shutil.rmtree(IrodsConfig().irods_directory + "/cacheRescVault")

    def test_mso_http(self):
        test_file_path = self.admin.session_collection
        self.admin.assert_icommand('ireg -D mso -R archiveResc "//http://people.renci.org/~jasonc/irods/http_mso_test_file.txt" ' +
                                   test_file_path + '/test_file.txt')
        self.admin.assert_icommand('iget -f ' + test_file_path + '/test_file.txt')
        self.admin.assert_icommand_fail('ils -L ' + test_file_path + '/test_file.txt', 'STDOUT_SINGLELINE', ' -99 ')
        os.remove('test_file.txt')
        # unregister the object
        self.admin.assert_icommand('irm -U ' + test_file_path + '/test_file.txt')
        self.admin.assert_icommand('ils -L', 'STDOUT_SINGLELINE', self.admin.zone_name)

    def test_mso_slink(self):
        test_file_path = self.admin.session_collection
        with tempfile.NamedTemporaryFile(mode='wt', dir='.') as f:
            print('some test text', file=f)
            self.admin.assert_icommand('iput -fR origResc %s src_file.txt' % (f.name))
            self.admin.assert_icommand('ireg -D mso -R archiveResc "//slink:' +
                                    test_file_path + '/src_file.txt" ' + test_file_path + '/test_file.txt')
            self.admin.assert_icommand('iget -f ' + test_file_path + '/test_file.txt')

            result = os.system("diff %s %s" % ('./test_file.txt', f.name))
            assert result == 0

            self.admin.assert_icommand('iput -f %s %s/test_file.txt' % (f.name, test_file_path))

        # unregister the object
        self.admin.assert_icommand('irm -U ' + test_file_path + '/test_file.txt')

    def test_mso_irods(self):
        hostname = socket.gethostname()
        test_file_path = self.admin.session_collection
        with tempfile.NamedTemporaryFile(mode='wt', dir='.') as f:
            print('some test text', file=f)
            self.admin.assert_icommand('iput -fR AnotherResc %s src_file.txt' % (f.name))
            self.admin.assert_icommand('ireg -D mso -R archiveResc "//irods:' + hostname +
                                    ':1247:' + self.admin.username + '@' + self.admin.zone_name + test_file_path + '/src_file.txt" ' + test_file_path + '/test_file.txt')
            self.admin.assert_icommand('iget -f ' + test_file_path + '/test_file.txt')

            result = os.system("diff %s %s" % ('./test_file.txt', f.name))
            assert result == 0

            self.admin.assert_icommand('iput -f %s %s/test_file.txt' % (f.name, test_file_path))

        # unregister the object
        self.admin.assert_icommand('irm -U ' + test_file_path + '/test_file.txt')
        self.admin.assert_icommand('irm -f src_file.txt')
