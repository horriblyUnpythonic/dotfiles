from subprocess import Popen, PIPE, STDOUT

if __name__ == '__main__':

    MyOut = Popen(['gcloud', 'compute', 'instances', 'list'], stdout=PIPE, stderr=STDOUT)
    stdout, stderr = MyOut.communicate()

    gcil = stdout.split('\n')
    column_names = gcil.pop(0)

    ex_s = column_names.find('EXTERNAL')
    ex_e = column_names.find('STATUS')

    gcomment = '# gcloud hosts'
    host_file = '/etc/hosts'
    MyOut = Popen(['sed', '-i.bak', '-e', '/{}/d'.format(gcomment), host_file], stdout=PIPE, stderr=STDOUT)
    stdout, stderr = MyOut.communicate()

    with open(host_file, 'a') as fid:
        for line in gcil:
            host = line[:line.find(' ')]
            exip = line[ex_s:ex_e]
            if exip.find('.') != -1:
                fid.write(exip + host + ' ' + gcomment + '\n')


    MyOut = Popen(['dscacheutil', '-flushcache'], stdout=PIPE, stderr=STDOUT)
    stdout, stderr = MyOut.communicate()
