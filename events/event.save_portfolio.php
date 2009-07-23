<?php

	require_once(TOOLKIT . '/class.event.php');
	
	Class eventsave_portfolio extends Event{
		
		const ROOTELEMENT = 'save-portfolio';
		
		public $eParamFILTERS = array(
			'admin-only'
		);
			
		public static function about(){
			return array(
					 'name' => 'Save Portfolio',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/bauhouse/www',
							'email' => 'bauhouse@gmail.com'),
					 'version' => '1.0',
					 'release-date' => '2009-07-22T13:16:16+00:00',
					 'trigger-condition' => 'action[save-portfolio]');	
		}

		public static function getSource(){
			return '12';
		}

		public static function allowEditorToParse(){
			return true;
		}

		public static function documentation(){
			return '
        <h3>Success and Failure XML Examples</h3>
        <p>When saved successfully, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;save-portfolio result="success" type="create | edit">
  &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/save-portfolio></code></pre>
        <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;save-portfolio result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;field-name type="invalid | missing" />
  ...
&lt;/save-portfolio></code></pre>
        <p>The following is an example of what is returned if any filters fail:</p>
        <pre class="XML"><code>&lt;save-portfolio result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;filter name="admin-only" status="failed" />
  &lt;filter name="send-email" status="failed">Recipient username was invalid&lt;/filter>
  ...
&lt;/save-portfolio></code></pre>
        <h3>Example Front-end Form Markup</h3>
        <p>This is an example of the form markup you can use on your frontend:</p>
        <pre class="XML"><code>&lt;form method="post" action="" enctype="multipart/form-data">
  &lt;input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
  &lt;label>Title
    &lt;input name="fields[title]" type="text" />
  &lt;/label>
  &lt;label>Link
    &lt;input name="fields[link]" type="text" />
  &lt;/label>
  &lt;label>Created
    &lt;input name="fields[created]" type="text" />
  &lt;/label>
  &lt;label>Client
    &lt;input name="fields[client]" type="text" />
  &lt;/label>
  &lt;label>Project
    &lt;input name="fields[project]" type="text" />
  &lt;/label>
  &lt;input name="fields[media]" type="hidden" value="..." />
  &lt;label>Description
    &lt;textarea name="fields[description]" rows="5" cols="50">&lt;/textarea>
  &lt;/label>
  &lt;label>Body
    &lt;textarea name="fields[body]" rows="8" cols="50">&lt;/textarea>
  &lt;/label>
  &lt;label>Firm
    &lt;input name="fields[firm]" type="text" />
  &lt;/label>
  &lt;label>Type
    &lt;select name="fields[type]">
      &lt;option value="Design Studio">Design Studio&lt;/option>
      &lt;option value="Web Design Firm">Web Design Firm&lt;/option>
      &lt;option value="Organization">Organization&lt;/option>
      &lt;option value="Advertising Agency">Advertising Agency&lt;/option>
      &lt;option value="Employer">Employer&lt;/option>
    &lt;/select>
  &lt;/label>
  &lt;label>Creative Direction
    &lt;input name="fields[creative-direction]" type="text" />
  &lt;/label>
  &lt;label>Art Direction
    &lt;input name="fields[art-direction]" type="text" />
  &lt;/label>
  &lt;label>Design
    &lt;input name="fields[design]" type="text" />
  &lt;/label>
  &lt;label>Photography
    &lt;input name="fields[photography]" type="text" />
  &lt;/label>
  &lt;label>Printing
    &lt;input name="fields[printing]" type="text" />
  &lt;/label>
  &lt;label>Copywriting
    &lt;input name="fields[copywriting]" type="text" />
  &lt;/label>
  &lt;label>Image
    &lt;input name="fields[image]" type="file" />
  &lt;/label>
  &lt;label>Preview
    &lt;input name="fields[preview]" type="file" />
  &lt;/label>
  &lt;label>Preview Off
    &lt;input name="fields[preview-off]" type="file" />
  &lt;/label>
  &lt;label>Thumbnail
    &lt;input name="fields[thumbnail]" type="file" />
  &lt;/label>
  &lt;label>Thumbnail Off
    &lt;input name="fields[thumbnail-off]" type="file" />
  &lt;/label>
  &lt;input name="action[save-portfolio]" type="submit" value="Submit" />
&lt;/form></code></pre>
        <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
        <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
        <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
        <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://home/bauhouse/www/success/" /></code></pre>';
		}
		
		public function load(){			
			if(isset($_POST['action']['save-portfolio'])) return $this->__trigger();
		}
		
		protected function __trigger(){
			include(TOOLKIT . '/events/event.section.php');
			return $result;
		}		

	}

