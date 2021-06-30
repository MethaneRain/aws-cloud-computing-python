<h2>aws-cloud-computing-python</h2>

<p>
A small project to learn the basics of working with AWS EC2 environment and S3 bucket
</p>


<h5>Motivation/Goals</h5>
<p>This project is a basic intro into working with AWS EC2 and S3. The main goal is obviously learn how cloud computing works so this is an exercise in creating and running EC2 instance and executing a python script in the cloud environment. The prime motivation was to see if I can get a cloud environment to run a task and compare it to the time and efficiency of my home laptop; nothing too groundbreaking, I know.</p>

<p>This project also assumes at the very least the user has created an account at AWS and can access the IAM role/dashboard.</p>

<h3></h3>

<h3>Step 1: Create Instance</h3>

---

<h3>Step 2: Get key pair from AWS</h3>

---

<h3>Step 3: Connect to Instance</h3>

---

<h3>Step 4: Run Instance</h3>

---

<h3>Step 5: Moving local file to directory in EC2 instance</h3>

---

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

<h6>Example command:</h6>
<code>scp -i aws/jr-keypair.pem Python_Scripts/csv_2_cmap/csv_to_cmap.py ec2-user@ec2-18-118-162-108.us-east-2.compute.amazonaws.com:/home/ec2-user/python_scripts/</code>

<p>This obviously uses <em>my</em> key pair, local file, user name, and domain address/location</p>


<h3>Step 5: Moving local file to directory in EC2 instance</h3>

---

<p>The example below will <a href="https://www.ssh.com/academy/ssh/command" target="_blank"><code>ssh</code></a> into our instance. Notice the similarity to the way we added a file to the instance.</p>

<code>ssh -i "jr-keypair.pem" ec2-user@ec2-18-118-162-108.us-east-2.compute.amazonaws.com</code>

<img src="https://methanerain.com/wp-content/uploads/2021/06/ec2_run_instance_cli_2.png" alt="" />

<p></p>
