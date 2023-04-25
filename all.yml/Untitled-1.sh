TASK [Docker : Pull Docker image] **************************************************************************************
task path: /home/ubuntu/Ansible_prom_docker/roles/Docker/tasks/main.yml:19
redirecting (type: modules) ansible.builtin.docker_image to community.docker.docker_image
<172.31.21.209> ESTABLISH SSH CONNECTION FOR USER: None
<172.31.21.209> SSH: EXEC ssh -C -o ControlMaster=auto -o ControlPersist=60s -o StrictHostKeyChecking=no -o KbdInteractiveAuthentication=no -o PreferredAuthentications=gssapi-with-mic,gssapi-keyex,hostbased,publickey -o PasswordAuthentication=no -o ConnectTimeout=10 -o 'ControlPath="/home/ubuntu/.ansible/cp/368ecc2460"' 172.31.21.209 '/bin/sh -c '"'"'echo ~ && sleep 0'"'"''
<172.31.21.209> (0, b'/home/ubuntu\n', b'')
<172.31.21.209> ESTABLISH SSH CONNECTION FOR USER: None
<172.31.21.209> SSH: EXEC ssh -C -o ControlMaster=auto -o ControlPersist=60s -o StrictHostKeyChecking=no -o KbdInteractiveAuthentication=no -o PreferredAuthentications=gssapi-with-mic,gssapi-keyex,hostbased,publickey -o PasswordAuthentication=no -o ConnectTimeout=10 -o 'ControlPath="/home/ubuntu/.ansible/cp/368ecc2460"' 172.31.21.209 '/bin/sh -c '"'"'( umask 77 && mkdir -p "` echo /home/ubuntu/.ansible/tmp `"&& mkdir "` echo /home/ubuntu/.ansible/tmp/ansible-tmp-1681291546.3436828-32543-112321295353085 `" && echo ansible-tmp-1681291546.3436828-32543-112321295353085="` echo /home/ubuntu/.ansible/tmp/ansible-tmp-1681291546.3436828-32543-112321295353085 `" ) && sleep 0'"'"''
<172.31.21.209> (0, b'ansible-tmp-1681291546.3436828-32543-112321295353085=/home/ubuntu/.ansible/tmp/ansible-tmp-1681291546.3436828-32543-112321295353085\n', b'')
redirecting (type: modules) ansible.builtin.docker_image to community.docker.docker_image
Using module file /usr/lib/python3/dist-packages/ansible_collections/community/docker/plugins/modules/docker_image.py
<172.31.21.209> PUT /home/ubuntu/.ansible/tmp/ansible-local-32476n99k2rhj/tmptdeldixu TO /home/ubuntu/.ansible/tmp/ansible-tmp-1681291546.3436828-32543-112321295353085/AnsiballZ_docker_image.py
<172.31.21.209> SSH: EXEC sftp -b - -C -o ControlMaster=auto -o ControlPersist=60s -o StrictHostKeyChecking=no -o KbdInteractiveAuthentication=no -o PreferredAuthentications=gssapi-with-mic,gssapi-keyex,hostbased,publickey -o PasswordAuthentication=no -o ConnectTimeout=10 -o 'ControlPath="/home/ubuntu/.ansible/cp/368ecc2460"' '[172.31.21.209]'
<172.31.21.209> (0, b'sftp> put /home/ubuntu/.ansible/tmp/ansible-local-32476n99k2rhj/tmptdeldixu /home/ubuntu/.ansible/tmp/ansible-tmp-1681291546.3436828-32543-112321295353085/AnsiballZ_docker_image.py\n', b'')
<172.31.21.209> ESTABLISH SSH CONNECTION FOR USER: None
<172.31.21.209> SSH: EXEC ssh -C -o ControlMaster=auto -o ControlPersist=60s -o StrictHostKeyChecking=no -o KbdInteractiveAuthentication=no -o PreferredAuthentications=gssapi-with-mic,gssapi-keyex,hostbased,publickey -o PasswordAuthentication=no -o ConnectTimeout=10 -o 'ControlPath="/home/ubuntu/.ansible/cp/368ecc2460"' 172.31.21.209 '/bin/sh -c '"'"'chmod u+x /home/ubuntu/.ansible/tmp/ansible-tmp-1681291546.3436828-32543-112321295353085/ /home/ubuntu/.ansible/tmp/ansible-tmp-1681291546.3436828-32543-112321295353085/AnsiballZ_docker_image.py && sleep 0'"'"''
<172.31.21.209> (0, b'', b'')
<172.31.21.209> ESTABLISH SSH CONNECTION FOR USER: None
<172.31.21.209> SSH: EXEC ssh -C -o ControlMaster=auto -o ControlPersist=60s -o StrictHostKeyChecking=no -o KbdInteractiveAuthentication=no -o PreferredAuthentications=gssapi-with-mic,gssapi-keyex,hostbased,publickey -o PasswordAuthentication=no -o ConnectTimeout=10 -o 'ControlPath="/home/ubuntu/.ansible/cp/368ecc2460"' -tt 172.31.21.209 '/bin/sh -c '"'"'sudo -H -S -n  -u root /bin/sh -c '"'"'"'"'"'"'"'"'echo BECOME-SUCCESS-hircvgxalbzgqwfhisyqpxovslhssija ; /usr/bin/python3 /home/ubuntu/.ansible/tmp/ansible-tmp-1681291546.3436828-32543-112321295353085/AnsiballZ_docker_image.py'"'"'"'"'"'"'"'"' && sleep 0'"'"''
Escalation succeeded
<172.31.21.209> (1, b'\r\n\r\n{"failed": true, "msg": "state is present but all of the following are missing: source", "invocation": {"module_args": {"name": "tomcat", "state": "present", "docker_host": "unix://var/run/docker.sock", "api_version": "auto", "timeout": 60, "tls": false, "use_ssh_client": false, "validate_certs": false, "debug": false, "force_source": false, "force_absent": false, "force_tag": false, "push": false, "tag": "latest", "tls_hostname": null, "ca_cert": null, "client_cert": null, "client_key": null, "ssl_version": null, "source": null, "build": null, "archive_path": null, "load_path": null, "pull": null, "repository": null}}}\r\n', b'Shared connection to 172.31.21.209 closed.\r\n')
<172.31.21.209> Failed to connect to the host via ssh: Shared connection to 172.31.21.209 closed.
<172.31.21.209> ESTABLISH SSH CONNECTION FOR USER: None
<172.31.21.209> SSH: EXEC ssh -C -o ControlMaster=auto -o ControlPersist=60s -o StrictHostKeyChecking=no -o KbdInteractiveAuthentication=no -o PreferredAuthentications=gssapi-with-mic,gssapi-keyex,hostbased,publickey -o PasswordAuthentication=no -o ConnectTimeout=10 -o 'ControlPath="/home/ubuntu/.ansible/cp/368ecc2460"' 172.31.21.209 '/bin/sh -c '"'"'rm -f -r /home/ubuntu/.ansible/tmp/ansible-tmp-1681291546.3436828-32543-112321295353085/ > /dev/null 2>&1 && sleep 0'"'"''
<172.31.21.209> (0, b'', b'')
fatal: [node-2]: FAILED! => {
    "changed": false,
    "invocation": {
        "module_args": {
            "api_version": "auto",
            "archive_path": null,
            "build": null,
            "ca_cert": null,
            "client_cert": null,
            "client_key": null,
            "debug": false,
            "docker_host": "unix://var/run/docker.sock",
            "force_absent": false,
            "force_source": false,
            "force_tag": false,
            "load_path": null,
            "name": "tomcat",
            "pull": null,
            "push": false,
            "repository": null,
            "source": null,
            "ssl_version": null,
            "state": "present",
            "tag": "latest",
            "timeout": 60,
            "tls": false,
            "tls_hostname": null,
            "use_ssh_client": false,
            "validate_certs": false
        }
    },
    "msg": "state is present but all of the following are missing: source"