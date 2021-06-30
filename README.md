<h2>aws-cloud-computing-python</h2>

<p>
A small project to learn the basics of working with AWS EC2 environment and S3 bucket
</p>


<h5>Moving local file to directory in EC2 instance</h5>
<p>Now that the virtual environment (Linux in this case) has been created, we can copy files from our local machine to the EC2 environment! It's rather simple with a single CLI command:</p>


<code>scp -i /path/to/keypair/instance_keypair.pem /path/to/local/file/FILE EC2_USER_NAME@DOMAIN:/path/for/file/</code>

<p>That's it! The command breaks down:</p>
<ul>
<li><code>scp</code> - Command line command to work between local and remote computers (similar to cp for local commands)</li>
<li><code>-i</code> - Command line argument indicating which file involved (identity_file)</li>
<li><code>/path/to/keypair/instance_keypair.pem</code> - Keypair for instance, locally stored</li>
<li><code>/path/to/local/file/FILE</code> - Path to file locally that will be copied over</li>
<li><code>EC2_USER_NAME</code> - user name for instance (Linux is ec2-user; different for other distros)</li>
<li><code>DOMAIN</code> - AWS domain DPN(?)</li>
<li><code>/path/for/file/</code> - Path on EC2 distro</li>
</ul>

<p>** This will keep the same name of the original file when adding to the EC2 instance environment. **</p>
<p></p>
