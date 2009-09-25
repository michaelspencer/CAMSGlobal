desc 'update faq : add <strong> and </li> tages'
task :update_faq => :environment do

  faq_text = "<ul>

  <li><p><strong>What determines CAMS role as an advisory service versus equity participant?</strong></p>
  <p>This is the answer</p></li>

  <li><p><strong>Does CAMS operate as a US company?</strong></p>
  <p>This is the answer</p></li>

  <li><p><strong>Where does CAMS draw its human resources?</strong></p>
  <p>This is the answer</p></li> 

  <li><p><strong>Why is CAMS more successful than its competitors in markets that are traditionally very difficult for multi-nationals?</strong></p>
  <p>This is the answer</p></li>

  <li><p><strong>Does CAMS invest its own money?</strong></p>
  <p>This is the answer</p></li> 

  <li><p><strong>Where are the principals based?</strong></p>
  <p>This is the answer</p></li>

  <li><p><strong>What are sectors of opportunity?</strong></p>
  <p>This is the answer</p></li>

  <li> <p><strong>What are regions of opportunity?</strong></p>
  <p>This is the answer</p></li>

  <li><p><strong>How has the financial crisis impacted CAMS ability to do structured deals?</strong></p>
  <p>This is the answer</p></li>

  <li><p><strong>Does CAMS work with NGOS and other international groups to facilitate projects?</strong></p>
  <p>This is the answer</p></li>

  <li><p><strong>Does CAMS comply with the Foreign Corrupt Services Act?</strong></p>
  <p>This is the answer</p></li>

  <li><p><strong>Can CAMS provide cash-flow and financial services?</strong></p>
  <p>This is the answer</p></li>

   <li><p><strong>Can CAMS advise on inter-country tax and financial planning considerations?</strong></p>
   <p>This is the answer</p></li>

  <li><p><strong>What is the normal exit strategy? </strong></p>
   <p>This is the answer</p></li> 

  <li><p><strong>What sort of governmental cooperation does CAMS normally seek from the host country? </strong></p>
   <p>This is the answer</p></li>

  <li><p><strong>What are CAMS Washington affiliations? </strong></p>
    <p>This is the answer</p></li>"

  posts = Post.find(:all, :conditions => {:pagetype => 'faq'})
  posts.each do |p| 
    puts "updating faq"
    p.content = faq_text
    p.save
  end

end