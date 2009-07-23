<?php

	require_once(TOOLKIT . '/class.event.php');
	
	Class eventsave_entries extends Event{
		
		const ROOTELEMENT = 'save-entries';
		
		public $eParamFILTERS = array(
			'admin-only'
		);
			
		public static function about(){
			return array(
					 'name' => 'Save Entries',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/bauhouse/www',
							'email' => 'bauhouse@gmail.com'),
					 'version' => '1.0',
					 'release-date' => '2009-07-23T16:38:08+00:00',
					 'trigger-condition' => 'action[save-entries]');	
		}

		public static function getSource(){
			return '3';
		}

		public static function allowEditorToParse(){
			return true;
		}

		public static function documentation(){
			return '
        <h3>Success and Failure XML Examples</h3>
        <p>When saved successfully, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;save-entries result="success" type="create | edit">
  &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/save-entries></code></pre>
        <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;save-entries result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;field-name type="invalid | missing" />
  ...
&lt;/save-entries></code></pre>
        <p>The following is an example of what is returned if any filters fail:</p>
        <pre class="XML"><code>&lt;save-entries result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;filter name="admin-only" status="failed" />
  &lt;filter name="send-email" status="failed">Recipient username was invalid&lt;/filter>
  ...
&lt;/save-entries></code></pre>
        <h3>Example Front-end Form Markup</h3>
        <p>This is an example of the form markup you can use on your frontend:</p>
        <pre class="XML"><code>&lt;form method="post" action="" enctype="multipart/form-data">
  &lt;input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
  &lt;label>Title
    &lt;input name="fields[title]" type="text" />
  &lt;/label>
  &lt;label>Heading
    &lt;input name="fields[heading]" type="text" />
  &lt;/label>
  &lt;label>Description
    &lt;textarea name="fields[description]" rows="6" cols="50">&lt;/textarea>
  &lt;/label>
  &lt;label>Body
    &lt;textarea name="fields[body]" rows="18" cols="50">&lt;/textarea>
  &lt;/label>
  &lt;input name="fields[images]" type="hidden" value="..." />
  &lt;input name="fields[files]" type="hidden" value="..." />
  &lt;input name="fields[section]" type="hidden" value="..." />
  &lt;input name="fields[categories]" type="hidden" value="..." />
  &lt;label>Tags
    &lt;input name="fields[tags]" type="text" />
  &lt;/label>
  &lt;label>Date
    &lt;input name="fields[date]" type="text" />
  &lt;/label>
  &lt;label>Author
    &lt;select name="fields[author]">
      &lt;option value="1">Stephen &lt;/option>
    &lt;/select>
  &lt;/label>
  &lt;label>Publish
    &lt;input name="fields[publish]" checked="checked" type="checkbox" />
  &lt;/label>
  &lt;label>Enable Comments
    &lt;input name="fields[enable-comments]" type="checkbox" />
  &lt;/label>
  &lt;input name="action[save-entries]" type="submit" value="Submit" />
&lt;/form></code></pre>
        <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
        <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
        <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
        <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://home/bauhouse/www/success/" /></code></pre>';
		}
		
		public function load(){			
			if(isset($_POST['action']['save-entries'])) return $this->__trigger();
		}
		
		protected function __trigger(){
			include(TOOLKIT . '/events/event.section.php');
			return $result;
		}		

	}

