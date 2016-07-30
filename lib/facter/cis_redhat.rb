Facter.add(:cis_1_1_1_1) do
  confine :osfamily => 'RedHat'
  confine :operatingsystemmajrelease => '7'
  setcode do
    s = Facter::Core::Execution.exec(
      '/sbin/modprobe -n -v cramfs|grep "install /bin/true"'
    )
    t = Facter::Core::Execution.exec(
      '/sbin/lsmod |grep cramfs'
    )
    if ( s != 'install /bin/true' or t != '' )
      :fail
    else
      :pass
    end
  end
end

Facter.add(:cis_1_1_1_2) do
  confine :osfamily => 'RedHat'
  confine :operatingsystemmajrelease => '7'
  setcode do
    s = Facter::Core::Execution.exec(
      '/sbin/modprobe -n -v freevxfs|grep "install /bin/true"'
    )
    t = Facter::Core::Execution.exec(
      '/sbin/lsmod |grep freevxfs'
    )
    if ( s != 'install /bin/true' or t != '' )
      :fail
    else
      :pass
    end
  end
end

Facter.add(:cis_1_1_1_3) do
  confine :osfamily => 'RedHat'
  confine :operatingsystemmajrelease => '7'
  setcode do
    s = Facter::Core::Execution.exec(
      '/sbin/modprobe -n -v jffs2|grep "install /bin/true"'
    )
    t = Facter::Core::Execution.exec(
      '/sbin/lsmod |grep jjfs2'
    )
    if ( s != 'install /bin/true' or t != '' )
      :fail
    else
      :pass
    end
  end
end

Facter.add(:cis_1_1_1_4) do
  confine :osfamily => 'RedHat'
  confine :operatingsystemmajrelease => '7'
  setcode do
    s = Facter::Core::Execution.exec(
      '/sbin/modprobe -n -v hfs|grep "install /bin/true"'
    )
    t = Facter::Core::Execution.exec(
      '/sbin/lsmod |grep hfs'
    )
    if ( s != 'install /bin/true' or t != '' )
      :fail
    else
      :pass
    end
  end
end

Facter.add(:cis_1_1_1_5) do
  confine :osfamily => 'RedHat'
  confine :operatingsystemmajrelease => '7'
  setcode do
    s = Facter::Core::Execution.exec(
      '/sbin/modprobe -n -v hfsplus|grep "install /bin/true"'
    )
    t = Facter::Core::Execution.exec(
      '/sbin/lsmod |grep hfsplus'
    )
    if ( s != 'install /bin/true' or t != '' )
      :fail
    else
      :pass
    end
  end
end

Facter.add(:cis_1_1_1_6) do
  confine :osfamily => 'RedHat'
  confine :operatingsystemmajrelease => '7'
  setcode do
    s = Facter::Core::Execution.exec(
      '/sbin/modprobe -n -v squashfs|grep "install /bin/true"'
    )
    t = Facter::Core::Execution.exec(
      '/sbin/lsmod |grep squashfs'
    )
    if ( s != 'install /bin/true' or t != '' )
      :fail
    else
      :pass
    end
  end
end

Facter.add(:cis_1_1_1_7) do
  confine :osfamily => 'RedHat'
  confine :operatingsystemmajrelease => '7'
  setcode do
    s = Facter::Core::Execution.exec(
      '/sbin/modprobe -n -v udf|grep "install /bin/true"'
    )
    t = Facter::Core::Execution.exec(
      '/sbin/lsmod |grep udf'
    )
    if ( s != 'install /bin/true' or t != '' )
      :fail
    else
      :pass
    end
  end
end


Facter.add(:cis_1_1_1_8) do
  confine :osfamily => 'RedHat'
  confine :operatingsystemmajrelease => '7'
  setcode do
    s = Facter::Core::Execution.exec(
      '/sbin/modprobe -n -v vfat|grep "install /bin/true"'
    )
    t = Facter::Core::Execution.exec(
      '/sbin/lsmod |grep vfat'
    )
    if ( s != 'install /bin/true' or t != '' )
      :fail
    else
      :pass
    end
  end
end

Facter.add(:cis_1_5_1) do
  confine :osfamily => 'RedHat'
  confine :operatingsystemmajrelease => '7'
  setcode do
    s = Facter::Core::Execution.exec(
      '/bin/grep "hard core" /etc/security/limits.conf'
    )
    t = Facter::Core::Execution.exec(
      '/sbin/sysctl fs.suid_dumpable'
    )
    if ( s != '* hard core 0' or t != 'fs.suid_dumpable = 0' )
      :fail
    else
      :pass
    end
  end
end


Facter.add(:cis_1_5_3) do
  confine :osfamily => 'RedHat'
  confine :operatingsystemmajrelease => '7'
  setcode do
    s = Facter::Core::Execution.exec(
      '/sbin/sysctl kernel.randomize_va_space'
    )
    if ( s != 'kernel.randomize_va_space = 2' )
      :fail
    else
      :pass
    end
  end
end

Facter.add(:cis_1_5_4) do
  confine :osfamily => 'RedHat'
  confine :operatingsystemmajrelease => '7'
  setcode do
    s = Facter::Core::Execution.exec(
      '/bin/rpm -q prelink|grep "not installed"'
    )
    if ( s == '' )
      :fail
    else
      :pass
    end
  end
end

Facter.add(:cis_1_7_1_1) do
  confine :osfamily => 'RedHat'
  confine :operatingsystemmajrelease => '7'
  setcode do
    s = Facter::Core::Execution.exec(
      'egrep \'(\\\\v|\\\\r|\\\\m|\\\\s)\' /etc/motd|wc -l'
    )
    if ( s.to_i > 0 )
      :fail
    else
      :pass
    end
  end
end

Facter.add(:cis_1_7_1_2) do
  confine :osfamily => 'RedHat'
  confine :operatingsystemmajrelease => '7'
  setcode do
    s = Facter::Core::Execution.exec(
      'egrep \'(\\\\v|\\\\r|\\\\m|\\\\s)\' /etc/issue|wc -l'
    )
    if ( s.to_i > 0 )
      :fail
    else
      :pass
    end
  end
end

Facter.add(:cis_1_7_1_3) do
  confine :osfamily => 'RedHat'
  confine :operatingsystemmajrelease => '7'
  setcode do
    s = Facter::Core::Execution.exec(
      'egrep \'(\\\\v|\\\\r|\\\\m|\\\\s)\' /etc/issue.net|wc -l'
    )
    if ( s.to_i > 0 )
      :fail
    else
      :pass
    end
  end
end

Facter.add(:cis_1_7_1_4) do
  confine :osfamily => 'RedHat'
  confine :operatingsystemmajrelease => '7'
  setcode do
    f = File.stat("/etc/motd")
    mode = "%04o" % f.mode
    if ( mode == '100644' and f.uid == 0 and f.gid == 0 )
      :pass
    else
      :fail
    end
  end
end

Facter.add(:cis_1_7_1_5) do
  confine :osfamily => 'RedHat'
  confine :operatingsystemmajrelease => '7'
  setcode do
    f = File.stat("/etc/issue")
    mode = "%04o" % f.mode
    if ( mode == '100644' and f.uid == 0 and f.gid == 0 )
      :pass
    else
      :fail
    end
  end
end

Facter.add(:cis_1_7_1_6) do
  confine :osfamily => 'RedHat'
  confine :operatingsystemmajrelease => '7'
  setcode do
    f = File.stat("/etc/issue.net")
    mode = "%04o" % f.mode
    if ( mode == '100644' and f.uid == 0 and f.gid == 0 )
      :pass
    else
      :fail
    end
  end
end

Facter.add(:cis_1_8) do
  confine :osfamily => 'RedHat'
  confine :operatingsystemmajrelease => '7'
  setcode do
    s = Facter::Core::Execution.exec(
      'yum check-update|egrep "(x86_64|noarch|i686|i386)"|wc -l'
    )
    if ( s.to_i > 0 )
      :fail
    else
      :pass
    end
  end
end
