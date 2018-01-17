 <div class="container">

   
 <h3><?php echo $title;?></h3>
   
 

  <div class="row">
     <form method="post" action="<?php echo site_url('quiz/insert_quiz/');?>">
	
<div class="col-md-8">
<br> 
 <div class="login-panel panel panel-default">
		<div class="panel-body"> 
			<?php 
		if($this->session->flashdata('message')){
			echo $this->session->flashdata('message');	
		}
		?>	
		 			<div class="form-group">	 
					<label for="inputEmail" class="sr-only"><?php echo $this->lang->line('quiz_name');?></label> 
					<input type="text"  name="quiz_name"  class="form-control" placeholder="<?php echo $this->lang->line('quiz_name');?>"  required autofocus>
			</div>
				<div class="form-group">	 
					<label for="inputEmail"  ><?php echo $this->lang->line('description');?></label> 
					<textarea   name="description"  class="form-control tinymce_textarea" ></textarea>
			</div>
				<div class="form-group">	 
					<label for="inputEmail"  ><?php echo $this->lang->line('start_date');?></label> 
					<input type="text" name="start_date"  value="<?php echo date('Y-m-d H:i:s',time());?>" class="form-control" placeholder="<?php echo $this->lang->line('start_date');?>"   required >
			</div>
				<div class="form-group">	 
					<label for="inputEmail"  ><?php echo $this->lang->line('end_date');?></label> 
					<input type="text" name="end_date"  value="<?php echo date('Y-m-d H:i:s',(time()+(60*60*24*365)));?>" class="form-control" placeholder="<?php echo $this->lang->line('end_date');?>"   required >
			</div>
				<div class="form-group">	 
					<label for="inputEmail"  ><?php echo $this->lang->line('duration');?></label> 
					<input type="text" name="duration"  value="10" class="form-control" placeholder="<?php echo $this->lang->line('duration');?>"  required  >
			</div>
				<div class="form-group">	 
					<label for="inputEmail"  ><?php echo $this->lang->line('maximum_attempts');?></label> 
					<input type="text" name="maximum_attempts"  value="10" class="form-control" placeholder="<?php echo $this->lang->line('maximum_attempts');?>"   required >
			</div>
				<div class="form-group">	 
					<label for="inputEmail"  ><?php echo $this->lang->line('pass_percentage');?></label> 
					<input type="text" name="pass_percentage" value="50" class="form-control" placeholder="<?php echo $this->lang->line('pass_percentage');?>"   required >
			</div>
				<div class="form-group">	 
					<label for="inputEmail"  ><?php echo $this->lang->line('correct_score');?></label> 
					<input type="text" name="correct_score"  value="1" class="form-control" placeholder="<?php echo $this->lang->line('correct_score');?>"   required >
			</div>
				<div class="form-group">	 
					<label   for="inputEmail"  ><?php echo $this->lang->line('incorrect_score');?></label> 
					<input   type="text" name="incorrect_score"  value="0" class="form-control" placeholder="<?php echo $this->lang->line('incorrect_score');?>"  required  >
			</div>
			
			
			
			<div class="form-group">	 
        		<label   ><?php echo $this->lang->line('select_group');?></label> <br>
        		 <?php 
        		foreach($group_list as $key => $val){
        			?>
        			
        			 <input type="checkbox" name="gids[]" value="<?php echo $val['gid'];?>" <?php if($key==0){ echo 'checked'; } ?> > <?php echo $val['group_name'];?> &nbsp;&nbsp;&nbsp;
        			<?php 
        		}
        		?>
        					 
        	</div>
        	<button class="btn btn-success" type="submit"><?php echo $this->lang->line('next');?></button>
        	
        	
			
				<div class="form-group">	 
					<label type="hidden" for="inputEmail"  ><?php //echo $this->lang->line('ip_address');?></label> 
					<input type="hidden" type="text" name="ip_address"  value="" class="form-control" placeholder="<?php //echo $this->lang->line('ip_address');?>"    >
			</div>
				<div class="form-group">	 
					<label type="hidden" for="inputEmail" ><?php //echo $this->lang->line('view_answer');?></label> <br>
					<input type="hidden" type="radio" name="view_answer"    value="1" checked > <?php //echo $this->lang->line('yes');?>&nbsp;&nbsp;&nbsp;
					<input type="hidden" type="radio" name="view_answer"    value="0"  > <?php //echo $this->lang->line('no');?>
			</div>
				<div class="form-group">	 
					<label type="hidden" for="inputEmail" ><?php //echo $this->lang->line('open_quiz');?></label> <br>
					<input type="hidden" type="radio" name="with_login"    value="0"  > <?php //echo $this->lang->line('yes');?>&nbsp;&nbsp;&nbsp;
					<input type="hidden" type="radio" name="with_login"    value="1" checked > <?php //echo $this->lang->line('no');?>
			</div>
			<?php 
			if($this->config->item('webcam')==true){
				?>
				<div type="hidden"  class="form-group">	 
					<label type="hidden"  for="inputEmail" ><?php //echo $this->lang->line('capture_photo');?></label> <br>
					<input type="hidden"  type="radio" name="camera_req"    value="1"  > <?php //echo $this->lang->line('yes');?>&nbsp;&nbsp;&nbsp;
					<input type="hidden"  type="radio" name="camera_req"    value="0"  checked > <?php //echo $this->lang->line('no');?>
			</div>
			<?php 
			}else{
				?>
				<input type="hidden" name="camera_req" value="0">
				
				<?php 
			}
			?>
				
			
			
        	
			

				<div type="hidden" class="form-group">	 
					<label for="inputEmail" ><?php //echo $this->lang->line('question_selection');?></label> <br>
					<input type="hidden" type="radio" name="question_selection"    value="1"  > <?php //echo $this->lang->line('automatically');?><br>
					<input type="hidden" type="radio" name="question_selection"    value="0"  checked > <?php //echo $this->lang->line('manually');?>
			</div>
				<div class="form-group">	 
					<label type="hidden" for="inputEmail" ><?php //echo $this->lang->line('generate_certificate');?></label> <br>
					<input type="hidden" type="radio" name="gen_certificate"    value="1"  > <?php //echo $this->lang->line('yes');?><br>
					<input type="hidden" type="radio" name="gen_certificate"    value="0"  checked > <?php //echo $this->lang->line('no');?>
			</div>
			 
				<div type="hidden" class="form-group">	 
					<label  type="hidden" for="inputEmail"  ><?php //echo $this->lang->line('certificate_text');?></label> 
					<!--  <textarea  type="hidden" name="certificate_text"  class="form-control" ></textarea><br>-->
			</div>


 <?php //echo $this->lang->line('open_quiz_warning');?>
		</div>
</div>
 
 
 
 
</div>
      </form>
</div>

 



</div>