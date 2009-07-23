<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourceprevious_section extends Datasource{
		
		public $dsParamROOTELEMENT = 'previous-section';
		public $dsParamORDER = 'desc';
		public $dsParamLIMIT = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'sort';
		public $dsParamSTARTPAGE = '1';
		
		public $dsParamFILTERS = array(
				'10' => 'yes',
				'9' => 'mysql: value < {$ds-section}',
		);
		
		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'page',
				'sort'
		);

		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array('$ds-section');
		}
		
		public function about(){
			return array(
					 'name' => 'Previous Section',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://localhost/sym/bauhouse',
							'email' => 'bauhouse@gmail.com'),
					 'version' => '1.0',
					 'release-date' => '2009-07-21T04:37:09+00:00');	
		}
		
		public function getSource(){
			return '2';
		}
		
		public function allowEditorToParse(){
			return true;
		}
		
		public function grab(&$param_pool){
			$result = new XMLElement($this->dsParamROOTELEMENT);
				
			try{
				include(TOOLKIT . '/data-sources/datasource.section.php');
			}
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage()));
				return $result;
			}	

			if($this->_force_empty_result) $result = $this->emptyXMLSet();
			return $result;
		}
	}

